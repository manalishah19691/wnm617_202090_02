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








function makeUpload($file,$folder) {
   $filename = microtime(true) . "_" . $_FILES[$file]['name'];

   if(@move_uploaded_file(
      $_FILES[$file]['tmp_name'],
      $folder.$filename
   )) return ['result'=>$filename];
   else return [
      "error"=>"File Upload Failed",
      "_FILES"=>$_FILES,
      "filename"=>$filename
   ];
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

         $r = makeQuery($c,"INSERT INTO
            `track_users`
            (`firstname`,`lastname`,`username`,`email`,`status`,`about`,`password`,`date_create`,`img`)
            VALUES
            ('', '', ?, ?, '', '', md5(?), NOW(), 'https://via.placeholder.com/400/?text=USER')
            ",$p,false);

         return ["id"=>$c->lastInsertId()];

//     case "insert_user":
//          $r = makeQuery($c,"SELECT * FROM `track_users` WHERE `username` = ? OR `email` = ?",[$p[0],$p[1]]);
//          if(count($r['result'])) return ['error'=>"Username or Email already exists"];

//          $r = makeQuery($c,"INSERT INTO
//             `track_users`
//             (`name`,`username`,`email`,`password`,`img`,`date_create`)
//             VALUES
//             ('',?, ?, md5(?), 'https://via.placeholder.com/400/?text=USER', NOW())
//             ",$p,false);
//          return ["id"=>$c->lastInsertId()];




      case "insert_plant":
         $r = makeQuery($c,"INSERT INTO
            `track_plants`
            (`name`,`type`,`category`,`shape`,`pattern`,`description`,`date_create`,`img`,`user_id`)
            VALUES
            (?, ?, ?, ?, ?, ?, NOW(),'https://via.placeholder.com/400/?text=plant', ?)
            ",$p,false);
         if(isset($r['error'])) return $r;
         return ["id"=>$c->lastInsertId()];

      



      case "insert_location":
         $r = makeQuery($c,"INSERT INTO
            `track_locations`
            (`plant_id`,`lat`,`lng`,`plant_health`,`map_description`,`icon`,`date_create`,`photo`)
            VALUES
            (?, ?, ?, ?, ?,'img/map_icon.svg', NOW(),'https://via.placeholder.com/400/?text=LOCATION')
            ",$p,false);
         if(isset($r['error'])) return $r;
         return ["id"=>$c->lastInsertId()];





      // UPDATE STATEMENTS



      case "update_user":
         $r = makeQuery($c,"UPDATE
            `track_users`
            SET
               `username` = ?,
               `firstname` = ?,
               `lastname` = ?,
               `email` = ?,
               `status` = ?,
               `about` = ?
            WHERE `id` = ?
            ",$p,false);
         return ["result"=>"success"];

      




      case "update_user_image":
         $r = makeQuery($c,"UPDATE
            `track_users`
            SET
               `img` = ?
            WHERE `id` = ?
            ",$p,false);
         return ["result"=>"success"];

      

//       case "create-profile":
//       $r= makeQuery($c, "UPDATE `track_users` 
//          SET 
         
//          `firstname`=?,
//          `lastname`=?,
//          `status`=?,
//          `about`=?
//          WHERE `id` =?
//          ",$p,false);
//       return ["result"=>"success"];


//       default:
//          return ["error"=>"No Matched Type"];
         
//    }
// }






      case "update_plant": 
         $r = makeQuery($c,"UPDATE
            `track_plants`
            SET
               `name` = ?,
               `type` = ?,
               `category` = ?,
               `shape` = ?,
               `pattern` = ?,
               `description` = ?,
               `img` = ?
            WHERE `id` = ?
            ",$p,false);
                  return ["result"=>"success"];



        case "update_location":
         $r = makeQuery($c,"UPDATE
            `track_plants`
            SET
               `plant_health` = ?,
               `date_create` = ?,
               `map_description` = ?
            WHERE `id` = ?
            ",$p,false);
                  return ["result"=>"success"];





      // DELETE STATEMENTS

      case "delete_plant":
         return makeQuery($c,"DELETE FROM `track_plants` WHERE `id` = ?",$p,false);

      case "delete_location":
         return makeQuery($c,"DELETE FROM `track_locations` WHERE `id` = ?",$p,false);


      default: return ["error"=>"No Matched type"];
   }
}



     








if(!empty($_FILES)) {
   $r = makeUpload("image","../uploads/");
   die(json_encode($r));
}

$data = json_decode(file_get_contents("php://input"));


echo json_encode(
   makeStatement($data),
   JSON_NUMERIC_CHECK
);




