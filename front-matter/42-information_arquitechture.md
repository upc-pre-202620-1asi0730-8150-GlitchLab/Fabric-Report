## 4.2. Information Arquitechture

En esta sección planteamos las decisiones y el sustento que dirigen la manera como se organizará el contenido en las experiencias web de Fabric, incluyendo la Landing Page y la Aplicación Web. Estas propuestas están orientadas a que los visitantes y usuarios se adapten con facilidad a la funcionalidad del producto y puedan encontrar todo lo que necesiten sin esfuerzo.

### 4.2.1. Organization Systems

En Fabric, la información se organiza de acuerdo con los principales procesos de producción y control de calidad de los talleres textiles. Para facilitar la comprensión y el acceso a la información, se consideran los siguientes sistemas de organización:

> * **Organización Jerárquica:** La Web Application utiliza un Sidebar como nivel principal de navegación, desde el cual el usuario puede acceder a módulos como "Dashboard", "Production Batches", "Quality", "Machinery" y "Alerts". Cada módulo agrupa las vistas y funcionalidades relacionadas con su propósito.
>
> * **Organización por Tópicos:** La información se agrupa de acuerdo con los principales procesos del taller textil. De esta manera, los contenidos relacionados con producción, calidad, maquinaria y alertas se mantienen dentro de sus respectivos módulos.
>
> * **Organización Cronológica:** Los movimientos de los lotes, inspecciones de calidad, observaciones y eventos relacionados con las máquinas se registran considerando su fecha y hora. Esto permite mantener el orden temporal de las operaciones y facilitar su trazabilidad.
>
> * **Organización Secuencial:** Se utiliza en procesos que requieren seguir una secuencia de acciones, como la creación de un lote de producción, su transición entre etapas y el registro de inspecciones. De esta manera, el usuario puede completar cada proceso siguiendo un flujo definido.
>
> * **Organización según Audiencia:** La Landing Page presenta información orientada a los principales segmentos de Fabric, especialmente supervisores de producción y encargados de calidad, mostrando los problemas, beneficios y funcionalidades relevantes para cada uno.
>
> * **Organización Matricial:** No se utiliza como sistema principal debido a que Fabric prioriza una organización jerárquica, secuencial y por tópicos, acorde con los procesos operativos de los talleres textiles.

### 4.2.2. Labeling Systems

El sistema de etiquetado de Fabric utiliza términos breves, consistentes y relacionados directamente con las actividades realizadas en los talleres textiles. Esto permite representar la información de manera sencilla y reducir posibles confusiones durante la navegación.

> * **Etiquetas de Navegación:** "Dashboard", "Production Batches", "Quality", "Machinery" y "Alerts".
>
> * **Etiquetas de Producción:** "Batch ID", "Garment Model", "Projected Quantity", "Current Stage", "Processed Quantity", "Progress" y "Delivery Date".
>
> * **Etiquetas de Calidad:** "Fabric Inspections", "Garment Defects", "Inspection Result", "Defect Type", "Observed Quantity", "Rework" y "Permanent Discard".
>
> * **Etiquetas de Estado:** "Pending Cutting", "In Production", "At Risk", "Completed", "Delayed", "Available for Cutting", "Under Evaluation", "Under Maintenance" y "Operational".
>
> * **Etiquetas de Acciones:** Se utilizan términos breves y directos para representar las principales acciones disponibles, como "Create", "Save", "Edit", "Search", "Filter", "Back", "Log In", "Log Out" y "Request a Demo".

Las etiquetas mantienen el mismo significado en las diferentes vistas de la solución para conservar la consistencia entre la Landing Page y la Web Application.

### 4.2.3. SEO Tags and Meta Tags

Para facilitar la identificación y el posicionamiento del contenido público de Fabric en motores de búsqueda, se definen SEO Tags y Meta Tags para la Landing Page y la Web Application.

#### Landing Page

| Tag | Valor |
|---|---|
| **Title** | Fabric \| Gestión y Trazabilidad para la Producción Textil |
| **Description** | Plataforma web para el seguimiento de lotes, control de calidad y monitoreo operativo en talleres textiles. |
| **Keywords** | gestión de producción textil, control de calidad textil, trazabilidad de lotes, MYPE textil Lima, seguimiento de producción, Fabric |
| **Author** | GlitchLab |
| **Robots** | index, follow |

La Landing Page utiliza `index, follow` debido a que corresponde al contenido público de Fabric y puede ser rastreado e indexado por los motores de búsqueda.

#### Web Application

| Tag | Valor |
|---|---|
| **Title** | Fabric \| Production Management |
| **Description** | Aplicación web para la gestión de lotes de producción, control de calidad, maquinaria y alertas operativas. |
| **Keywords** | production batches, quality, machinery, alerts, textile production, Fabric |
| **Author** | GlitchLab |
| **Robots** | noindex, nofollow |

Para las vistas privadas de la Web Application se utiliza `noindex, nofollow`, debido a que corresponden a funcionalidades internas destinadas a usuarios autenticados y no requieren ser indexadas por motores de búsqueda.

### 4.2.4. Searching Systems

Los sistemas de búsqueda de Fabric permiten localizar rápidamente lotes, inspecciones y registros relacionados con las operaciones del taller, reduciendo el tiempo necesario para encontrar información específica.

> * **Búsqueda de Lotes:** En "Production Batches", el usuario puede localizar un lote mediante su "Batch ID".
>
> * **Filtros de Lotes:** Los lotes pueden filtrarse mediante criterios como "Status", "Date" y "Garment Model", permitiendo delimitar los resultados de acuerdo con las necesidades del usuario.
>
> * **Filtros de Inspecciones:** En el módulo "Quality", las inspecciones pueden consultarse utilizando criterios como rollo, proveedor, fecha y resultado de inspección.
>
> * **Filtros de Defectos:** Los registros de defectos pueden consultarse considerando criterios como lote, máquina, tipo de defecto o período.
>
> * **Combinación de Criterios:** Cuando corresponde, el usuario puede utilizar más de un criterio para obtener resultados más específicos.
>
> * **Visualización de Resultados:** Cuando ningún registro coincide con los criterios establecidos, el sistema muestra el mensaje "No results found", permitiendo al usuario modificar la búsqueda o los filtros utilizados.

### 4.2.5. Navigation Systems

El sistema de navegación de Fabric está diseñado para que visitantes y usuarios puedan recorrer el contenido, reconocer su ubicación y acceder fácilmente a las diferentes secciones y funcionalidades disponibles.

> * **Navegación Global de la Landing Page:** El Header permite acceder a secciones como "Home", "Problem", "Solution", "Benefits" y "Features". También incluye las acciones "Log In" y "Request a Demo".
>
> * **Navegación Principal de la Web Application:** El Sidebar funciona como menú principal y permite acceder directamente a "Dashboard", "Production Batches", "Quality", "Machinery" y "Alerts".
>
> * **Navegación Local:** Los módulos pueden contener opciones específicas relacionadas con sus funcionalidades. Por ejemplo, "Quality" permite acceder a "Fabric Inspections" y "Garment Defects".
>
> * **Navegación Contextual:** Las vistas de registro, edición y detalle proporcionan opciones para regresar al contexto anterior, como "Back to Production Batches" o "Back to Fabric Inspections".
>
> * **Navegación Secuencial:** En procesos como la creación de lotes, transición entre etapas y registro de inspecciones, el usuario avanza siguiendo las acciones correspondientes al flujo de trabajo.
>
> * **Navegación de Sesión:** El Sidebar incluye información del usuario y opciones como "View Profile" y "Log Out". Al cerrar sesión, el usuario retorna a la vista de inicio de sesión.
>
> * **Navegación de Salida:** El Footer de la Landing Page proporciona accesos complementarios como "Terms & Conditions" e información relacionada con Fabric y GlitchLab.

