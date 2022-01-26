# A5 (javascript). Pokedex: Laravel + AJAX

### Pasos para la descarga y prueba de la aplicación:

1. clonar el repositorio

2. instalar las dependencias que faltan mediante el comando `composer install`

   > puede que, por problemas de compatibilidad, nos pida correr el comando `composer update`

3. crear la base de datos mediante **importanción** (se puede encontrar el fichero `.sql` en el directorio `database/sql/laravel_pokedex.sql`)

   > la base de datos se crea automáticamente a partir de la importación.

4. crear el fichero `.env` en el directorio principal del proyecto con el contenido pertinente

   > se puede utilizar el fichero `.env.example` para generar el nuevo `.env`

5. finalmente, Laravel puede pedir que se ejecute el comando `php artisan key:generate` para generar una nueva variable de entorno APP_KEY

**Para ver la vista del proyecto se ha de entrar al directorio `public`. ¡Recordad que la URL es case sensitive!**

### Agregar AJAX al desarrollo

**Error MacOS:** se ha de generar el enlace simbólico `php artisan storage:link` en la consola de XAMPP para utilizar imágenes.

1. **ajax.js**
   ```js
   /* Actualiza el campo imagen de un pokemon en la base de datos */
   function addImage() {
      // code...
   }
   ```

   **Controller**

   ```php
      public function updateImage(Request $request){
         try {
               // code...
         } catch (\Throwable $th) {
               return response()->json(array('resultado'=> 'NOK: '.$th->getMessage().' | '));
         }
      }
   ```

2. **ajax.js**
   ```js
   /* Actualiza el campo favorito de un pokemon en la base de datos */
   function updateFav(num, fav) {
      // code...
      /* 
      // Para recoger ficheros (imágenes) de un formulario y enviarlas al controlador
      // la recojo:
      var imagen = document.getElementById('pokemon_image').files[0];
      // la añado al formData:
      var formData = new FormData();
      formData.append('img', imagen);
      */
   }
   ```
   
   **Controller**

   ```php
      public function updateFav(Request $request){
         try {
               // code...
         } catch (\Throwable $th) {
               return response()->json(array('resultado'=> 'NOK: '.$th->getMessage().' | '));
         }
      }
   ```
