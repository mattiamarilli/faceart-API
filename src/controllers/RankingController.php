<?php

class RankingController {
    static function getRanking($req, $res, $service, $app){

        $stm = $app->db->prepare('SELECT * FROM scores ORDER BY score DESC');
        $stm->execute();
        $dbres = $stm->fetchAll(PDO::FETCH_ASSOC);

        $data = array_map(function($entry){
            return [
                'nickname' => $entry['nickname'],
                'score' => +$entry['score']
            ];
        }, $dbres);
        $res->json($data);
    }

    static function setNewScore($req, $res, $service, $app){
        $parameters = $req->body();
		$paramaters = json_decode($parameters, true);
		$stm = $app->db->prepare('INSERT INTO scores (nickname, score) VALUES (:nickname, :score)');
		$stm->bindValue(":nickname", $paramaters['nickname']);
		$stm->bindValue(":score", $paramaters['score']);
	    
        if($stm->execute()){
				$res->json(["message" => "OK", "code" => 200 ]);
		}
		else{
			$res->json(["message" => "Error: score not inserted", "code" => 500 ]);
		}
    }

    static function checkNickName($req, $res, $service, $app){
        $parameters = $req->body();
		$paramaters = json_decode($parameters, true);
		$stm = $app->db->prepare('SELECT * FROM scores WHERE nickname = :nickname');
		$stm->bindValue(":nickname", $paramaters['nickname']);
        $stm->execute();
	    
        if($stm->rowCount() == 0){
				$res->json(["message" => "OK", "code" => 200 ]);
		}
		else{
			$res->json(["message" => "Error: nickname already exist", "code" => 500 ]);
		}
    }



}

?>