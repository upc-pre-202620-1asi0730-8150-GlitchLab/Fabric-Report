## 4.2. Information Arquitechture

En esta sección planteamos las decisiones y el sustento que dirigen la manera como se organizará el contenido en las experiencias web de Fabric, incluyendo la Landing Page y la Aplicación Web. Estas propuestas están orientadas a que los visitantes y usuarios se adapten con facilidad a la funcionalidad del producto y puedan encontrar todo lo que necesiten sin esfuerzo.

### 4.2.1. Organization Systems

En Fabric, la información se organiza de acuerdo con los principales procesos de producción y control de calidad de los talleres textiles, permitiendo que los usuarios accedan rápidamente a la información necesaria para sus actividades:

> * Esquema Jerárquico: La aplicación dispone de un Sidebar como nivel principal de navegación, desde el cual el usuario puede acceder a los módulos Dashboard, Production Batches, Quality, Machinery y Alerts. Dentro de cada módulo se encuentran las vistas y funcionalidades específicas correspondientes.
> * Estructura por Procesos: La información se agrupa según las principales actividades operativas del taller: seguimiento de lotes de producción, control de calidad de telas y prendas, monitoreo de maquinaria y gestión de alertas.
> * Organización Cronológica: Los movimientos de los lotes, inspecciones de tela y eventos de maquinaria mantienen registros asociados a fechas y horas para conservar la trazabilidad de las operaciones.

### 4.2.2. Labeling Systems

El sistema de etiquetado utiliza terminología relacionada directamente con las actividades realizadas dentro de los talleres textiles, manteniendo consistencia entre los diferentes módulos de Fabric:

> * Etiquetas de Navegación: Términos directos como "Dashboard", "Production Batches", "Quality", "Machinery" y "Alerts".
> * Etiquetas de Producción: Términos como "Batch ID", "Garment Model", "Projected Quantity", "Current Stage", "Processed Quantity", "Progress" y "Delivery Date".
> * Etiquetas de Calidad: Términos como "Fabric Inspections", "Garment Defects", "Inspection Result", "Defect Type", "Observed Quantity", "Rework" y "Permanent Discard".
> * Etiquetas de Estado: Estados como "Pending Cutting", "In Production", "At Risk", "Completed", "Delayed", "Available for Cutting", "Under Evaluation", "Under Maintenance" y "Operational", dependiendo del proceso correspondiente.

### 4.2.3. SEO Tags and Meta Tags

Para favorecer el posicionamiento de la Landing Page de Fabric y su relevancia en búsquedas relacionadas con la gestión de producción textil:

> * Indexado y Crawling: Uso de la etiqueta `<meta name="robots" content="index, follow">` para permitir que los motores de búsqueda rastreen e indexen el contenido público de la Landing Page.
> * Meta Title: "Fabric | Gestión y Trazabilidad para la Producción Textil".
> * Meta Description: "Plataforma web para el seguimiento de lotes, control de calidad y monitoreo operativo en talleres textiles. Centraliza la información de producción y facilita la detección de defectos, retrasos y mermas".
> * Palabras Clave: Gestión de producción textil, control de calidad textil, trazabilidad de lotes, MYPE textil Lima, seguimiento de producción, defectos textiles, gestión de talleres textiles, Fabric, GlitchLab UPC.

### 4.2.4. Searching Systems

Los sistemas de búsqueda de Fabric están diseñados para permitir que los usuarios localicen rápidamente lotes, inspecciones y registros relacionados con las operaciones del taller:

> * Búsqueda de Lotes: En "Production Batches", el usuario puede buscar directamente un lote mediante su "Batch ID".
> * Filtros de Lotes: Los registros pueden filtrarse utilizando criterios como "Status", "Date" y "Garment Model", permitiendo combinar diferentes criterios de búsqueda.
> * Filtros de Inspecciones: En el módulo "Quality", los registros históricos de inspecciones pueden consultarse utilizando criterios como rollo, proveedor, fecha y resultado de inspección.
> * Filtros Operativos: Los registros relacionados con defectos pueden segmentarse por lote, máquina, tipo de defecto o periodo, según la información disponible.
> * Visualización de Resultados: Cuando ningún registro coincide con los criterios establecidos, el sistema muestra un estado de "No results found", permitiendo al usuario modificar los filtros utilizados.

### 4.2.5. Navigation Systems

El sistema de navegación de Fabric permite que el usuario mantenga el control sobre su ubicación dentro de la plataforma y acceda directamente a los diferentes procesos disponibles:

> * Navegación Global de la Landing Page (Header): Barra superior con acceso a las secciones "Home", "Problem", "Solution", "Benefits" y "Features", además de las acciones "Log In" y "Request a Demo".
> * Navegación Principal de la Aplicación (Sidebar): Menú lateral persistente con acceso directo a "Dashboard", "Production Batches", "Quality", "Machinery" y "Alerts".
> * Navegación Local: Algunos módulos incorporan opciones internas para organizar sus funcionalidades. Por ejemplo, "Quality" permite diferenciar entre "Fabric Inspections" y "Garment Defects".
> * Navegación Contextual: Las vistas de registro y detalle incluyen opciones como "Back to Production Batches" o "Back to Fabric Inspections", permitiendo regresar a la vista principal del módulo correspondiente.
> * Navegación de Sesión: El Sidebar incluye el perfil del usuario y las opciones "View Profile" y "Log Out". Al cerrar sesión, el sistema redirige al usuario hacia la vista de inicio de sesión.
> * Navegación de Salida (Footer): La Landing Page incluye accesos complementarios como "Terms & Conditions" e información relacionada con Fabric y GlitchLab.

