<?php
// Establecer la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "OmicronPersei8*";
$database = "construempleo";

$conn = new mysqli($servername, $username, $password, $database);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener los datos del formulario
$user = $_POST['username'];
$pass = $_POST['password'];

// Consultar la base de datos para verificar las credenciales
$query = "SELECT * FROM candidato WHERE user_candidato = '$user' AND password_candidato = '$pass'";
$result = $conn->query($query);

if ($result->num_rows > 0) {
    // Usuario autenticado, redireccionar a la página de bienvenida
    header("Location: welcomeemployee.html");
} else {
    // Usuario no autenticado, mostrar mensaje de error
    header("Location: failed.html");
}

// Cerrar la conexión a la base de datos
$conn->close();
?>
