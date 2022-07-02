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
                'imageurl' => $entry['imageurl'],
                'infourl' => $entry['infourl'],
                'description' => $entry['description'],
            ];
        }, $dbres);
        $res->json($data);

    }

    
}

?>