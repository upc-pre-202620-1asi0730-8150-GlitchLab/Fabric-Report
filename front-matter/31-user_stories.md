# Capítulo III: Requirements Specification

## 3.1. User Stories

* **Epics:**

<table style="border-collapse: collapse; width: 100%;">

<tr>
<th colspan="2" style="vertical-align: top;">Epic</th>
<th colspan="4" style="vertical-align: top;">Titulo</th>
<th colspan="2" style="vertical-align: top;">Descripcion</th>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">EP001</td>
<td colspan="4" style="vertical-align: top;">Production Batch Tracking and Traceability</td>
<td colspan="2" style="vertical-align: top;">Como supervisor, quiero generar IDs únicos para cada lote y monitorear su avance en todas las etapas para mantener la trazabilidad y evitar descuadres de mercadería.</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">EP002</td>
<td colspan="4" style="vertical-align: top;">Quality Inspection</td>
<td colspan="2" style="vertical-align: top;">Como inspector de calidad, quiero hacer un registro de las inspecciones de los rollos de tela que recibimos antes del tendido y corte para asegurar la calidad de los materiales.</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">EP003</td>
<td colspan="4" style="vertical-align: top;">Quality Assurance and Defect Management</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de calidad, quiero registrar, clasificar y vincular los defectos encontrados en las prendas a lotes, máquinas y operarios para agilizar las búsquedas de problemas y evitar rehacer los productos.</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">EP004</td>
<td colspan="4" style="vertical-align: top;">Sewing Machinery Tracking</td>
<td colspan="2" style="vertical-align: top;">Como supervisor en producción, quiero registrar las fallas en la maquinaria y calcular los tiempos muertos acumulados para evitar cuellos de botella y gestionar los mantenimientos preventivos de forma adecuada.</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">EP005</td>
<td colspan="4" style="vertical-align: top;">Dashboard and Alerts</td>
<td colspan="2" style="vertical-align: top;">Como dueño o supervisor, quiero contar con un dashboard con parámetros clave y alertas visuales para detectar desviaciones a tiempo y facilitar la toma de decisiones en el momento.</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">Ep006</td>
<td colspan="4" style="vertical-align: top;">Landing Page</td>
<td colspan="2" style="vertical-align: top;">Como visitante, quiero conocer la propuesta de valor, funcionalidades y beneficios de Fabric, para comprender cómo la plataforma puede ayudar a mejorar la gestión de producción y calidad de una empresa textil.</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">Ep007</td>
<td colspan="4" style="vertical-align: top;">Titulo</td>
<td colspan="2" style="vertical-align: top;">Descripcion</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">Ep008</td>
<td colspan="4" style="vertical-align: top;">Titulo</td>
<td colspan="2" style="vertical-align: top;">Descripcion</td>
</tr>

</table>

* **User Stories**

<table style="border-collapse: collapse; width: 100%;">

<tr>
<th colspan="2" style="vertical-align: top;">Story ID</th>
<th colspan="4" style="vertical-align: top;">Titulo</th>
<th colspan="2" style="vertical-align: top;">Descripcion</th>
<th colspan="2" style="vertical-align: top;">Criterios de Aceptacion</th>
<th colspan="2" style="vertical-align: top;">Relacionado con (Epic ID)</th>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US001</td>
<td colspan="4" style="vertical-align: top;">Creación y asignación de ID a lote de producción</td>
<td colspan="2" style="vertical-align: top;">Como supervisor, quiero crear un nuevo lote de producción ingresando el modelo de prenda, cantidad proyectada y ficha técnica para asignarle un ID único y dar inicio a su trazabilidad en el taller.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1:</b> Dado que el supervisor se encuentra en el módulo de lotes y completa los campos obligatorios como el modelo, cantidad estimada y fecha de entrega, cuando hace clic en "Crear Lote", entonces el sistema genera un ID único, guarda el lote en estado "Pendiente de Corte" y realiza una confirmación en pantalla.</li>
    <li><b>Escenario 2:</b> Dado que el supervisor intenta guardar un lote omitiendo campos requeridos como la cantidad o el modelo, cuando presiona "Crear Lote", entonces el sistema bloquea el guardado, resalta los campos vacíos en color rojo y muestra el mensaje de advertencia "Complete todos los campos requeridos".</li>
  </ul></td>
<td colspan="2" style="vertical-align: top;">EP001</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US002</td>
<td colspan="4" style="vertical-align: top;">Actualización y transición de etapas operativas del lote</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de producción, quiero registrar la transición del lote entre etapas indicando las cantidades procesadas para monitorear el avance real y detectar retenciones.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1:</b> Dado que un lote se encuentra en estado "En Corte" con 500 piezas finalizadas, cuando el supervisor haga clic en "Enviar a Confección" e ingrese la cantidad recibida en costura, entonces el estado del lote cambia a "En Confección" y se registran las fechas y horas exactas del traslado.</li>
    <li><b>Escenario 2:</b> Dado que el supervisor ingresa una cantidad de piezas superior a las cortadas originalmente en la etapa anterior, cuando pulsa "Confirmar Transición", entonces el sistema muestra una advertencia de inconsistencia cuantitativa y solicita rectificar el conteo antes de autorizar el pase.</li>
  </ul></td>
<td colspan="2" style="vertical-align: top;">EP001</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US003</td>
<td colspan="4" style="vertical-align: top;">Registro e inspección inicial de rollos de tela entrantes</td>
<td colspan="2" style="vertical-align: top;">Como inspector de calidad, quiero registrar los datos de cada rollo de tela recibido para verificar su conformidad inicial antes de autorizar su tendido en la mesa de corte.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1:</b> Dado que el inspector revisa un rollo de tela y constata que el tono y la textura coinciden con la muestra del cliente, cuando registra los datos del rollo y hace clic en "Conforme", entonces el sistema lo almacena en estado "Disponible para Corte" y le genera una etiqueta digital.</li>
    <li><b>Escenario 2:</b> Dado que el inspector detecta variaciones severas de matiz o huecos en la trama, cuando marca el rollo como "Observado" e ingresa el motivo, entonces el sistema bloquea su asignación a lotes de corte y notifica a la administración para coordinar con el proveedor.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP002</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US004</td>
<td colspan="4" style="vertical-align: top;">Registro de prueba de encogimiento y lavado de muestra de tela</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de calidad, quiero registrar los resultados de las pruebas de encogimiento porcentual de una muestra de tejido para asegurar que cumple con las tolerancias de la ficha técnica antes de cortar.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1:</b> Dado que el inspector introduce las dimensiones previas y posteriores al lavado de una probeta de 50x50 cm, cuando el sistema calcula automáticamente un encogimiento dentro del rango permitido (menor o igual al 5%), entonces la prueba se guarda como "Aprobada" y habilita el rollo para patronaje.</li>
    <li><b>Escenario 2:</b> Dado que la contracción calculada supera el margen estipulado en la ficha técnica, cuando el usuario guarda el resultado, entonces el sistema marca la tela como "No Conforme" y genera una sugerencia de recalibración de moldes o cambio de partida.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP002</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US005</td>
<td colspan="4" style="vertical-align: top;">Registro y clasificación de defectos en prendas confeccionadas</td>
<td colspan="2" style="vertical-align: top;">Como auditor de calidad, quiero registrar las prendas con fallas detectadas en línea vinculándolas al lote y máquina responsable para identificar rápidamente la causa del defecto.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1:</b> Dado que el auditor identifica una prenda con puntadas abiertas en el lote activo, cuando accede al formulario rápido de calidad, elige el tipo de defecto, la máquina asociada y la cantidad de prendas observadas; entonces el sistema descuenta las unidades de las prendas aprobadas y actualiza la tasa de defectos del lote.</li>
    <li><b>Escenario 2:</b> Dado que se detecta una mancha de origen impreciso, cuando el auditor registra la prenda marcando "Origen Desconocido", entonces el registro se guarda con la etiqueta "En Evaluación" para su posterior revisión conjunta con la jefatura de planta.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP003</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US006</td>
<td colspan="4" style="vertical-align: top;">Destino de prendas defectuosas a reproceso o merma definitiva</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de calidad, quiero dictaminar si una prenda observada puede ser reparada o quede para descarte para cuantificar los costos de corrección y ajustar la liquidación final del lote.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1:</b> Dado que la prenda tiene una costura remediable, cuando el supervisor pulsa "Enviar a Reproceso" e indica la estación de corrección asignada, entonces la prenda se agrega a la cola de prendas pendientes de ajuste sin darse de baja del inventario final proyectado.</li>
    <li><b>Escenario 2:</b> Dado que la tela sufrió un rasgado irreparable durante la costura, cuando el supervisor pulsa "Descartar", entonces el sistema descuenta la prenda del saldo comercializable del lote y suma el costo a las pérdidas acumuladas por merma.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP003</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US007</td>
<td colspan="4" style="vertical-align: top;">Reporte de averías e interrupción operativa de máquinas de confección</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de producción, quiero registrar la detención de una máquina de coser especificando el código de máquina, tipo de falla o avería y hora de paro para solicitar asistencia técnica inmediata.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1:</b> Dado que una máquina remalladora presenta rotura de aguja o traba mecánica, cuando el supervisor ingresa su código, selecciona el tipo de falla y pulsa "Registrar Parada", entonces el sistema cambia el estado de la máquina a "En Mantenimiento", activa el contador de tiempo muerto y notifica al área técnica.</li>
    <li><b>Escenario 2:</b> Dado que el supervisor intenta registrar la detención sin especificar el origen de la avería, cuando pulsa guardar, el sistema impide la acción y exige seleccionar al menos una categoría de falla técnica.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP004</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US008</td>
<td colspan="4" style="vertical-align: top;">Reanudación de operatividad y registro del tiempo muerto de máquina</td>
<td colspan="2" style="vertical-align: top;">Como supervisor, quiero registrar la reanudación de actividades de una máquina intervenida indicando las piezas sustituidas o calibradas para calcular el tiempo muerto acumulado y evaluar el rendimiento mecánico.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1:</b> Dado que el técnico concluye la calibración y prueba la máquina, cuando el supervisor presiona "Reanudar Operación" e ingresa la solución aplicada, entonces el sistema detiene el temporizador, guarda los minutos de inactividad registrados y restablece la máquina al estado "Operativa".</li>
    <li><b>Escenario 2:</b> Dado que el supervisor ingresa al detalle de una máquina recurrente en fallas, cuando solicita ver su histórico semanal, entonces el sistema lista cronológicamente todas las paradas, la causa de cada falla y el total acumulado de horas no productivas.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP004</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US009</td>
<td colspan="4" style="vertical-align: top;">Visualización de métricas de avance y productividad diaria en Dashboard</td>
<td colspan="2" style="vertical-align: top;">Como administrador del taller o supervisor general, quiero visualizar en un panel centralizado las prendas producidas por hora, el avance de lotes y el porcentaje de cumplimiento diario para tomar decisiones operativas sin recurrir a cuadernos o conteos físicos.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1:</b> Dado que el usuario accede a la vista principal de Fabric, cuando la página carga, entonces se muestran tarjetas con indicadores actualizados: total de prendas elaboradas en el día, promedio de prendas por hora y cantidad de lotes por etapa operativa.</li>
    <li><b>Escenario 2:</b> Dado que el usuario necesita analizar el rendimiento de un lote o día anterior, cuando aplica los filtros de búsqueda correspondientes, los gráficos y contadores del dashboard se recalculan dinámicamente mostrando exclusivamente los datos seleccionados.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP005</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US010</td>
<td colspan="4" style="vertical-align: top;">Alertas visuales de mermas y cuellos de botella</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de planta, quiero recibir alertas visuales cuando la tasa de reprocesos, mermas o tiempos muertos supere los umbrales de tolerancia para intervenir a tiempo en la línea productiva.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1:</b> Dado que el porcentaje acumulado de prendas defectuosas en un lote supera el umbral máximo tolerado (ej. mayor al 5%), cuando se registra una nueva prenda defectuosa, entonces el sistema cambia el indicador del lote a color rojo y despliega un banner de alerta crítica en el panel.</li>
    <li><b>Escenario 2:</b> Dado que un lote mantiene una tasa de reprocesos controlada (menor al 2%), cuando se consulta su ficha en el panel de control, entonces se visualiza con distintivo verde indicando flujo de confección óptimo.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP005</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US011</td>
<td colspan="4" style="vertical-align: top;">Consulta del historial de trazabilidad del lote</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de producción, quiero consultar el historial de movimientos de un lote junto con las fechas, cantidades y responsables involucrados, para identificar dónde y cuándo se produce una diferencia durante el proceso productivo.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Consulta exitosa: </b>Dado que el lote tiene movimientos registrados en diferentes etapas de producción, cuando el supervisor consulta su historial de trazabilidad, entonces el sistema registra y retorna los movimientos asociados indicando la etapa, cantidad, fecha, hora y responsable de cada movimiento.</li>
    <li><b>Escenario 2 - Detección de diferencias: </b>Dado que existen diferencias entre las cantidades registradas en dos etapas consecutivas, cuando el supervisor consulta el historial del lote, entonces el sistema identifica la diferencia y relaciona las cantidades registradas en ambas etapas.</li>
    <li><b>Escenario 3 - Lote sin historial: </b>Dado que el lote no tiene movimientos registrados, cuando el supervisor consulta su historial de trazabilidad, entonces el sistema retorna que el lote no posee movimientos registrados.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP001</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US012</td>
<td colspan="4" style="vertical-align: top;">Búsqueda y filtrado de lotes de producción</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de producción, quiero buscar y filtrar los lotes registrados por diferentes criterios, para localizar rápidamente una orden específica y revisar su información operativa.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Búsqueda por amplificador: </b>Dado que existen múltiples lotes registrados, cuando el supervisor consulta un identificador de lote válido, entonces el sistema retorna únicamente el lote asociado a dicho identificador.</li>
    <li><b>Escenario 2 - Aplicación de filtros: </b>Dado que existen lotes con diferentes estados, fechas y modelos de prenda, cuando el supervisor establece uno o más criterios de búsqueda, entonces el sistema retorna únicamente los lotes que cumplen con dichos criterios.</li>
    <li><b>Escenario 3 - Sin coincidencias: </b>Dado que ningún lote cumple con los criterios de búsqueda establecidos, cuando el supervisor realiza la consulta, entonces el sistema retorna un conjunto vacío de resultados.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP001</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US013</td>
<td colspan="4" style="vertical-align: top;">Registro de resultados y parámetros de inspección del rollo</td>
<td colspan="2" style="vertical-align: top;">Como inspector de calidad, quiero registrar los parámetros evaluados durante la inspección de un rollo de tela, para conservar evidencia de las condiciones en las que fue recibido el material.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Registro exitoso: </b>Dado que el rollo está registrado y los parámetros obligatorios de inspección son válidos, cuando el inspector registra los resultados de tono, ancho, longitud y defectos, entonces el sistema almacena los valores asociados al rollo.</li>
    <li><b>Escenario 2 Parámetros incompletos: </b>Dado que uno o más parámetros obligatorios no están registrados, cuando el inspector intenta completar la inspección, entonces el sistema rechaza el registro y no almacena la inspección incompleta.</li>
    <li><b>Escenario 1 - Valores inválidos: </b>Dado que el inspector registra un valor de longitud o ancho igual o menor que cero, cuando intenta completar la inspección, entonces el sistema rechaza el registro y no almacena los valores inválidos.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP002</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US014</td>
<td colspan="4" style="vertical-align: top;">Consulta de resultados históricos de inspecciones de tela</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de calidad, quiero consultar los resultados históricos de las inspecciones realizadas a los rollos de tela, para identificar materiales que presentan problemas recurrentes.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Consulta exitosa: </b>Dado que existen inspecciones registradas para diferentes rollos, cuando el supervisor consulta el historial, entonces el sistema retorna los resultados asociados a cada inspección, incluyendo fecha, rollo y observaciones.</li>
    <li><b>Escenario 2 - Filtrado de inspecciones: </b>Dado que existen inspecciones correspondientes a diferentes proveedores, lotes y resultados, cuando el supervisor establece uno o más criterios de búsqueda, entonces el sistema retorna únicamente las inspecciones que cumplen con dichos criterios.</li>
    <li><b>Escenario 3 - Sin coincidencias: </b>Dado que ninguna inspección cumple con los criterios establecidos, cuando el supervisor realiza la consulta, entonces el sistema retorna un conjunto vacío de resultados.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP002</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US015</td>
<td colspan="4" style="vertical-align: top;">Asociación de evidencias a defectos de calidad</td>
<td colspan="2" style="vertical-align: top;">Como auditor de calidad, quiero asociar evidencias a los defectos encontrados en las prendas, para facilitar su revisión y respaldar las acciones correctivas tomadas.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Evidencia registrada: </b>Dado que existe un defecto registrado, cuando el auditor asocia una fotografía válida como evidencia, entonces el sistema almacena la evidencia vinculada al defecto correspondiente.</li>
    <li><b>Escenario 2 - Defecto sin evidencia: </b>Dado que existe un defecto que no tiene evidencias asociadas, cuando el supervisor consulta su información, entonces el sistema identifica que el defecto no posee evidencias registradas.</li>
    <li><b>Escenario 3 - Archivo no válido: </b>Dado que el auditor proporciona un archivo cuyo formato no corresponde a los formatos de evidencia permitidos, cuando intenta asociarlo al defecto, entonces el sistema rechaza el archivo y no lo almacena.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP003</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US016</td>
<td colspan="4" style="vertical-align: top;">Identificación de defectos recurrentes por lote y máquina</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de calidad, quiero consultar los defectos registrados agrupados por tipo, lote y máquina, para identificar patrones recurrentes y priorizar acciones correctivas.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Agrupación de defectos: </b>Dado que existen múltiples defectos registrados, cuando el supervisor consulta los defectos de un período determinado, entonces el sistema calcula y retorna la cantidad de incidencias agrupadas por tipo de defecto.</li>
    <li><b>Escenario 2 - Asociación con maquinaria: </b>Dado que existen defectos asociados a diferentes máquinas y lotes, cuando el supervisor consulta los defectos correspondientes a una máquina determinada, entonces el sistema retorna únicamente las incidencias asociadas a dicha máquina y sus tipos de defecto.</li>
    <li><b>Escenario 3 - Sin registros coincidentes: </b>Dado que no existen defectos asociados a los criterios de búsqueda establecidos, cuando el supervisor realiza la consulta, entonces el sistema retorna un conjunto vacío de resultados.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP003</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US017</td>
<td colspan="4" style="vertical-align: top;">Consulta del estado actual de las máquinas de confección</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de producción, quiero consultar el estado operativo de las máquinas de confección, para identificar cuáles se encuentran disponibles, detenidas o en mantenimiento.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Consulta exitosa: </b>Dado que existen máquinas registradas, cuando el supervisor consulta su estado operativo, entonces el sistema retorna el estado actual de cada máquina registrada.</li>
    <li><b>Escenario 2 - Máquina detenida: </b>Dado que una máquina tiene una interrupción operativa registrada, cuando el supervisor consulta su estado, entonces el sistema retorna dicha máquina como detenida y la relaciona con la incidencia correspondiente.</li>
    <li><b>Escenario 3 - Máquina no registrada: </b>Dado que no existe una máquina asociada al código consultado, cuando el supervisor realiza la consulta, entonces el sistema retorna que no existe una máquina registrada con dicho código.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP004</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US018</td>
<td colspan="4" style="vertical-align: top;">Registro y consulta del historial de mantenimiento</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de producción, quiero registrar y consultar los mantenimientos realizados a cada máquina, para conocer las intervenciones efectuadas y apoyar la planificación del mantenimiento preventivo.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Registro exitoso: </b>Dado que una máquina está registrada y requiere una intervención, cuando el supervisor registra el mantenimiento realizado, entonces el sistema almacena la intervención asociada a la máquina, incluyendo la fecha y las observaciones correspondientes.</li>
    <li><b>Escenario 2 - Consulta del historial: </b>Dado que una máquina posee intervenciones de mantenimiento registradas, cuando el supervisor consulta su historial, entonces el sistema retorna las intervenciones ordenadas cronológicamente con sus fechas y observaciones.</li>
    <li><b>Escenario 3 - Datos incompletos: </b>Dado que el registro de mantenimiento no contiene la máquina o la fecha de intervención, cuando el supervisor intenta registrar el mantenimiento, entonces el sistema rechaza el registro y no almacena información incompleta.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP004</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US019</td>
<td colspan="4" style="vertical-align: top;">Visualización de indicadores de defectos, reprocesos y merma</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de calidad, quiero consultar indicadores relacionados con defectos, reprocesos y merma, para evaluar el comportamiento de la calidad de los lotes y detectar áreas que requieren atención.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Consulta de indicadores: </b>Dado que existen registros de defectos, reprocesos y merma durante un período determinado, cuando el supervisor consulta los indicadores, entonces el sistema calcula y retorna los valores correspondientes al período.</li>
    <li><b>Escenario 2 - Consulta por lote: </b>Dado que existen registros asociados a diferentes lotes, cuando el supervisor establece un lote como criterio de consulta, entonces el sistema calcula y retorna únicamente los indicadores correspondientes a dicho lote.</li>
    <li><b>Escenario 3 - Sin información: </b>Dado que no existen registros de defectos, reprocesos o merma para el período o lote consultado, cuando el supervisor solicita los indicadores, entonces el sistema retorna que no existen datos disponibles para realizar el cálculo.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP005</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US020</td>
<td colspan="4" style="vertical-align: top;">Generación de alertas por acumulación de tiempo muerto</td>
<td colspan="2" style="vertical-align: top;">Como supervisor de producción, quiero recibir alertas cuando una máquina acumule un tiempo muerto superior al límite establecido, para identificar posibles problemas recurrentes y tomar acciones preventivas.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Generación de alerta: </b>Dado que una máquina tiene establecido un límite máximo de tiempo muerto, cuando el tiempo muerto acumulado supera dicho límite, entonces el sistema genera una alerta asociada a la máquina e identifica el tiempo acumulado.</li>
    <li><b>Escenario 2 - Tiempo dentro del límite: </b>Dado que una máquina mantiene su tiempo muerto acumulado dentro del límite establecido, cuando el sistema evalúa su tiempo muerto, entonces el sistema no genera una alerta por exceso de tiempo.</li>
    <li><b>Escenario 3 - Máquina sin registros: </b>Dado que una máquina no posee registros de paradas o tiempos muertos, cuando el sistema evalúa su tiempo muerto, entonces el sistema no genera una alerta por exceso y determina que no existen datos suficientes para realizar la evaluación.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP005</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US021</td>
<td colspan="4" style="vertical-align: top;">Visualización de Hero Section</td>
<td colspan="2" style="vertical-align: top;">Como visitante, deseo visualizar un mensaje claro sobre el valor de Fabric acompañado de una imagen representativa, para comprender rápidamente qué ofrece la solución.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Visualización del mensaje principal </b>Dado que el visitante ingresa a la Landing Page, cuando se carga el Hero Section, entonces se muestra un mensaje claro sobre el valor de Fabric.</li>
    <li><b>Escenario 2 - Visualización de imagen representativa </b>Dado que el visitante visualiza el Hero Section, cuando se presenta el mensaje principal, entonces se muestra una imagen representativa de Fabric al costado del mensaje.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP006</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US022</td>
<td colspan="4" style="vertical-align: top;">Visualización de funcionalidades</td>
<td colspan="2" style="vertical-align: top;">Como visitante, quiero conocer las principales funcionalidades de Fabric, para identificar las herramientas que ofrece la plataforma para la gestión de los procesos textiles.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Visualización de funcionalidades principales </b>Dado que el visitante llega a la sección de funcionalidades, cuando visualiza su contenido, entonces se muestran las principales funcionalidades de Fabric.</li>
    <li><b>Escenario 2 - Información de cada funcionalidad </b>Dado que el visitante revisa las funcionalidades, cuando visualiza cada una, entonces se muestra su nombre acompañado de una breve descripción.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP006</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US023</td>
<td colspan="4" style="vertical-align: top;">Visualización de beneficios</td>
<td colspan="2" style="vertical-align: top;">Como visitante, deseo conocer los principales beneficios de Fabric, para comprender cómo la solución puede contribuir a la gestión de una empresa textil.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Visualización de beneficios</b>Dado que el visitante llega a la sección de beneficios, cuando visualiza su contenido, entonces se muestran los principales beneficios de Fabric.</li>
    <li><b>Escenario 2 - Apoyo visual de los beneficios </b>Dado que el visitante se encuentra en la sección de beneficios, cuando revisa la información presentada, entonces cada beneficio se muestra acompañado de un ícono o imagen representativa que facilite su comprensión.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP006</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US024</td>
<td colspan="4" style="vertical-align: top;">Navegación por la Landing Page</td>
<td colspan="2" style="vertical-align: top;">Como visitante, deseo navegar fácilmente por las secciones de la Landing Page, para encontrar rápidamente la información que deseo conocer sobre Fabric.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Navegación mediante el menú </b>Dado que el visitante se encuentra en la Landing Page, cuando selecciona una opción del menú de navegación, entonces la página lo dirige a la sección correspondiente.</li>
    <li><b>Escenario 2 - Navegación entre secciones </b>Dado que el visitante se encuentra visualizando una sección, cuando selecciona otra opción del menú, entonces la página se desplaza hacia la sección seleccionada.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP006</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US025</td>
<td colspan="4" style="vertical-align: top;">Visualización del equipo</td>
<td colspan="2" style="vertical-align: top;">Como visitante, deseo conocer al equipo detrás de Fabric, para identificar a las personas responsables del desarrollo de la solución.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Visualización del equipo</b>Dado que el visitante llega a la sección del equipo, cuando visualiza su contenido, entonces se muestran los integrantes de GlitchLab.</li>
    <li><b>Escenario 2 - Información de los integrantes </b>Dado que el visitante revisa la sección del equipo, cuando visualiza a cada integrante, entonces se muestra su nombre acompañado de la información definida para su presentación.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP006</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US026</td>
<td colspan="4" style="vertical-align: top;">Envío de Formulario de Solicitud de Demo</td>
<td colspan="2" style="vertical-align: top;">Como visitante, deseo completar un formulario para solicitar una demostración, para recibir información personalizada sobre Fabric y conocer cómo puede aplicarse en una empresa textil.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Envío exitoso de solicitud </b>Dado que el visitante accede al formulario de solicitud de demo, cuando completa los campos obligatorios Nombre, Correo electrónico, Teléfono y Empresa y hace clic en “Enviar”, entonces el sistema registra la solicitud y muestra el mensaje “Gracias, nos contactaremos pronto”.</li>
    <li><b>Escenario 2 - Validación de campos obligatorios </b>Dado que el visitante se encuentra en el formulario de solicitud de demo, cuando intenta enviarlo sin completar uno o más campos obligatorios, entonces el sistema no permite el envío y muestra un mensaje indicando que debe completar los campos requeridos.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;">EP006</td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US027</td>
<td colspan="4" style="vertical-align: top;">Acceso a Términos y Condiciones</td>
<td colspan="2" style="vertical-align: top;">Como visitante, deseo acceder a los Términos y Condiciones de Fabric, para conocer las condiciones de uso de la plataforma.</td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1 - Acceso desde el Footer </b>Dado que el visitante se encuentra en la Landing Page, cuando llega al Footer, entonces visualiza el enlace “Términos y Condiciones” disponible para su acceso.</li>
    <li><b>Escenario 2 - Visualización de Términos y Condiciones </b>Dado que el visitante visualiza el enlace “Términos y Condiciones” en el Footer, cuando hace clic en él, entonces se muestra el contenido completo de los Términos y Condiciones de Fabric.</li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;"></td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US028</td>
<td colspan="4" style="vertical-align: top;"></td>
<td colspan="2" style="vertical-align: top;"></td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1: </b></li>
    <li><b>Escenario 2: </b></li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;"></td>
</tr>

<tr>
<td colspan="2" style="vertical-align: top;">US029</td>
<td colspan="4" style="vertical-align: top;"></td>
<td colspan="2" style="vertical-align: top;"></td>
<td colspan="2" style="vertical-align: top;">
  <ul>
    <li><b>Escenario 1: </b></li>
    <li><b>Escenario 2: </b></li>
  </ul>
</td>
<td colspan="2" style="vertical-align: top;"></td>
</tr>
</table>

