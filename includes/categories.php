<?php

class Category
{
    public function fetch_all()
    {
        global $pdo;

        $query = $pdo->prepare("SELECT * FROM categories");
        $query->execute();

        return $query->fetchAll();
    }

    public function fetch_data($category_id)
    {
        global $pdo;

        $query = $pdo->prepare("SELECT * FROM categories WHERE category_id = ?");
        $query->bindValue(1, $category_id);
        $query->execute();

        return $query->fetch();
    }
}

?>
