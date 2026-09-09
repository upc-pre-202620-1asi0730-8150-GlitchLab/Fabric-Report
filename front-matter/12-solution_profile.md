# 1.2. Solution Profile

## 1.2.1. Antecedentes y problemática

Según [Javier Borda (2012)](https://repositorio.uni.edu.pe/handle/20.500.14076/1347?utm_source), las empresas del sector textil y confecciones en el Perú (sobre todo MYPES) enfrentan dificultades para mantener un control eficiente de sus procesos productivos y de calidad, evidenciándose brechas de calidad dentro del sector. La falta de una gestión digital y centralizada de la información puede dificultar el seguimiento de rendimiento de las máquinas, asi como el registro de control de calidad de las telas y trazabilidad de lotes producidos. Esto puede generar dificultades para identificar problemas durante la producción, aumentar los tiempos y costos asociados a errores y limitar la disponibilidad de información para una adecuada toma de decisiones [(INEI, 2023)](chrome-extension://efaidnbmnnnibpcajpcglclefindmkaj/https://www.inei.gob.pe/media/inei_en_los_medios/06-jun-el-peruano-8-9.pdf?utm_source).

Ante esta problemática, proponemos **Fabric**, una aplicación web que centraliza la información de producción y calidad, permitiendo realizar el seguimiento de lotes, registrar controles de calidad de las telas y consultar indicadores relacionados con la productividad de las máquinas de confección.

A continuación, plantearemos la problemática usando la técnica de 5´W´s y 2´h´s.

### What? (¿Cuál es el problema?)

En el sector textil y de confecciones peruano existen dificultades para llevar un control adecuado de los procesos de producción y calidad. Durante la fabricación se genera información sobre las máquinas, los lotes producidos, la cantidad elaborada y los problemas de calidad encontrados, pero estos datos pueden registrarse de forma manual, en diferentes documentos o sin una estructura que facilite su consulta. Esto hace más difícil conocer el estado de la producción y relacionar los problemas encontrados con el lote, la máquina o la etapa en la que ocurrieron.

En consecuencia, los responsables pueden tener dificultades para detectar errores a tiempo, hacer seguimiento de los lotes y conocer qué procesos están generando más problemas. Esto limita el uso de la información para mejorar la producción y puede contribuir a generar desperdicios, reprocesos y mayores costos para la empresa [(Borda, 2012)](https://repositorio.uni.edu.pe/handle/20.500.14076/1347?utm_source).

### Why? (¿Por qué ocurre?)

La problemática ocurre debido a que muchas empresas del sector textil, especialmente las MYPES, todavía presentan un nivel limitado de digitalización y modernización en sus procesos productivos. Esto puede generar que la información relacionada con la producción, el rendimiento de las máquinas y los controles de calidad se registre de manera manual, en diferentes formatos o incluso que no se encuentre centralizada [(Rosales & Urbano, 2020)](http://hdl.handle.net/20.500.12404/19374). Por eso, los responsables de producción y calidad pueden tener dificultades para consultar rápidamente el historial de un lote, identificar los defectos más frecuentes o conocer el rendimiento de las máquinas.

Además, la limitada incorporación de tecnologías de información reduce la capacidad de las empresas para obtener información oportuna y utilizarla como apoyo para la toma de decisiones. Esto resulta especialmente relevante en procesos donde un defecto detectado tardíamente puede generar reprocesos, desperdicio de materiales (mermas), retrasos en la producción y mayores costos.

### Who? (¿A quiénes afecta?)

Esta problemática afecta principalmente las MYPES del sector textil y de confecciones, involucrando directamente a propietarios y administradores, supervisores y responsables de producción, personal encargado del control de calidad y operarios que participan directamente en los procesos productivos. Asimismo, puede agectar a otros actores relacionados con la cadena de suministro, como proveedores, distribuidores y clientes, debido a problemas asociados con retrasos, defectos de calidad o dificultades en el seguimiento de los productos y lotes fabricados.

### Where? (¿Dónde ocurre?)

La problemática se presenta principalmente en las empresas dedicadas a la producción textil y de confecciones, con una mayor concentración en Lima Metropolitana. Esta ubicación resulta importante debido a que Lima concentra el 63.9 % de las empresas formales del sector textil y de confecciones del país, y el 99.4 % de estas empresas corresponde a MYPEs [(PRODUCE, 2026)](https://www.gob.pe/institucion/produce/noticias/1410729-ministro-de-la-produccion-industria-textil-y-de-confecciones-sostiene-411-mil-puestos-de-trabajo-con-participacion-femenina-del-63-7).

Dentro de Lima, uno de los principales puntos de concentración de esta actividad es el **Emporio Comercial de Gamarra**, ubicado en el distrito de La Victoria, reconocido por ser uno de los principales centros de producción y comercialización textil del Perú. En 2024, [PRODUCE](https://www.gob.pe/institucion/produce/noticias/1069804-gobierno-impulsa-campana-navidena-2024-segura-para-reactivar-la-economia-de-gamarra) señaló que Gamarra reunía cerca de 50 000 emprendedores dedicados a la confección y comercialización de productos textiles.

Por ello, **Fabric** se enfocará inicialmente en las MYPE textiles y de confecciones de Lima, tomando como principal contexto de aplicación el Emporio Comercial de Gamarra, donde existe una alta concentración de empresas y una necesidad de mejorar la gestión de los procesos productivos y de calidad.

### When? (¿Cuándo ocurre?)

La problemática se presenta durante el desarrollo y seguimiento de los procesos productivos, especialmente en las etapas donde se requiere controlar la calidad, registrar información de producción y verificar el estado de los productos. Esta necesidad se mantiene durante la operación de las empresas, ya que en 2024 el ITP brindó 2,640 servicios especializados a 891 unidades productivas del sector textil, siendo el control de calidad, el control de inventarios y el planeamiento de la producción [(ITP, 2025)](https://www.gob.pe/institucion/itp/noticias/1091822-durante-el-2024-mas-de-2-600-empresas-del-rubro-indumentaria-fueron-asistidas-por-la-unidad-tecnica-textil-y-confecciones-del-itp), entre algunos de los temas más demandados dentro de la industria.

### How? (¿Cómo?)

 El problema se manifiesta cuando la información relacionada con la producción, el rendimiento de las máquinas y los controles de calidad se registra de manera manual, dispersa o sin una adecuada relación con los lotes y etapas del proceso productivo. Esto dificulta conocer oportunamente el estado de la producción, identificar problemas de rendimiento y determinar dónde y cuándo se originan los defectos.

Como consecuencia, las empresas pueden presentar reprocesos, mermas, retrasos y mayores costos de producción. Además, la falta de información organizada limita la capacidad de analizar los problemas y tomar acciones correctivas oportunamente.

### How Much? (¿Cúanto afecta?)

La problemática puede generar un impacto económico en las MYPE textiles, principalmente por los gastos relacionados con desperdicios y productos que necesitan ser corregidos. Según [Elsie Bonilla (2017)](https://repositorio.ulima.edu.pe/item/8e63e69e-f96c-ce8d-e050-007f0100075d), quien analizó 27 MYPE de confección textil de Lima y Callao, existe una relación entre una mejor gestión de calidad y una reducción de los costos por desechos y desperdicios. Este estudio encontró que por cada 1 % de mejora en la gestión de calidad, los costos de producción podían disminuir aproximadamente 0.08 %.

## 1.2.2. Lean UX Process

### 1.2.2.1. Lean UX Problem Statement

Actualmente, en el sector textil y de confecciones de Lima, especialmente en las MYPE, el control de la producción y la calidad se centra en registrar información sobre lotes, defectos y rendimiento de las máquinas, pero estos datos pueden encontrarse dispersos o registrarse manualmente, dificultando su seguimiento y análisis. Las soluciones existentes no siempre permiten reunir esta información en un solo lugar y relacionarla para identificar problemas a tiempo. **Fabric** busca cubrir esta necesidad mediante una aplicación web que centralice los registros, permita hacer seguimiento de los lotes, registrar defectos y consultar indicadores para facilitar la toma de decisiones. Nuestro enfoque inicial estará dirigido a MYPE textiles y de confecciones de Lima, especialmente aquellas ubicadas en Gamarra. Sabremos que la solución es exitosa cuando los usuarios registren de forma constante sus procesos y controles de calidad, consulten los indicadores para detectar problemas y logren reducir la cantidad de defectos, desperdicios y reprocesos.

### 1.2.2.2. Lean UX Assumptions

Business Assumptions: <br>
> * Creemos que las MYPE textiles de Lima Metropolitana, especialmente las ubicadas en Gamarra, enfrentan problemas operativos relacionados con el seguimiento de producción y control de calidad, y que estarían abiertas a adoptar una solución digital si esta se adapta a sus necesidades y capacidades técnicas.
> * Creemos que un modelo de negocio basado en suscripción mensual es viable para Fabric, siempre que el precio sea accesible para el presupuesto de una MYPE textil y el valor justifique el costo.
> * Creemos que las empresas del sector textil valorarán una herramienta que centralice la información de producción y calidad, reduciendo la dependencia de registros físicos o archivos separados.

Business Outcomes Assumptions:<br>
> * Creemos que las empresas que utilicen Fabric de manera constante podrán reducir sus costos operativos asociados a desperdicios, reprocesos y retrasos en la producción.
> * Creemos que los usuarios mantendrán un uso activo de la plataforma (al menos 3 veces por semana) si encuentran valor en la información que pueden consultar y registrar.
> * Creemos que una parte de las empresas que prueben Fabric estará dispuesta a contratar una suscripción mensual después de comprobar sus beneficios.
> * Creemos que Fabric permitirá a los equipos de producción reducir el tiempo dedicado a recopilar y organizar información manualmente, liberando tiempo para tareas de mayor valor.

User Assumptions:<br>
> * Creemos que las MYPE textiles cuentan con al menos una persona responsable de supervisar la producción y otra encargada del control de calidad, quienes son los principales usuarios potenciales de Fabric.
> * Creemos que estos usuarios necesitan acceder a información actualizada sobre el estado de los lotes, el rendimiento de las máquinas y los defectos detectados durante su jornada laboral.
> *  Creemos que actualmente los usuarios registran esta información en formatos físicos (como planillas o cuadernos) o en herramientas digitales no especializadas (como Excel o Google Sheets), lo que dificulta su análisis y seguimiento.
> * Creemos que los usuarios pueden adaptarse a una aplicación web siempre que la interfaz sea simple, clara y fácil de utilizar.

User Outcome and Benefit Assumptions: <br>
> * Creemos que los usuarios podrán conocer rápidamente el estado de los lotes y detectar retrasos o problemas durante su elaboración.
> * Creemos que podrán identificar los defectos más frecuentes y relacionarlos con los lotes o procesos donde fueron encontrados.
> * Creemos que los usuarios percibirán un impacto positivo en su trabajo diario al contar con un historial claro y consultable de cada lote y sus incidencias.

Feature Assumptions:<br>
> * Creemos que una funcionalidad que permita crear lotes, registrar cantidades, fechas clave, etapa actual y estado del lote será suficiente para que los supervisores realicen un seguimiento ordenado y completo de la producción.
> * Creemos que una función de consulta y filtrado (por fecha, lote, máquina, etapa o tipo de defecto) permitirá a los usuarios analizar el historial de producción y calidad, identificando patrones o causas raíz de problemas recurrentes.
> * Creemos que la visualización de indicadores clave (como porcentaje de defectos, eficiencia por máquina o cumplimiento de plazos) será útil para que los usuarios tomen decisiones basadas en datos concretos.
> * Creemos que un módulo de control de calidad que permita registrar inspecciones, seleccionar tipos de defecto (falla de material, falla de medida, falla en accesorios), cantidades afectadas y asociarlos a un lote específico ayudará a los encargados a mantener un registro detallado y trazable de los problemas de calidad.

### 1.2.2.3. Lean UX Hyphotesis Statement

> * Creemos que lograremos una reducción de al menos un 20% en los retrasos de producción y una mejor trazabilidad de los lotes si los supervisores de producción y control de calidad logran conocer el estado actual de cada lote, identificar retrasos o desviaciones en las fechas de entrega, y mantener un registro organizado de todos los lotes de producción con un módulo que permita crear lotes, registrar cantidades, fechas de inicio y entrega, etapa actual y actualizar el estado a lo largo del proceso productivo.
> * Creemos que lograremos un mejor seguimiento de los problemas de calidad y una reducción de los costos por reprocesos si el personal de control de calidad y los supervisores de producción logran registrar inspecciones, asociar defectos a lotes específicos y mantener un historial de calidad trazable con una función de control de calidad que permita registrar inspecciones, seleccionar tipos de defecto y agregar observaciones.
> * Creemos que lograremos la identificación de problemas recurrentes y el análisis de causa raíz si los supervisores de producción y los gerentes de calidad logran consultar registros de producción anteriores, detectar patrones en los defectos, identificar qué máquinas o procesos generan más problemas y analizar el historial para tomar decisiones informadas con una función de consulta y filtrado que permita revisar registros anteriores y filtrar por fecha, lote, etapa o tipo de defecto.
> * Creemos que lograremos una toma de decisiones basada en datos precisos y una detección más rápida de problemas si los gerentes de producción y dueños de negocio logran visualizar indicadores clave de rendimiento y monitorear tendencias de calidad con un dashboard que muestre porcentaje de defectos, eficiencia por máquina y cumplimiento de plazos de entrega. 

### 1.2.2.4. Lean UX Canvas

|**1. Business Problem**           | **2. Business Outcomes** | 
|:---------------------------------|---------------------------|
|Las MYPE textiles y de confecciones de Lima Metropolitana, especialmente las ubicadas en el Emporio Comercial de Gamarra, enfrentan dificultades para mantener un control eficiente de sus procesos productivos y de calidad. La información que se relaciona con la producción, el rendimiento de las máquinas y los controles de calidad se registra de manera manual, dispersa o sin una estructura que facilite su consulta.<br>| Creemos que Fabric permitirá a las MYPE textiles reducir sus costos operativos generados por desperdicios de tela, productos defectuosos y reprocesos, y sabremos que hemos tenido éxito cuando las empresas usuarias reporten una disminución de al menos el 10% en sus costos por reprocesos y mermas durante los primeros 3 meses de uso de la plataforma, en comparación con el periodo anterior sin la herramienta.<br> <br>|
| **3. Users and Customers** |  **4. User Benefits** |
| - Creemos que nuestro primer segmento objetivo son los **supervisores de produccion** de MYPE textiles y de confecciones en Lima, quienes actualmente se enfrentan a la dificultad de realizar un seguimiento ordenado de los lotes de producción, ya que la información sobre cantidades, fechas de entrega y etapa actual de producción se registra de manualmente en formatos físicos (cuadernos o planillas), lo que impide reconocer rápidamente el estado de cada lote, identificar retrasos y mantener un historial organizado durante todo el ciclo de producción.  <br><br>  - Creemos que nuestro segundo segmento objetivo son los **encargados de control de calidad**, quienes tienen dificultades para registrar y dar seguimiento a las inspecciones de calidad y los defectos que encuentran en las prendas, ya que esta información se registra de manera dispersa o sin relación con los lotes y etapas de producción, lo que les impide mantener un historial de calidad claro y trazable, identificar los defectos más frecuentes y saber en qué etapa del proceso o en qué máquina se originan los problemas.  |  - Creemos que el **supervisor de producción** lograrán un seguimiento ordenado y completo de cada lote durante el proceso productivo para poder conocer rápidamente el estado actual de cada lote, identificar retrasos o desviaciones en las fechas de entrega, mantener un registro organizado de toda la producción y así poder tomar acciones correctivas oportunas que permitan reducir los retrasos en la entrega de pedidos y optimizar el flujo de trabajo en la planta.<br><br> - Creemos que el **encargado de control de calidad** quiere lograr el registro detallado y trazable de todas las inspecciones de calidad y defectos encontrados en las prendas para poder asociar cada defecto al lote, etapa del proceso o máquina específica donde se originó, identificar los defectos más frecuentes, y así poder focalizar acciones correctivas en los problemas que generan mayores pérdidas, reduciendo los costos por reprocesos y evitando que productos defectuosos lleguen al cliente final.|
| **5. Solutions** | **6. Hyphoteses**  |
|- Creemos que contar con un módulo de gestión de lotes que permita crear lotes, registrar cantidades, fechas de inicio y entrega, etapa actual y actualizar el estado a lo largo del proceso productivo permitirá a los supervisores de producción realizar un seguimiento ordenado y completo de cada lote, conocer rápidamente su estado actual, identificar retrasos o desviaciones en las fechas de entrega y mantener un registro organizado de toda la producción.<br><br> - Creemos que contar con una función de control de calidad que permita registrar inspecciones, seleccionar tipos de defecto (tela, costura, acabado, medida, avíos), indicar cantidades afectadas, asociar defectos a lotes específicos y agregar observaciones permitirá a los encargados de control de calidad mantener un registro detallado y trazable de todas las inspecciones y defectos. | - Creemos que una reducción de al menos un 20% en los retrasos de producción será alcanzada si los supervisores de producción y control de calidad obtienen la capacidad de conocer el estado actual de cada lote, identificar retrasos o desviaciones en las fechas de entrega, y mantener un registro organizado de todos los lotes de producción. <br><br> - Creemos que una toma de decisiones basada en datos precisos y una detección más rápida de problemas, reduciendo el tiempo de respuesta ante desviaciones en al menos un 30%, será alcanzada si los gerentes de producción y dueños de negocio obtienen la capacidad de visualizar el rendimiento de su negocio a través de reportes consolidados que les permitan identificar rápidamente problemas de calidad, máquinas con bajo rendimiento y lotes fuera de plazo. |
| **7. What’s the most important thing we need to learn first?** | **8. What’s the least amount of work we need to do to learn that?**|
|  ¿Estarían las empresas textiles dispuestas a pagar una suscripción mensual por Fabric y usarla diariamente para gestionar su producción y calidad?  <br><br> ¿Las funcionalidades de gestión de lotes, registro de inspecciones, consulta de historial y panel de control son suficientes y útiles para que los usuarios resuelvan sus problemas operativos? |  Realizar entrevistas a supervisores de producción, encargados de control de calidad y dueños de MYPE textiles para validar su disposición a pagar y el valor percibido de las funcionalidades. Además, desarrollar un prototipo navegable (mockup) de las funcionalidades clave y probarlo con los usuarios para recoger feedback temprano sobre su usabilidad y utilidad.   | 



