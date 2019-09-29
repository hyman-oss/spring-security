
create table sys_permission (
    id integer generated by default as identity,
    descritpion varchar(255),
    name varchar(255),
    pid integer,
    url varchar(255), primary key (id)
)



CREATE TABLE `sys_permission_role` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `role_id` int(11) DEFAULT NULL,
    `permission_id` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`)
);
insert  into `sys_permission_role`(`id`,`role_id`,`permission_id`) values (1,2,4),(2,1,3);


CREATE TABLE `sys_role` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(10) DEFAULT '',
    PRIMARY KEY (`id`)
);
insert  into `sys_role`(`id`,`name`) values (1,'ADMIN'),(2,'USER');


CREATE TABLE `sys_role_user` (
     `id` int(11) NOT NULL AUTO_INCREMENT,
     `Sys_user_id` int(11) DEFAULT NULL,
     `sys_role_id` int(11) DEFAULT NULL,
     PRIMARY KEY (`id`)
);
insert  into `sys_role_user`(`id`,`Sys_user_id`,`sys_role_id`) values (1,2,1),(2,3,2);


CREATE TABLE `sys_user` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(10) DEFAULT NULL,
    `password` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`id`)
);
insert  into `sys_user`(`id`,`name`,`password`) values (2,'admin','$2a$10$Yks2LoqzBUHEWjyLCnsdtepI4oCNip9yNdf67y19ewF8geORNAO5m'),(3,'xuweichao','$2a$10$kmFQOKZw8l776qXp00Lq9e2drL5MUSpG9YHnQtQwbVzyUjJQwHNha');
