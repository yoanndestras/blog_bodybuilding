<?

$pdo = new PDO('mysql:host=localhost;dbname=blog;port=3306', 'root', 'root');
$pdo->exec('SET NAMES UTF8');


$query = $pdo->prepare
(
    "UPDATE article SET Titre = ?, Article = ?, Categorie = ?, Auteur = ? WHERE Id_article = ?"
);

$query->execute([$_POST['Titre'], $_POST['Article'], $_POST['Categorie'], $_POST['Auteur'], $_POST['Id_article']]);

header('Location: administration.phtml');

?>