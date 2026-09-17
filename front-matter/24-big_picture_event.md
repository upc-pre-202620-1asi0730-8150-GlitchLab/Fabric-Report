# 2.4. Big picture event storming

En esta sección presentamos el Big Picture Event Storming, es una sesión colaborativa que tuvimos como equipo para enfocarnos en entender el dominio del negocio en general, anotando eventos significativos relacionados al proceso de corte y confección y sus relaciones. Todo este proceso fue hecho en Miro, por su facilidad de uso colaborativo y comrensión de los procesos de dominio. A continuación, se evidencia el proceso realizado por el equipo.

<br>

**1. Domain events**

<div align="center">
    <img src="../assets/big_picture/domain_events.jpg" alt="domain events" width="770">
</div>

<br>

En esta primera parte, nos reunimos para identificar los principales eventos que conforman todos los procesos de confección, teniendo en cuenta situaciones en las que el proceso se finaliza con éxito y cuando se presentan incovenientes con máquinas o mala calidad de tela que afectan a la producción textil. Estos eventos fueron revisados por el equipo y corroborados por personas que trabajan en el sector para así conservar los eventos que realmente impactan en el proceso de confección. 

<br>

**2. Orden Cronológico de Domain Events**

<div align="center">
    <img src="../assets/big_picture/orden_cronologico.jpg" alt="domain events" width="770">
</div>

<br>

Luego, ordenamos los procesos que se siguen según el protocolo de producción en confección de telas. Formando así cuatro bloques principales que representan la **recepción e inspección de telas**, **Creación y ejecución del lote**, **Control de calidad y defectos en máquinas o rollos** y la **gestión de máquinas**.

<br>

**3. Incorporación de Commands**

<div align="center">
    <img src="../assets/big_picture/commands.jpg" alt="domain events" width="770">
</div>

<br>

Una vez ordenados los domain events cronológicamente, identificamos los Commands que los disparan. Un Command representa una acción explícita que un actor del negoci o acción del sistema ejecuta, y que tiene como consecuencia uno o más domain events. En el tablero de flujo, los Commands se representan con post-its azules y se colocan antes de los eventos que producen, con una flecha que indica la relación causal. 

<br>

**4. Incorporación de Actors**

<div align="center">
    <img src="../assets/big_picture/actors.jpg" alt="domain events" width="770">
</div>

<br>

En esta etapa identificamos a los actores que son responsables de la ejecución de los principales Commands.Los Actors están representados por posts-its de color amarillo y ubicados sobre los commands correspondientes, de esta manera podemos visualizar con precisión a los actores que intervienen en cada uno de los procesos.

**5. Incorporación de Business Policies**

<div align="center">
    <img src="../assets/big_picture/policies.jpg" alt="domain events" width="770">
</div>

<br>

Por último, incluimos los business policies, estan representadas por post-its morados. En conjunto, estas policies garantizan que el flujo de creación y actualización de lotes sea consistente, trazable y validado, reduciendo la dependencia de verificaciones manuales y evitando que se ejecuten transiciones con información incompleta o inconsistente.