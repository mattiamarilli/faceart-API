<?php


class PaintingsController {

    // GET /paintings
    static function getPaintings($req, $res, $service, $app){

        $stm = $app->db->prepare('SELECT * FROM paintings');
        $stm->execute();
        $dbres = $stm->fetchAll(PDO::FETCH_ASSOC);

        $data = array_map(function($entry){
            return [
                'id_painting' => +$entry['id_painting'],
                'name' => $entry['name'],
                'year' => $entry['year'],
                'location' => $entry['location'],
                'imgurl' => $entry['imgurl'],
                'infourl' => $entry['infourl'],
                'description' => $entry['description'],
            ];
        }, $dbres);
        $res->json($data);

    }

    //POST /getPaintingsById
    static function getPaintingById($req, $res, $service, $app){

        $parameters = $req->body();
		$parameters = json_decode($parameters, true);
		$stm = $app->db->prepare('SELECT * FROM paintings INNER JOIN authors ON paintings.id_author = authors.id_author WHERE id_painting = :id_painting');
		$stm->bindValue(":id_painting", $parameters['id_painting']);
		$stm->execute();
        $entry = $stm->fetch(PDO::FETCH_ASSOC);
        
        $res->json([
            'id_painting' => +$entry['id_painting'],
            'name' => $entry['name'],
            'year' => $entry['year'],
            'location' => $entry['location'],
            'imgurl' => $entry['imgurl'],
            'infourl' => $entry['infourl'],
            'description' => $entry['description'],
            'id_author' => +$entry['id_author'],
            'name_author' => $entry['name_author'],
            'infourl_author' => $entry['infourl_author'],

        ]);

    }

    //POST //tips
    static function getTips($req, $res, $service, $app){

        $parameters = $req->body();
		$parameters = json_decode($parameters, true);
		$stm = $app->db->prepare('SELECT tips.id_tip, description FROM tips INNER JOIN tips_paintings ON tips.id_tip = tips_paintings.id_tip WHERE id_painting = 1');
		$stm->bindValue(":id_painting", $parameters['id_painting']);
		$stm->execute();
        $dbres = $stm->fetchAll(PDO::FETCH_ASSOC);

        $data = array_map(function($entry){
            return [
                'id_tip' => +$entry['id_tip'],
                'description' => $entry['description'],
            ];
        }, $dbres);
        $res->json($data);

    }


    
}

?>