## 4.6. Domain-Driven Software Architecture

### 4.6.1. Design-Level Storming

### 4.6.2. Software Architecture Context Diagrams

El diagrama de contexto presenta a Fabric como un sistema central que interactúa con dos segmentos objetivo: supervisores de producción y encargados de calidad de MYPE textiles. Ambos acceden a la plataforma vía HTTPS para gestionar lotes, registrar inspecciones y consultar indicadores. 

<div align="center">
    <img src="../assets/domain_c4/system_context.png" alt="diagrama de contexto" witdh="500">
</div>

<br>

### 4.6.3. Software Architecture Container Diagrams

El diagrama de contenedores muestra cómo está armado **Fabric**. Tiene tres partes: **la Landing Page**, que es la página web donde se presenta el producto y se pide una demo; **la Web Application**, que es el sistema principal donde los usuarios gestionan la producción y la calidad; y la **Base de Datos**, donde se guarda toda la información. Además, Fabric se conecta con tres servicios externos: el **Sensor IoT**, que mide la temperatura y humedad del almacén; Mercado Pago, que cobra las suscripciones; y Gmail, que envía los correos.

<div align="center">
    <img src="../assets/domain_c4/container.png" alt="diagrama de contexto" witdh="500">
</div>

<br>

### 4.6.4. Software Architecture Component Diagrams

El diagrama de componentes muestra cómo está organizada la aplicación web de Fabric por dentro. Cada bounded context está agrupado y separado en tres capas: un Controller que recibe las peticiones, un Service que aplica las reglas de negocio, y un Repository que se conecta a la base de datos.

<div align="center">
    <img src="../assets/domain_c4/components.png" alt="diagrama de contexto" witdh="500">
</div>

<br>
