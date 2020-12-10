

CREATE TABLE IF NOT EXISTS `track_users` (
`id` INT NULL,
`firstname` VARCHAR(MAX) NULL,
`lastname` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`email` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`location` VARCHAR(MAX) NULL,
`status` VARCHAR(MAX) NULL,
`about` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL
);

INSERT INTO track_users VALUES
(1,'Knapp','Hicks','user1','user1@gmail.com',md5("pass"),'Plant photographer','Fugiat culpa laborum qui nostrud enim proident pariatur pariatur incididunt. Adipisicing aliqua veniam eiusmod in duis enim in occaecat enim nostrud.','https://via.placeholder.com/400/978/fff/?text=user1','2020-08-08 10:51:55'),
(2,'Rose','Nielsen','user2','user2@gmail.com',md5("pass"),'Plant doctor','Voluptate deserunt mollit tempor commodo ullamco laboris sint labore. Velit Lorem nulla pariatur dolore aliqua cupidatat voluptate.','https://via.placeholder.com/400/771/fff/?text=user2','2020-09-05 02:39:11'),
(3,'Johanna','Abbott','user3','user3@gmail.com',md5("pass"),'Plant doctor','Reprehenderit officia tempor cillum do ipsum fugiat incididunt Lorem. Fugiat non nostrud ad velit.','https://via.placeholder.com/400/959/fff/?text=user3','2020-02-01 04:40:06'),
(4,'Kristina','Oneal','user4','user4@gmail.com',md5("pass"),'Plant doctor','Do sunt duis occaecat ad amet officia enim. Pariatur magna consequat incididunt elit aliqua laboris minim voluptate aute sunt mollit nostrud.','https://via.placeholder.com/400/816/fff/?text=user4','2020-11-24 12:31:05'),
(5,'Morrison','Simon','user5','user5@gmail.com',md5("pass"),'Plant photographer','Duis est minim velit anim nulla. Veniam aliqua non non exercitation ex.','https://via.placeholder.com/400/835/fff/?text=user5','2020-03-21 06:54:52'),
(6,'Murphy','Corine','user6','user6@gmail.com',md5("pass"),'Plant photographer','Labore officia reprehenderit culpa ut et sunt magna aute tempor reprehenderit. Eu et aliqua laboris Lorem aliquip culpa nisi ad laboris exercitation.','https://via.placeholder.com/400/854/fff/?text=user6','2020-02-13 09:39:10'),
(7,'Brittany','Herminia','user7','user7@gmail.com',md5("pass"),'Plant photographer','Occaecat quis ea aliquip eu voluptate. Elit nostrud et sit eu commodo culpa magna ea ea pariatur.','https://via.placeholder.com/400/931/fff/?text=user7','2020-03-31 01:30:37'),
(8,'Madeline','Burch','user8','user8@gmail.com',md5("pass"),'Plant photographer','Qui id nulla velit Lorem sit fugiat magna occaecat dolor quis sint ex. Lorem id cupidatat excepteur ipsum.','https://via.placeholder.com/400/731/fff/?text=user8','2020-02-21 06:22:39'),
(9,'Washington','Chasity','user9','user9@gmail.com',md5("pass"),'Plant photographer','Et aliquip ipsum Lorem nulla aliqua non irure ullamco quis occaecat cillum occaecat dolore. Culpa sunt fugiat minim tempor.','https://via.placeholder.com/400/967/fff/?text=user9','2020-09-25 09:55:30'),
(10,'Bernice','Juliana','user10','user10@gmail.com',md5("pass"),'Plant lover','Incididunt ut laborum occaecat qui nisi ad culpa fugiat Lorem consectetur. Laborum cupidatat proident minim pariatur magna culpa id aute ipsum pariatur magna ea.','https://via.placeholder.com/400/735/fff/?text=user10','2020-11-20 06:55:48');