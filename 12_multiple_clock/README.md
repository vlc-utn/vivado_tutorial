# Multiple clock

En este ejemplo vamos a generar un IP Core con múltiples clocks y simularlo en Vivado.

El modelo de Simulink es un bloque paralelo a serial de 8 bits

![Alt text](images/simulink_design_top_level.png)

![Alt text](images/simulink_design_bottom_level.png)

El Ip Core en Vivado fue generado con un target frequency = 100MHz.

En Vivado, el diseño es alimentado con un clock de 100 MHz.

![Alt text](images/vivado_design.png)

Al querer correr la simulación, nos encontramos con un bug en el código VHDL. En la siguiente imagen, podemos ver que la señal "count8" es inválida.

![Alt text](images/bug_vhdl.png)

Count8 es una señal que se usa para generar los distintos clocks. Analizando el IP Core creado, vemos que funciona de la siguiente manera:

* Todo el IP Core corre a la frecuencia de entrada, que debe ser la frecuencia más alta.

* En el archivo "<ip_core_name>_src_<ip_core_name>_tc.vhd", agarra la señal de clock, e instancia un contador que cuenta hasta 8 (en este caso, es la fracción del tiempo de muestreo).

```vhd
  -- Count limited, Unsigned Counter
  --  initial value   = 1
  --  step value      = 1
  --  count to value  = 7
  counter_8_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN
        count8 <= to_unsigned(16#1#, 3);
      ELSIF clk_enable = '1' THEN
        count8 <= count8 + to_unsigned(16#1#, 3);
      END IF;
    END IF;
  END PROCESS counter_8_process;
```

* Cuando el contador alcanza "7" (su valor máximo), pone en "1" la señal `enb_1_8_0`. El IP Core maneja una señal de "enable" por cada clock, lo que hace que corra a distintas frecuencias de muestreo:

  * `enb_1_8_0`: Simula un sample_time de 1:8 (1 seg de entrada, 8 seg de salida). Habilita los flip-flops que corren a una velocidad más lenta cada 8 segundos.
  * `enb_1_1_1`: Simula un sample_time de 1:1 (habilita los flip-flops en todos los ciclos de clock).
  * `enb_x_y_z`: De forma genérica, habilita un clock con sample_time x:y, y es la señal de enable número "z" en ser instanciada.

Entonces, el bug lo podemos ver en que el código HDL que copie arriba. La señal "count8" en Vivado no tiene un valor inicial. El valor inicial solamente le es asignado cuando la señal de "reset_x" vale "1". Pero, en el diagrama en bloques conectamos una constante al valor de reset, de modo que nunca tomó un valor inicial, y por eso el valor es indefinido.

Por lo tanto, luego de hacer una pequeña rutina de reset antes de excitar la entrada, el resultado a la salida fue el esperado:

```vhd
 -- Reset system
rst_0 <= '0';
wait until rising_edge(clk);
rst_0 <= '1';
wait until rising_edge(clk); wait until rising_edge(clk);
```

![Alt text](images/vivado_design_ext_rst.png)

![Alt text](images/result.png)

Para generar el archivo de memoria para validar en Vivado:

* En Matlab, todos los datos son sampleados con la frecuencia más alta. Esto no significa que en el modelo utilizan frecuencias de sampleo iguales, sino que al cargarlos en el archivo, los valores más lentos se repiten "n" veces (por ejemplo, una señal de 12.5MHz se guarda repetida 8 veces por valor, para tener 100MHz).

* En Vivado, se compara 1 a 1 la salida de Simulink con la de Vivado, y tienen que ser exactamente iguales!
