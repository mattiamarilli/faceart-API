<?php


class PaintingsController {

    // GET /paintings
    static function getPaintings($req, $res, $service, $app){

        $stm = $app->db->prepare('SELECT * FROM paintings');
        $stm->execute();
        $dbres = $stm->fetchAll(PDO::FETCH_ASSOC);

        $data = array_map(function($entry){
            return [
                'id' => +$entry['id_painting'],
                'name' => $entry['name'],
                'year' => $entry['year'],
                'location' => $entry['location'],
                'imageurl' => $entry['imgurl'],
                'infourl' => $entry['infourl'],
                'description' => $entry['description'],
            ];
        }, $dbres);
        $res->json($data);

    }

    static function getPaintingById($req, $res, $service, $app){
        $parameters = $req->body();
		$parameters = json_decode($parameters, true);
		$stm = $app->db->prepare('SELECT * FROM paintings WHERE id_painting = :id_painting');
		$stm->bindValue(":id_painting", $parameters['id_painting']);
		$stm->execute();
        $dbres = $stm->fetchAll(PDO::FETCH_ASSOC);
        echo($parameters['id_painting']);

        $data = array_map(function($entry){
            return [
                'id' => +$entry['id_painting'],
                'name' => $entry['name'],
                'year' => $entry['year'],
                'location' => $entry['location'],
                'imageurl' => $entry['imgurl'],
                'infourl' => $entry['infourl'],
                'description' => $entry['description'],
            ];
        }, $dbres);
        $res->json($data);
    }


    
}

?>