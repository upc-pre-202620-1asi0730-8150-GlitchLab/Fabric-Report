# Capítulo IV: Product Design

## 4.1. Style Guidelines

Un **Style Guideline** es un conjunto de reglas y recomendaciones que definen como deben presentarse, escribirse o diseñarse algo dentro de un contexto determinado, con el fin de garantizar consistencia, claridad y calidad. Esto no se limita solo a código, sino también al diseño visual, documentación o estructura de un software.

A continuación, definiremos los estándares de diseño de nuestro producto.

### 4.1.1. General Style Guidelines

 **Branding**

 La identidad de **Fabric** nace del concepto **"Trazabilidad textil inteligente"**. Buscamos proyectar una imagen de tecnología aplicada directamente a la realidad operativa del taller textil. El logo es la materialización de este concepto: la fusión del hilo (producción/artesanía) y el nodo (tecnología/centralización).

 **Principios de diseño**

 - **Tecno-Artesanal:** Los componentes visuales deben equilibrar lo orgánico (formas de la tela) con lo geométrico (precisión de los datos).

 - **Claridad Operativa:** La interfaz debe priorizar la legibilidad de métricas críticas sobre la ornamentación.

 - **Cercanía:** Reflejar la realidad de las MYPE textiles de Gamarra en la presentación de la información.

 <br>
 <div align="center">
    <img src="../assets/logos/fabric-logo.png" alt="logo de fabric" width="200">
 </div>
 <br>


**Tipogragía**

La tipografía de **Fabric** con tres condiciones: ser legible en pantallas pequeñas y en la planta **(donde hay poca luz y mucho ruido visual)**, transmitir estructura y orden, y ser cercana sin ser informal **(nos dirigimos a supervisores y operarios, no a gerentes corporativos)**. 

**Fuentes elegidas**

- **Poppins SemiBold:** para titulos, encabezados y números grandes de indicadores. Es un tipo de letra geométrica, redonda, moderna, con buena presencia visual. Se puede leer bien en tamaños grandes y no se confunden con tipografías genéricas de software.

- **Inter Regular:** para cuerpo de texto, formularios, tablas y menús. Nuestro producto esta diseñado para ser usado muchas horas al dia, por lo que este tipo de letra es la idea. Es una tipografía que no cansa la vista y se puede leer en tamaños pequeños o en poca luz. Además, Fabric maneja datos, tablas, formularios y estados que deben ser claros de un vistazo, y Inter Regular tiene letras rectas y bien definidas que evitan confusiones entre caracteres parecidos.

- **JetBrains Mono:** para códigos de lote, IDs, fechas y cifras técnicas. Es un tipo de letra monoespaciada: todos los caracteres ocupan el mismo ancho. Eso permite alinear bien los números en tablas, códigos de lote y fechas, y además evita confusiones entre caracteres parecidos como el 0 y la O, o el 1 y la l. Por eso se usa solo para códigos, IDs y cifras técnicas, donde la precisión es clave.
<br>
<br>

<div align="center">
    <img src="../assets/landing_page/tipo-letra.png" alt="tipo de letra" width="550">
</div>
<br>

**Colores**

**Colores principales**

El color verde oliva `(#4B5320)` es el color principal de Fabric.Se eligió porque es un tono sobrio, industrial y fácil de leer en pantalla, y porque no se asocia a ninguna marca tecnológica conocida. Se usa en el logotipo, en los encabezados y en los botones principales.

El beige arena `(#C9A87C)` es el color secundario. Representa la tela cruda y el trabajo del taller. Se usa en fondos suaves, íconos secundarios y detalles del logo.

**Colores funcionales**

Estos colores no forman parte de la identidad de marca, pero sí del lenguaje visual del producto. Se usan exclusivamente para comunicar estados operativos:

- **Verde éxito (#27AE60)** - lote completado, inspección aprobada, indicador en rango.

- **Amarillo alerta (#F2C94C)** - lote en riesgo, advertencia, desviación leve.

- **Rojo error (#EB5757)** - lote retrasado, defecto crítico, incidencia grave.

<br>

<div align="center">
    <img src="../assets/landing_page/color-funcional.png" alt="colores funcionales" width="500">
</div>

<br>

**Colores neutros**

Los colores neutros son la base visual de toda la interfaz de Fabric. Se eligieron tonos con una ligera inclinación al frío (levemente azulados) para dar sensación de orden, limpieza y calma visual, algo importante en una herramienta que se usa durante toda la jornada laboral en planta.

<div align="center">
    <img src="../assets/landing_page/neutral-colors.png" alt="colores funcionales" width="300">
</div>
<br>

- **White (#FFFFFF):**  Es el fondo por defecto de la aplicación. Se usa en pantallas principales y como color de texto cuando va sobre fondos oscuros. No se debe usar en bloques grandes dentro de tarjetas; para eso está el color **Platinum**.

- **Platinum (#F5F7FA):** Se usa en tarjetas, filas alternas de tabla, paneles laterales y cualquier bloque que necesite diferenciarse del fondo principal sin usar bordes. Será el color más usado después del blanco.

- **Alabaster Grey (#EAEAEA):** Se usa para separadores finos entre secciones, fondos de estado inactivo (botones deshabilitados) y zonas donde se necesita un contraste muy suave.

- **Cool Steel (#8892A0):** Se usa para textos de apoyo, placeholders, íconos inactivos, bordes de inputs, líneas divisorias.

- **Carbon Black (#1A1A1A):** Es el color del texto principal y los títulos. Se eligió en lugar del **Negro Puro (#000000)** porque reduce la fatiga visual en pantallas y genera un contraste más natural y menos agresivo.

<br>

**Espaciado**

Nos regimos por un espaciado funcional y no decorativo. Como la aplicación web se usará en planta y por muchas horas continuas, entonces el espaciado debe separar sin confundir, ordenar la información sin saturar la vista del usuario.


**Sistema base**

En la aplicación usamos un sistema de espaciado basado en múltiplos de **8px**. Es el estándar más usado en diseño de interfaces porque facilita la consistencia y evita medidas arbitrarias.

| Token | Valor | Uso |
|---|---|---|
| `xs` | 4 px | Espacio entre ícono y texto |
| `sm` | 8 px | Padding interno de botones pequeños |
| `md` | 16 px | Separación entre campos de formulario |
| `lg` | 24 px | Padding de tarjetas, separación entre secciones |
| `xl` | 32 px | Separación entre bloques grandes |
| `2xl` | 48 px | Márgenes de página |
| `3xl` | 64 px | Separación entre secciones principales |

**Como usar**

- Todo espaciado debe ser múltiplo de **8 px** (excepto detalles como bordes o íconos inline, que pueden ser de 4 px).
- El espacio entre elementos relacionados debe ser menor que el espacio entre grupos distintos. 
- Los formularios usan `md` entre campos y `lg` entre secciones.
- Las tarjetas usan `lg` de padding interno.
- Las tablas usan `sm` entre celdas y `md` entre filas.
- Nunca usar espaciados aleatorios (13 px, 17 px, 22 px). Siempre múltiplos de 8.

**Tono de comunicación**

El tono de Fabric es cercano, claro y directo. Hablamos como uno más del taller, no como un sistema corporativo. El usuario no es **"el cliente"** ni **"el usuario final"**: es el supervisor, el encargado de calidad, el operario. Personas reales, con prisa, en un entorno ruidoso, que necesitan respuestas rápidas.

> Principios de comunicación:
> - **Claridad antes que simpatia:** Decimos "Registrar lote" en vez de "Registremos tu lote".
> - **Frases cortas:** Maximo 12 palabras por oración en la interfaz.
> - **Tuteo:** "Tus lotes" en vez de "Sus lotes".
> - **Verbos imperativos para acciones:** "Guardar", "Crear lote", "Ver historial".
> - **Consistencia total:** Si el boton dice "Crea lote", el mensaje de éxito dice "Lote creado" y no "Lote registrado" o "Lote guardado".




### 4.1.2. Web Style Guidelines

A continuación definiremos los estándares de diseño visual y estructura de la Aplicación Web. 

**Tipografía**

Como mencionamos anteriormente en **General Style Guidelines**, la tipografía que se usa para la interfaz de Fabric será **Poppins SemiBold** para títulos y subtítulos porque tiene presencia y se lee bien en tamaños grandes, **Inter Regular** para el texto, formulario, tablas y menús porque tiene una buena legibilidad en textos pequeños, por último usaremos **JetBrains Mono** para los códigos de lote, IDs, fechas y cifras técnicas porque al ser monoespaciada alinea los números en columnas y evita confusiones entre caracteres parecidos como el `0` y `o`.

En la siguiente tabla se especificará a detalle el correcto uso de cada tipografía y su propósito.

| Uso | Fuente | Peso| 
|-----------|--------|-------------|
|Títulos |   Poppins | SemiBold (600)|
|Subtítulos  | Poppins | Medium (500)|
|Texto |  Inter | Regular (400)|
|Énfasis en texto | Inter | SemiBold (600)|
|Datos numéricos/IDs | JetBrains Mono | Regular (400)|

Usamos esta tipografía porque ofrece facilidad de leer la interfaz. En Fabric, el usuario trabaja muchas horas frente a la pantalla, y una tipografía mal elegida cansa la vista y genera errores de lectura.

**Paleta de colores**

 La paleta de colores que usaremos en la interfaz está dividida en tres grupos con funciones distintas. Los colores de marca (verde oliva y beige arena) dan identidad y evocan el taller textil; los colores funcionales (verde, amarillo, rojo) comunican estados operativos de un vistazo, sin que el usuario tenga que leer; y los colores neutros sostienen toda la interfaz, desde los fondos hasta los textos, con una ligera inclinación al frío para dar sensación de orden y limpieza.

 **Colores de marca**

 <div align="center">
    <img src="../assets/landing_page/main-color.png" alt="color identidad" width="380">
</div>

<br>

| Color | HEX | Uso |
|---|---|---|
| Verde oliva | `#4B5320` | Logo, encabezados, botones primarios |
| Beige arena | `#C9A87C` | Acentos, íconos secundarios |

<br>

**Colores funcionales**

<div align="center">
    <img src="../assets/landing_page/funcion.png" alt="color identidad" width="350">
</div>

<br>

| Color | HEX | Uso |
|---|---|---|
| Verde éxito | `#27AE60` | Lote completado, inspección aprobada |
| Amarillo alerta | `#F2C94C` | Lote en riesgo |
| Rojo error | `#EB5757` | Cancelar, defectos críticos |

<br>

**Colores neutros**

<div align="center">
    <img src="../assets/landing_page/neutral-colors.png" alt="color identidad" width="350">
</div>

<br>

| Color | HEX | Uso |
|---|---|---|
| Blanco | `#FFFFFF` | Fondos principales |
| Platinum | `#F5F7FA` | Fondos alternos, tarjetas |
| Alabaster Grey | `#EAEAEA` | Separadores, estados inactivos |
| Cool Steel | `#8892A0` | Texto secundario, bordes |
| Carbon Black | `#1A1A1A` | Texto principal |

<br>

**Grid y Layout**

El layout de Fabric se construye sobre una grilla de 12 columnas porque permite dividir el espacio en mitades, tercios, cuartos y sextos sin cálculos complicados. Todo el contenido se alinea a esa grilla, con un ancho máximo de 1280 px para que las líneas de texto no se vuelvan incómodas de leer en pantallas muy anchas, y márgenes laterales que se adaptan al tamaño del dispositivo. Esto garantiza que una misma pantalla se vea ordenada en un celular, en una tablet y en un monitor grande, sin que el equipo tenga que inventar medidas nuevas cada vez.

**Grilla Base**

| Elemento  | Valor  |
|----|---|
|  Columnas| 12|
| Ancho Máximo | 1280px|
|Espacio entre columnas | 24 px (`lg`)
|  Margen lateral desktop  |  48 px (`2xl`) |
| Margen lateral tablet  | 32 px (`xl`) |
|  Margen lateral movil|   16 px (`md`)|

<br>

**Breakpoints**

|  Token |  Ancho   |  Dispositivo  |  Columnas activas |
|-------|-------|----|---|
|  `sm`|  640 px  | Movil horizontal  |   4  |
| `md`  | 768 px  | Tablet vertical  |    8 |
| `lg`  | 1024 px  |  Laptop  |  12 |
| `xl`  | 1280 px  | Desktop  |  12 |
| `2xl`  | 1536 px  | Desktop grande  | 12  |

<br>


**Distribucion de columnas**

| Uso | Columnas | Resultado visual |
|---|---|---|
| Contenido principal | 8 | Ocupa dos tercios del ancho |
| Panel lateral | 4 | Ocupa un tercio del ancho |
| Tres tarjetas | 4 + 4 + 4 | Tres bloques iguales |
| Cuatro tarjetas | 3 + 3 + 3 + 3 | Cuatro bloques iguales |
| Contenido centrado | 6 | Con 3 columnas de margen a cada lado |
| Formulario | 6 a 8 | Centrado, sin estirarse demasiado |
| Dashboard | 12 | Ocupa todo el ancho |
| Login | 4 | Tarjeta centrada y compacta |

<br>

**Componentes UI**

Estas son las piezas reutilizables con las que se construye toda la interfaz de **Fabric**. Cada uno está definido con sus variantes, estados, tokens aplicados y reglas de uso, para que cualquier miembro del equipo pueda construir pantallas nuevas sin reinventar nada ni romper la coherencia visual. Todos los componentes consumen los tokens definidos en el general style guideline (colores, tipografía, espaciado).

**1. Botones**

En la aplicación web hay cinco tipos de botón, cada uno con un rol definido, y todos comparten los mismos estados (hover, focus, activo, deshabilitado) para que el usuario sepa en todo momento que la interfaz está respondiendo. Los CTA importantes siempre usan el verde oliva como color principal, porque es el color de la marca y el que el usuario aprende a reconocer como "acción principal".

| Tipo | Fondo | Texto | Uso |
|---|---|---|---|
| Primario | `#4B5320` | Blanco | Acción principal |
| Secundario | Borde `#4B5320` | `#4B5320` | Acción alternativa |
| Texto | Sin fondo | `#4B5320` | Acción terciaria |
| Peligro | `#EB5757` | Blanco | Eliminar, cancelar |
| Deshabilitado | `#EAEAEA` | `#8892A0` | No disponible |

<br>

**Estados:**

| Estado | Comportamiento |
|---|---|
| Normal | Color base |
| Hover | Oscurecer 10% |
| Focus | Borde 2 px `#C9A87C` |
| Active | Oscurecer 15% |
| Disabled | 40% de opacidad |

<br>

**Tokens aplicados:**

| Propiedad | Token | Valor |
|---|---|---|
| Padding horizontal | `lg` | 24 px |
| Padding vertical | `sm` | 8 px |
| Radio de borde | ninguno | 8 px |
| Tipografía | ninguno | Inter SemiBold 14 px |