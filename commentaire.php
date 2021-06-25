<?
if(isset($_POST['Commentpost']))
    {
        if (!empty($_POST['Pseudo']) and !empty($_POST['Commentaire']))
            {

            $inserercomm = $pdo->prepare
                (
                    "INSERT INTO commentaires (Pseudo, Commentaire) values ( ?, ?)"
                );

            $pseudo_saisi = ($_POST['Pseudo']);
            $comm_saisi = ($_POST['Commentaire']);

            $inserercomm -> execute(array($pseudo_saisi, $comm_saisi));

            $querycomm = $pdo->prepare
                (
                    "SELECT * from commentaires"
                );
                
            $querycomm->execute([$pseudo_saisi, $comm_saisi]);

            $commentaires = $querycomm->fetchAll();

            
            
            }
        else
        {
            echo "Tous les champs ne sont pas complétés";
        }
    }