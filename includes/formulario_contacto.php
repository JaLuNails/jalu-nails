 <?php

 //CONEXIÓN A BASE DE DATOS EN LOCAL HOST
    // include 'dbconnection.php';

    // $nombre_completo = $_POST['nombre_completo'];
    // $email = $_POST['email'];
    // $asunto = $_POST['asunto'];
    // $mensaje = $_POST['mensaje'];

    // $query = "INSERT INTO formulario_contacto(nombre_completo,email,asunto,mensaje) 
    //           VALUES('$nombre_completo','$email','$asunto','$mensaje')";
    
    // $ejecutar = mysqli_query($con, $query);

    // if($ejecutar){
    //     echo '
    //         <script>
    //             alert("¡Mensaje enviado exitosamente!");
    //             window.location = "../index.php";
    //         </script>
    //     ';
    // }

//ENVIAR MEDIANTE GMAIL USANDO SERVIDOR
if (isset($_POST['enviar'])){
    if(!empty($_POST['nombre_completo'] && !empty($_POST['email']) && !empty($_POST['asunto']) && !
        empty($_POST['mensaje']))){
        $nombre_completo = $_POST['nombre_completo'];
        $email = $_POST['email'];
        $asunto= $_POST['asunto'];
        $mensaje = $_POST['mensaje'];
        $header = "From: jalu.nails1@gmail.com" . "\r\n";
        $header .= "Reply-to: jalu.nails1@gmail.com" . "\r\n";
        $header .= "X-Mailer: PHP/". phpversion();
        $mail = @mail($email,$asunto,$mensaje,$header);
        
        if($mail){
                echo '
                    <script>
                        alert("¡Mensaje enviado exitosamente!");
                        window.location = "../index.php";
                    </script>
                ';
        }
    }
}
?>



