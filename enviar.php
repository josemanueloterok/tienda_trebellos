<?php
// Verificar si se recibieron los datos del formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Incluir el archivo de configuración y conexión a la base de datos
    require 'config/config.php';
    require 'config/database.php';

    // Crear una instancia de la clase Database
    $db = new Database();
    $con = $db->conectar();

    // Recuperar los datos del formulario
    $nombre = $_POST['nombre'];
    $email = $_POST['correo'];
    $mensaje = $_POST['mensaje'];

    // Preparar la consulta SQL para insertar los datos en la base de datos
    $sql = $con->prepare("INSERT INTO mensajes (nombre, email, mensaje) VALUES (?, ?, ?)");

    // Ejecutar la consulta con los valores proporcionados por el formulario
    $sql->execute([$nombre, $email, $mensaje]);

    // Redireccionar a una página de éxito después de enviar el formulario
    header("Location: completado.html");
    exit;
} else {
    // Si se intenta acceder a este archivo sin enviar datos por POST, redireccionar a la página de contacto
    header("Location: contacto.php");
    exit;
}
?>
