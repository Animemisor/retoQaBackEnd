<<<<<<< HEAD
# Reto QA Backend - Automatización con Karate DSL

## 📌 Descripción
Este proyecto contiene la automatización de pruebas para la API de usuarios de ServeRest utilizando Karate DSL. Se implementan pruebas para validar las operaciones CRUD y asegurar el correcto funcionamiento del servicio.

## 🛠️ Tecnologías utilizadas
- Java 11+
- Maven
- Karate DSL
- JUnit 5

## 📂 Estructura del proyecto

src/test/java/
src/test/resources/
features/
usuarios/
usuarios.feature
usuarios-crud.feature
helpers/
data-generator.js
schemas/
usuario-schema.json


## ⚙️ Configuración
1. Clonar el repositorio:
git clone https://github.com/Animemisor/retoQaBackEnd.git


2. Ingresar al proyecto:
cd retoQaBackEnd


3. Asegurarse de tener instalado:
- Java JDK 11 o superior  
- Maven 3.6 o superior  
- Visual Studio Code (opcional)

### 🔌 Extensiones recomendadas en Visual Studio Code

- Extension Pack for Java
- Karate Runner
- REST Client (opcional)
- Cucumber (Gherkin) Full Support

### 🔍 Verificar instalaciones

Ejecutar en consola:
java -version
mvn -version

## ▶️ Ejecución de pruebas
Ejecutar el siguiente comando:
mvn clean test


## 📊 Reportes
Después de la ejecución, el reporte se genera en:
target/karate-reports/karate-summary.html

Abrir el archivo en el navegador para ver el detalle de los tests.

## ✅ Cobertura
Se implementaron pruebas para:

- GET /usuarios → listar usuarios
- POST /usuarios → crear usuario
- GET /usuarios/{id} → obtener usuario
- PUT /usuarios/{id} → actualizar usuario
- DELETE /usuarios/{id} → eliminar usuario

Incluyendo:
- Casos positivos
- Casos negativos (usuario inexistente)

## 📌 Notas
- Se utilizan datos dinámicos para evitar conflictos en la creación de usuarios.
- Se validan las respuestas mediante schemas JSON.



## 🧠 Estrategia de Automatización

Se utilizó Karate DSL para automatizar pruebas de API debido a su facilidad para integrar validaciones, ejecución y reporting en una sola herramienta.

### 🔹 Enfoque
Se diseñó una suite enfocada en validar el comportamiento de la API de usuarios mediante pruebas de tipo funcional cubriendo operaciones CRUD.

### 🔹 Patrones utilizados

- **Reutilización de escenarios (call):**
  Se implementó un feature (`usuarios-crud.feature`) que encapsula la creación de usuarios, permitiendo reutilizarlo en múltiples escenarios.

- **Separación de responsabilidades:**
  - Features → lógica de pruebas
  - Helpers → generación de datos y schemas

- **Generación dinámica de datos:**
  Se creó un `data-generator.js` para evitar duplicidad de usuarios y hacer los tests independientes.

- **Validación de contratos:**
  Se utilizaron schemas JSON para validar la estructura de las respuestas de la API.

- **Tests resilientes:**
  Se priorizó validar códigos de estado y estructuras en lugar de mensajes exactos, evitando falsos negativos por cambios menores en la API.

### 🔹 Beneficios del enfoque
- Escalabilidad del proyecto
- Bajo acoplamiento entre pruebas
- Fácil mantenimiento
- Mayor estabilidad en la ejecución de tests
=======
# retoQaBackEnd
Pruebas automatizadas para la API de Usuarios de ServeRest  (https://serverest.dev/) utilizando Karate DSL.
>>>>>>> 356e8ee34093d6b40e25301532488dcb4a041212
