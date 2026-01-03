# 🥗 App de Recetas y Planificador de Comidas

Una aplicación web full-stack desarrollada en PHP diseñada para ayudar a los usuarios a descubrir recetas, gestionar perfiles y organizar sus hábitos alimenticios semanales a través de un planificador interactivo.

## 📝 Descripción del Proyecto
Este proyecto es una herramienta integral para la gestión de cocina. Permite a los usuarios registrados explorar una colección de recetas, ver detalles de preparación y agendar sus comidas diarias (desayuno, almuerzo, cena o snacks) en un calendario personalizado.

## ✨ Características Principales
* **Autenticación de Usuarios:** Sistema de registro y login seguro con manejo de sesiones.
* **Planificador Semanal:** Interfaz para añadir recetas a fechas específicas y tipos de comida.
* **Detalles de Receta:** Visualización de ingredientes con cantidades, unidades e instrucciones paso a paso.
* **Panel de Usuario:** Perfil personalizado que muestra las próximas comidas programadas.
* **Catálogo Dinámico:** Página principal que carga automáticamente las recetas disponibles desde la base de datos.

## 🛠 Tecnologías Utilizadas
* **Backend:** PHP.
* **Base de Datos:** MySQL.
* **Frontend:** HTML5 y CSS3 con diseño de cuadrículas (Grid).
* **Servidor:** Compatible con entornos locales como XAMPP o WAMP.

## 🗄 Arquitectura de la Base de Datos
El proyecto utiliza una base de datos relacional llamada `recipe_app` con las siguientes tablas principales:
* `USER`: Almacena credenciales y datos de perfil.
* `RECIPE`: Contiene títulos, descripciones y rutas de imágenes de las recetas.
* `MENU`: Gestiona la lógica del planificador (relaciona usuario, receta y fecha).
* `INGREDIENT` y `RECIPE_INGREDIENT`: Maneja la relación de muchos a muchos entre platos y sus componentes.

## 🚀 Instalación y Configuración

1.  **Importar Base de Datos:**
    * Ejecuta el script `mysql databases.sql` en tu servidor MySQL para crear las tablas y el usuario de base de datos necesario.

2.  **Configuración de Conexión:**
    * Verifica que los ajustes en `connect_bd.php` coincidan con tu entorno local:
    ```php
    $host = "localhost";
    $user = "admin_recipe_app";
    $pass = "Login_system123$";
    $db   = "recipe_app";
    ```

3.  **Despliegue:**
    * Mueve los archivos al directorio raíz de tu servidor (ej. `/htdocs` en XAMPP).
    * Accede a la aplicación a través de `index.php`.

## 📂 Estructura del Proyecto
* `index.php`: Página de inicio con el catálogo de recetas

# 🥗 Recipe & Meal Planner App

A full-stack PHP web application designed to help users discover recipes, manage profiles, and organize their weekly eating habits through an interactive meal planner.

## 📝 Project Overview
This application serves as a comprehensive tool for home cooks. Users can browse a collection of recipes, view detailed preparation instructions, and schedule their meals for the week using a dedicated planning interface.

## ✨ Key Features
* **User Authentication:** Includes secure registration and login systems with session-based access control.
* **Weekly Meal Planner:** Allows users to assign specific recipes to a date and meal type (Breakfast, Lunch, Dinner, or Snack).
* **Recipe Details:** Displays specific ingredients, quantities, units, and step-by-step instructions for every dish.
* **User Dashboard:** A personalized profile page that highlights the user's upcoming scheduled meals.
* **Dynamic Discovery:** A homepage that automatically pulls and displays all available recipes from the database.

## 🛠 Tech Stack
* **Backend:** PHP.
* **Database:** MySQL.
* **Frontend:** HTML5 and CSS3 (utilizing a custom grid system).
* **Server:** Compatible with local stacks like XAMPP or WAMP.

## 🗄 Database Architecture
The project relies on a relational database named `recipe_app` consisting of several key tables:
* `USER`: Stores user credentials and profile data.
* `RECIPE`: Contains the title, description, and image paths for meals.
* `MENU`: Manages the meal planning logic (linking users, recipes, and dates).
* `INGREDIENT` & `RECIPE_INGREDIENT`: Handles the many-to-many relationship between recipes and their components.

## 🚀 Installation & Setup

1.  **Import Database:**
    * Execute the provided `mysql databases.sql` script in your MySQL environment to create the tables and the dedicated database user.

2.  **Configuration:**
    * Ensure your database connection settings in `connect_bd.php` match your local environment:
    ```php
    $host = "localhost";
    $user = "admin_recipe_app";
    $pass = "Login_system123$";
    $db   = "recipe_app";
    ```

3.  **Deployment:**
    * Move the project files to your server's root directory (e.g., `/htdocs`).
    * Access the application via `index.php`.

## 📂 Project Structure
* `index.php`: The main landing page displaying recipe cards.
* `planner.php`: The interface for adding and viewing planned meals.
* `profile.php`: The user account dashboard.
* `recipe_details.php`: Detailed view for individual recipes.
* `actions/`: Directory containing global includes like `head.php` and `foot.php`.
* `connect_bd.php`: Database connection logic.