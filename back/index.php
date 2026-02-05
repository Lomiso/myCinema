<?php 
require_once("./api.php");

$urlt = $_GET ['action'] ?? ''; // Récupération du paramètre d'URL action indiquant la route API
 $url = explode("/", filter_var($_GET['action'],FILTER_SANITIZE_URL));
switch ($url) {
    case 'list_movies':
//$controller = new MovieController () ;
        echo "oui sa marche";
        $controller -> list () ; // Appel de la méthode list du MovieController
    break ;
    case 'add_room':
//$roomcontroller = new RoomController () ;
        echo "oui sa marche";
        $roomcontroller -> list () ; // Appel de la méthode list du MovieController
    break ;
    case 'planning_time':
//$planningcontroller = new PlanningController () ;
        echo "oui sa marche";
        $planningncontroller -> list () ; // Appel de la méthode list du MovieController
    break ;
    default :
        echo json_encode (["error" => "Action not found"]) ;
    break ;
}
