# Vivado Tutorial

Esta serie de tutoriales está basada en la lista de videos [Zybo FPGA tutorial](https://www.youtube.com/watch?v=CweKlwsXUY0&list=PLduTTg7jqnkhg_LmI0bmsLsUY5E5JE0av) del canal "embedded on me".

Los códigos incluidos en este repositorio siguen en su mayor parte la numeración de los videos y fueron adaptados para correr sobre la placa de desarrollo [PYNQ-Z2](https://www.tulembedded.com/FPGA/ProductsPYNQ-Z2.html).

Dentro de cada carpeta, encontrará un README con explicaciones de cada tutorial. Una descripción breve de cada uno de ellos es la siguiente:

* **00_instalacion**: Se mencionan los softwares y la placa de desarrollo utilizada.

* **01_vhdl_puro**: Proyecto de Vivado con sólo código VHDL.

* **02_ip_integrator**: Proyecto de Vivado que conecta lógica programable con el procesador Cortex-A mediante interfaz AXI4.

* **03_custom_ip**: IP Core propio escrito en VHDL, conectado por AXI4 al procesador.

* **04_hdl_coder**: IP Core generado a partir de código de Matlab.

* **05_c_coder**: Código de Matlab que es pasado a "C" y que luego es ejecutado en el procesador.

* **06_simulink_coder**: Diagramas en bloques de Simulink que es pasado a un IP Core.

* **07_vivado_hls**: Código de C que es pasado a VHDL.

## Subir proyectos de Vivado a GitHub

Se debe agregar el `.gitignore` en el root del proyecto de Vivado. A la hora de importar el proyecto desde GitHub, se deben tener las siguientes consideraciones:

* EL bitstream y reportes de síntesis e implementación se pueden encontrar en los archivos ".bit" y ".rpt" respectivamente, dentro de la carpeta "*.runs".

* En caso de usar un Block Diagram, se debe regenerar el HDL wrapper (esta acción además regenera los archivos de los IP Core necesarios para futuras síntesis).

## Subir IP Cores a GitHub

En algunas carpetas encontrará la carpeta "ip_repo". En esa carpeta es donde quedan generados los IP Core, y con agregar esa carpeta al repositorio de IP Cores del proyecto de Vivado, ya quedan importados y usables en el proyecto.

## Subir proyectos de Vitis a GitHub

Se debe agregar el `.gitignore` en el root del proyecto de Vitis.

Los únicos archivos que se suben a GitHub son los códigos fuentes, y la plataforma de hardware en un archivo ".xsa". Al importar el proyecto se debe:

* Crear un Platform Component con el archivo ".xsa".
* Crear un Application Component e importar los archivos fuentes dentro de la carpeta "src".

## Subir proyectos de Matlab HDL Coder a GitHub

Teniendo los scripts ".m" de Matlab, las opciones usadas para generar el código VHDL se pueden obtener de los reportes incluidos en el repositorio.

## Subir proyectos de Vitis HLS a Github

Al día de la fecha no se encontró forma de subir el proyecto a GitHub, por lo que se debe importar los archivos fuentes y realizar toda la compilación desde cero.
