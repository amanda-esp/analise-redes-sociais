//Constraint para usuario
CREATE CONSTRAINT usuario_id_exists
FOR (u:Usuario)
REQUIRE u.id IS NOT NULL;

CREATE CONSTRAINT usuario_cpf_exists
FOR (u:Usuario)
REQUIRE u.cpf IS NOT NULL;

CREATE CONSTRAINT usuario_cpf_unique
FOR (u:Usuario)
REQUIRE u.cpf IS UNIQUE;

CREATE CONSTRAINT usuario_id_unique
FOR (u:Usuario)
REQUIRE u.id IS UNIQUE;

//Constraint para postagens
CREATE CONSTRAINT post_id_exists
FOR (p:Posts)
REQUIRE p.idPost IS NOT NULL;

CREATE CONSTRAINT post_id_unique
FOR (p:Posts)
REQUIRE p.idPost IS UNIQUE;
