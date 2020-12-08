<?php


function makeConn() {
   include_once "auth.php";
   try {
      $conn = new PDO(...Auth());
      $conn->setAttribute(
         PDO::ATTR_ERRMODE,
         PDO::ERRMODE_EXCEPTION
      );
   } catch(PDOException $e) {
      die($e->getMessage());
   }
   return $conn;
}


function fetchAll($r) {
   $a = [];
   while($row = $r->fetch(PDO::FETCH_OBJ))
      $a[] = $row;
   return $a;
}


// connection, prepared statement, parameters
function makeQuery($c,$ps,$p,$makeResults=true) {
   try {
      if(count($p)) {
         $stmt = $c->prepare($ps);
         $stmt->execute($p);
      } else {
         $stmt = $c->query($ps);
      }

      $r = $makeResults ? fetchAll($stmt) : [];

      return [
         "result"=>$r
      ];

   } catch(PDOException $e) {
      return [
         "error"=>"Query Failed: ".$e->getMessage()
      ];
   }
}


function makeStatement($data) {
   $c = makeConn();
   $t = @$data->type;
   $p = @$data->params;

   switch($t) {

      case "users_all":
         return makeQuery($c,"SELECT * FROM `track_users`",[]);
      case "plants_all":
         return makeQuery($c,"SELECT * FROM `track_plants`",[]);
      case "locations_all":
         return makeQuery($c,"SELECT * FROM `track_locations`",[]);


      case "user_by_id":
         return makeQuery($c,"SELECT * FROM `track_users` WHERE `id` = ?",$p);
      case "plant_by_id":
         return makeQuery($c,"SELECT * FROM `track_plants` WHERE `id` = ?",$p);
      case "location_by_id":
         return makeQuery($c,"SELECT * FROM `track_locations` WHERE `id` = ?",$p);


      case "plants_by_user_id":
         return makeQuery($c,"SELECT * FROM `track_plants` WHERE `user_id` = ?",$p);
      case "locations_by_plant_id":
         return makeQuery($c,"SELECT * FROM `track_locations` WHERE `plant_id` = ?",$p);



      case "check_signin":
         return makeQuery($c,"SELECT * FROM `track_users` WHERE `username` = ? AND `password` = md5(?)",$p);


      case "recent_locations":
         return makeQuery($c,"SELECT * FROM
            `track_plants` a
            LEFT JOIN (
               SELECT * FROM `track_locations`
               ORDER BY `date_create` DESC
            ) l
            ON a.id = l.plant_id
            WHERE user_id = ?
            GROUP BY l.plant_id
            ",$p);

    





    case "search_plants":
         $p = ["%$p[0]%",$p[1]];
         return makeQuery($c,"SELECT * FROM
            `track_plants`
            WHERE
               `name` LIKE ?
               AND user_id = ?
            ",$p);

      case "plant_search_recent":
         $p = ["%$p[0]%",$p[1]];
         return makeQuery($c,"SELECT * FROM
            `track_plants` a
            LEFT JOIN (
               SELECT * FROM `track_locations`
               ORDER BY `date_create` DESC
            ) l
            ON a.id = l.plant_id
            WHERE 
               a.name LIKE ?
               AND a.user_id = ?
            GROUP BY l.plant_id
            ",$p);

      case "plant_filter":
         return makeQuery($c,"SELECT * FROM
            `track_plants`
            WHERE
               `$p[0]` = ?
               AND user_id = ?
            ",[$p[1],$p[2]]);



      


      // CRUD

      // INSERT

       case "insert_user":
         $r = makeQuery($c,"SELECT * FROM `track_users` WHERE `username` = ? OR `email` = ?",[$p[0],$p[1]]);
         if(count($r['result'])) return ['error'=>"Username or Email already exists"];
         if(count($r['result'])) return ['error'=>"Username or Email already exists"];

         $r = makeQuery($c,"INSERT INTO
            `track_users`
            (`username`,`email`,`password`,`img`,`date_create`)
            VALUES
            (?, ?, md5(?), 'https://via.placeholder.com/400/?text=USER', NOW())
            ",$p);
         return ["id"=>$c->lastInsertId()];


      case "insert_location":
         $r = makeQuery($c,"INSERT INTO
            `track_locations`
            (`plant_id`,`lat`,`lng`,`description`,`photo`,`icon`,`date_create`)
            VALUES
            (?, ?, ?, ?, 'https://via.placeholder.com/400/?text=LOCATION', 'https://via.placeholder.com/100/?text=ICON', NOW())
            ",$p,false);
         return ["id"=>$c->lastInsertId()];







      default: return ["error"=>"No Matched type"];

   }
}



$data = json_decode(file_get_contents("php://input"));


echo json_encode(
   makeStatement($data),
   JSON_NUMERIC_CHECK
);