# Ip Core Debugging

En este ejemplo, vamos a generar un IP Core desde Simulink y crear un testbench en Vivado para poder probar su funcionamiento.

El IP Core generado tiene dos delays, trabaja a 100MHz, y devuelve la suma y multiplicación de dos valores.

![Alt text](images/simulink_design.png)

Importante: la generación del IP Core se hace sin interfaz AXI4, desmarcar la opción en el Workflow advisor de Matlab.

![Alt text](images/axi4_option_off.jpeg)

Conectamos el IP Core en Vivado, como se muestra a continuación:

![Alt text](images/vivado_design.png)

El resultado del testbench de vivado se condice con el esperado, multiplicación y suma luego de dos ciclos de clock. Es importante agregar la señal de reset, para evitar valores iniciales como "U" o "X" (Undefined or invalid). El reset se asegura que todos los flip-flops empiecen con su valor inicial de cero.

![Alt text](images/logic_analyzer.png)