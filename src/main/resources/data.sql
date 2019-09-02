INSERT INTO user (first_name, last_name, email, password, username)
VALUES ('admin', 'admin','admin@admin.com', '$2a$04$n6WIRDQlIByVFi.5rtQwEOTAzpzLPzIIG/O6quaxRKY2LlIHG8uty', 'admin');

INSERT INTO role (description, name) VALUES ('ROLE_ADMIN', 'ADMIN');
INSERT INTO role (description, name) VALUES ('ROLE_USER', 'USER');
INSERT INTO role (description, name) VALUES ('ROLE_SUPERVISOR', 'SUPERVISOR');

INSERT INTO user_roles (user_id, role_id) VALUES (1, 1);