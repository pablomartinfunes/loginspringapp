drop database if exists loginapp;

create database if not exists loginapp;

use loginapp;

CREATE TABLE user(
    id bigint(20) not null auto_increment PRIMARY KEY,
    first_name varchar(50) not null ,
    last_name varchar(50) not null ,
    email varchar(50) not null ,
    username varchar(50) not null ,
    password varchar(150) not null
) ENGINE = INNODB AUTO_INCREMENT=1 DEFAULT CHARSET = latin1;

CREATE TABLE role(
    id bigint(20) not null auto_increment PRIMARY KEY ,
    name varchar(50) not null,
    description varchar(50) not null
) ENGINE = INNODB AUTO_INCREMENT=1 DEFAULT CHARSET = latin1;


CREATE TABLE user_roles (
                              user_id bigint(20) NOT NULL,
                              role_id bigint(20) NOT NULL,
                              PRIMARY KEY (user_id,role_id)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

ALTER TABLE user_roles ADD FOREIGN KEY (user_id) REFERENCES user(id);
ALTER TABLE user_roles ADD FOREIGN KEY (role_id) REFERENCES role(id);