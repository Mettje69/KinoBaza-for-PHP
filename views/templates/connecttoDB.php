<?php
if (!function_exists('connectToDatabase')) {
    function connectToDatabase()
    {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "kinobaza";

        // Создаем соединение с базой данных
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Проверяем соединение
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        return $conn; // Возвращаем объект соединения
    }
}

