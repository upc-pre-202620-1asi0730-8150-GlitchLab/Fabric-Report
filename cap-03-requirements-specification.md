# Capítulo III: Requirements Specification

## 2.1 User Stories

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
<td colspan="4" style="vertical-align: top;">Titulo</td>
<td colspan="2" style="vertical-align: top;">Descripcion</td>
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

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US001</td>
    <td><b>Epic ID</b></td>
    <td>EP001</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">Creación y asignación de ID a lote de producción</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
      <td colspan="3">Como supervisor, quiero crear un nuevo lote de producción ingresando el modelo de prenda, cantidad proyectada y ficha técnica para asignarle un ID único y dar inicio a su trazabilidad en el taller.</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li><b>Escenario 1:</b> Dado que el supervisor se encuentra en el módulo de lotes y completa los campos obligatorios como el modelo, cantidad estimada y fecha de entrega, cuando hace clic en "Crear Lote", entonces el sistema genera un ID único, guarda el lote en estado "Pendiente de Corte" y realiza una confirmación en pantalla.</li>
        <li><b>Escenario 2:</b> Dado que el supervisor intenta guardar un lote omitiendo campos requeridos como la cantidad o el modelo, cuando presiona "Crear Lote", entonces el sistema bloquea el guardado, resalta los campos vacíos en color rojo y muestra el mensaje de advertencia "Complete todos los campos requeridos".</li>
      </ul>
    </td>
  </tr>

</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US002</td>
    <td><b>Epic ID</b></td>
    <td>EP001</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">Actualización y transición de etapas operativas del lote</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">Como supervisor de producción, quiero registrar la transición del lote entre etapas indicando las cantidades procesadas para monitorear el avance real y detectar retenciones.</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li><b>Escenario 1:</b> Dado que un lote se encuentra en estado "En Corte" con 500 piezas finalizadas, cuando el supervisor haga clic en "Enviar a Confección" e ingrese la cantidad recibida en costura, entonces el estado del lote cambia a "En Confección" y se registran las fechas y horas exactas del traslado.</li>
        <li><b>Escenario 2:</b> Dado que el supervisor ingresa una cantidad de piezas superior a las cortadas originalmente en la etapa anterior, cuando pulsa "Confirmar Transición", entonces el sistema muestra una advertencia de inconsistencia cuantitativa y solicita rectificar el conteo antes de autorizar el pase.</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US003</td>
    <td><b>Epic ID</b></td>
    <td>EP002</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">Registro e inspección inicial de rollos de tela entrantes</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">Como inspector de calidad, quiero registrar los datos de cada rollo de tela recibido para verificar su conformidad inicial antes de autorizar su tendido en la mesa de corte.</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li><b>Escenario 1:</b> Dado que el inspector revisa un rollo de tela y constata que el tono y la textura coinciden con la muestra del cliente, cuando registra los datos del rollo y hace clic en "Conforme", entonces el sistema lo almacena en estado "Disponible para Corte" y le genera una etiqueta digital.</li>
        <li><b>Escenario 2:</b> Dado que el inspector detecta variaciones severas de matiz o huecos en la trama, cuando marca el rollo como "Observado" e ingresa el motivo, entonces el sistema bloquea su asignación a lotes de corte y notifica a la administración para coordinar con el proveedor.</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US004</td>
    <td><b>Epic ID</b></td>
    <td>EP002</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">Registro de prueba de encogimiento y lavado de muestra de tela</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">Como supervisor de calidad, quiero registrar los resultados de las pruebas de encogimiento porcentual de una muestra de tejido para asegurar que cumple con las tolerancias de la ficha técnica antes de cortar.</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li><b>Escenario 1:</b> Dado que el inspector introduce las dimensiones previas y posteriores al lavado de una probeta de 50x50 cm, cuando el sistema calcula automáticamente un encogimiento dentro del rango permitido (menor o igual al 5%), entonces la prueba se guarda como "Aprobada" y habilita el rollo para patronaje.</li>
        <li><b>Escenario 2:</b> Dado que la contracción calculada supera el margen estipulado en la ficha técnica, cuando el usuario guarda el resultado, entonces el sistema marca la tela como "No Conforme" y genera una sugerencia de recalibración de moldes o cambio de partida.</li>
      </ul>
    </td>
  </tr>
</table>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US005</td>
    <td><b>Epic ID</b></td>
    <td>EP003</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">Registro y clasificación de defectos en prendas confeccionadas</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">Como auditor de calidad, quiero registrar las prendas con fallas detectadas en línea vinculándolas al lote y máquina responsable para identificar rápidamente la causa del defecto.</td>
    </td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li><b>Escenario 1:</b> Dado que el auditor identifica una prenda con puntadas abiertas en el lote activo, cuando accede al formulario rápido de calidad, elige el tipo de defecto, la máquina asociada y la cantidad de prendas observadas; entonces el sistema descuenta las unidades de las prendas aprobadas y actualiza la tasa de defectos del lote.</li>
        <li><b>Escenario 2:</b> Dado que se detecta una mancha de origen impreciso, cuando el auditor registra la prenda marcando "Origen Desconocido", entonces el registro se guarda con la etiqueta "En Evaluación" para su posterior revisión conjunta con la jefatura de planta.</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US006</td>
    <td><b>Epic ID</b></td>
    <td>EP003</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">Destino de prendas defectuosas a reproceso o merma definitiva</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">Como supervisor de calidad, quiero dictaminar si una prenda observada puede ser reparada o quede para descarte para cuantificar los costos de corrección y ajustar la liquidación final del lote.</td>
    </td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li><b>Escenario 1:</b> Dado que la prenda tiene una costura remediable, cuando el supervisor pulsa "Enviar a Reproceso" e indica la estación de corrección asignada, entonces la prenda se agrega a la cola de prendas pendientes de ajuste sin darse de baja del inventario final proyectado.</li>
        <li><b>Escenario 2:</b> Dado que la tela sufrió un rasgado irreparable durante la costura, cuando el supervisor pulsa "Descartar", entonces el sistema descuenta la prenda del saldo comercializable del lote y suma el costo a las pérdidas acumuladas por merma.</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US007</td>
    <td><b>Epic ID</b></td>
    <td>EP004</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">Reporte de averías e interrupción operativa de máquinas de confección</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">Como supervisor de producción, quiero registrar la detención de una máquina de coser especificando el código de máquina, tipo de falla o avería y hora de paro para solicitar asistencia técnica inmediata.</td>
    </td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li><b>Escenario 1:</b> Dado que una máquina remalladora presenta rotura de aguja o traba mecánica, cuando el supervisor ingresa su código, selecciona el tipo de falla y pulsa "Registrar Parada", entonces el sistema cambia el estado de la máquina a "En Mantenimiento", activa el contador de tiempo muerto y notifica al área técnica.</li>
        <li><b>Escenario 2:</b> Dado que el supervisor intenta registrar la detención sin especificar el origen de la avería, cuando pulsa guardar, el sistema impide la acción y exige seleccionar al menos una categoría de falla técnica.</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US008</td>
    <td><b>Epic ID</b></td>
    <td>EP004</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">Reanudación de operatividad y registro del tiempo muerto de máquina</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">Como supervisor, quiero registrar la reanudación de actividades de una máquina intervenida indicando las piezas sustituidas o calibradas para calcular el tiempo muerto acumulado y evaluar el rendimiento mecánico.</td>
    </td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li><b>Escenario 1:</b> Dado que el técnico concluye la calibración y prueba la máquina, cuando el supervisor presiona "Reanudar Operación" e ingresa la solución aplicada, entonces el sistema detiene el temporizador, guarda los minutos de inactividad registrados y restablece la máquina al estado "Operativa".</li>
        <li><b>Escenario 2:</b> Dado que el supervisor ingresa al detalle de una máquina recurrente en fallas, cuando solicita ver su histórico semanal, entonces el sistema lista cronológicamente todas las paradas, la causa de cada falla y el total acumulado de horas no productivas.</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US009</td>
    <td><b>Epic ID</b></td>
    <td>EP005</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">Visualización de métricas de avance y productividad diaria en Dashboard</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">Como administrador del taller o supervisor general, quiero visualizar en un panel centralizado las prendas producidas por hora, el avance de lotes y el porcentaje de cumplimiento diario para tomar decisiones operativas sin recurrir a cuadernos o conteos físicos.</td>
    <</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li><b>Escenario 1:</b> Dado que el usuario accede a la vista principal de Fabric, cuando la página carga, entonces se muestran tarjetas con indicadores actualizados: total de prendas elaboradas en el día, promedio de prendas por hora y cantidad de lotes por etapa operativa.</li>
        <li><b>Escenario 2:</b> Dado que el usuario necesita analizar el rendimiento de un lote o día anterior, cuando aplica los filtros de búsqueda correspondientes, los gráficos y contadores del dashboard se recalculan dinámicamente mostrando exclusivamente los datos seleccionados.</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US010</td>
    <td><b>Epic ID</b></td>
    <td>EP005</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">Alertas visuales de mermas y cuellos de botella</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">Como supervisor de planta, quiero recibir alertas visuales cuando la tasa de reprocesos, mermas o tiempos muertos supere los umbrales de tolerancia para intervenir a tiempo en la línea productiva.</td>
    </td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li><b>Escenario 1:</b> Dado que el porcentaje acumulado de prendas defectuosas en un lote supera el umbral máximo tolerado (ej. mayor al 5%), cuando se registra una nueva prenda defectuosa, entonces el sistema cambia el indicador del lote a color rojo y despliega un banner de alerta crítica en el panel.</li>
        <li><b>Escenario 2:</b> Dado que un lote mantiene una tasa de reprocesos controlada (menor al 2%), cuando se consulta su ficha en el panel de control, entonces se visualiza con distintivo verde indicando flujo de confección óptimo.</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US011</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US012</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US013</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US014</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US015</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US016</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US017</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US018</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US019</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US020</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US021</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US022</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US023</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US024</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US025</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US026</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US027</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US028</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US029</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US030</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US031</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US032</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US033</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US034</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US035</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US036</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US037</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US038</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US039</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US040</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US041</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US042</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US043</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US044</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US045</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US046</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US047</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US048</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US049</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>

<table>

  <tr>
    <td><b>User Story ID</b></td>
    <td>US050</td>
    <td><b>Epic ID</b></td>
    <td>[Completar]</td>
  </tr>
  <tr>
    <td><b>Título</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td><b>Descripción</b></td>
    <td colspan="3">[Completar]</td>
  </tr>
  <tr>
    <td colspan="4">
      <b>Criterios de Aceptación:</b>
      <ul>
        <li>Dado que... [Completar]</li>
        <li>Cuando... [Completar]</li>
        <li>Entonces... [Completar]</li>
      </ul>
    </td>
  </tr>
  
</table>
