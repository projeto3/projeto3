<?php
$dsn = 'mysql:dbname=pepiline_devops;host=mysql-local;port=3306';
$user = 'docker';
$password = 'docker';
try {
    $pdo = new PDO($dsn, $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $result = $pdo->query("SHOW TABLES LIKE 'contatos'");
    $table = $result->fetchAll();
    if (!count($table)) {
        $pdo->exec(
            "CREATE TABLE contatos(\n" .
            "    id INT AUTO_INCREMENT NOT NULL,\n" .
            "    firstName VARCHAR(250) NOT NULL,\n" .
            "    lastName VARCHAR(250) NOT NULL,\n" .
            "    email VARCHAR(250) NOT NULL,\n" .
            "    PRIMARY KEY (id)\n" .
            ")");
    }
    $statement = $pdo->prepare("INSERT INTO contatos (firstName, lastName, email) VALUES (:firstName, :lastName, :email)");
    $statement->bindParam(':firstName', $firstName);
    $statement->bindParam(':lastName', $lastName);
    $statement->bindParam(':email', $email);
    // insert a row
    $firstName = "Admin";
    $lastName = "Admin";
    $email = "admin@email.com";
    $statement->execute();
    // insert another row
    $firstName = "Mary";
    $lastName = "Moe";
    $email = "mary@email.com";
    $statement->execute();
    // insert another row
    $firstName = "Julie";
    $lastName = "Dooley";
    $email = "julie@email.com";
    $statement->execute();
    echo '<pre>',
        json_encode(
            $pdo->query('SELECT id, firstName, lastName, email FROM contatos')->fetchAll(PDO::FETCH_ASSOC),
                JSON_PRETTY_PRINT
        );
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}
