<?php

/*
 * Cyber Dynamics
 * Banking Guide Project: Seteyo
 * Module: Main
 */

class Db {

    private static $instance = NULL;

    private function __construct() {
        
    }

    private function __clone() {
        
    }

    public static function getDbInstance() {
        if (!isset(self::$instance)) {
            $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
            self::$instance = new PDO('mysql:host=localhost; dbname=bankingguide', 'root', 's3x@9t', $pdo_options);
        }
        return self::$instance;
    }

//An alternative of PDO database Connection
    public static function getDb() {
        try {
            $conn = new PDO('mysql:host=localhost; dbname=bankingguide', 'root', 's3x@9t');
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            /*
              $data = $conn->query('SELECT * FROM posts WHERE id = 1');
              foreach ($data as $row){
              print_r($row);
              }
             */
        } catch (PDOException $e) {
            echo 'Error: ' . $e->getMessage();
        }
    }

}

?>
