CREATE TABLE user_roles (
                              user_id bigint(20) NOT NULL,
                              role_id bigint(20) NOT NULL,
                              PRIMARY KEY (user_id,role_id)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
