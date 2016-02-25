<?php

    function connect()
    {
        global $pdo;
        $pdo = new PDO("mysql:host=46.101.117.214;dbname=Complex-Systems-Design", "root", "yxdxpFwfAA");
    }

    function get_actors_by_last_name($letter)
    {
        // SELECT actor_id, first_name, last_name FROM actor
        global $pdo;

        $stmt = $pdo->prepare("SELECT
            actor_id, first_name, last_name
            FROM actor
            WHERE last_name LIKE :letter
            LIMIT 50
            ");

        $stmt->execute(array(":letter" => $letter . "%"));

        return $stmt->fetchAll( PDO::FETCH_OBJ );

    }



    function get_actor_info($actor_id) {
        global $pdo;

        $stmt = $pdo->prepare("
            SELECT film_info, first_name, last_name
            FROM actor_info
            WHERE actor_id LIKE :actor_id
            LIMIT 50
        ");

        $stmt->execute(array("actor_id" => $actor_id));

        return $stmt->fetch( PDO::FETCH_OBJ);
    }


 ?>
