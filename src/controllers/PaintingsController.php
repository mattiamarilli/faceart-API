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
                'nome' => $entry['name'],
            ];
        }, $dbres);
        $res->json($data);

    }

    
}

?>