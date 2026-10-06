## 4.8. Database design
El diseño de la base de datos resulta fundamental para la construcción de Fabric, ya que establece la estructura necesaria para almacenar de manera consistente la información relacionada con las suscripciones, producción, calidad, maquinaria y generación de reportes de las MYPE textiles. Para ello, se definen las entidades persistentes, sus atributos, llaves primarias, llaves foráneas y restricciones de integridad, buscando mantener la consistencia y evitar redundancias en la información.

La persistencia se organiza de acuerdo con los Bounded Contexts definidos en el dominio de Fabric. Cada contexto mantiene las estructuras correspondientes a sus propias responsabilidades, mientras que las referencias hacia agregados pertenecientes a otros
contextos se manejan mediante sus identificadores. De esta manera, se mantiene el desacoplamiento entre los diferentes contextos y se facilita la evolución independiente de cada uno.

### 4.8.1. Database Diagrams

A continuación, se detalla el esquema relacional correspondiente a cada Bounded Context de Fabric. Se especifican las tablas principales, sus columnas, las restricciones aplicadas y las relaciones existentes entre ellas para garantizar la correcta persistencia de
la información.

#### 1. Bounded Context: Subscription Plan

Este diagrama define la persistencia de los planes comerciales disponibles para las MYPE textiles, así como las suscripciones realizadas por las compañías y los pagos asociados.

![Database](../assets/class_diagrams/database_subscription.png)

**Explicación del esquema:**

*   **Tablas:** `subscription_plan`, `subscription`, `payment`.
*   **Columnas principales:** `name`, `description`, `monthly_price`, `max_users` y `max_machines` en el plan; `company_id`, `plan_id`, `status`, `billing_cycle`, `start_date`, `next_billing_date` y `auto_renew` en la subscripción; `subscription_id`, `amount`, `status`, `payment_day` y `transaction_reference` en los pagos.
*   **Constraints o Relaciones:** Cada tabla posee su identificador `id` configurado como llave primaria (`PK`). La tabla `subscription` utiliza la llave foránea (`FK`) `plan_id` para relacionarse con `subscription_plan`, estableciendo que un plan puede estar asociado a múltiples suscripciones. Asimismo, `payment` utiliza `subscription_id` como llave foránea para relacionarse con la suscripción correspondiente, permitiendo registrar múltiples pagos para una misma suscripción. El atributo `company_id` representa la referencia hacia la compañía mediante su identificador, manteniendo la separación con otros contextos.


