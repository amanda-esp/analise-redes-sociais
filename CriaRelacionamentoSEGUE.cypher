//Cria relacionamento SEGUE para Usuario 1 
MATCH(u:Usuario)
WHERE u.idUsuario = 1965
MATCH(u1:Usuario)
WHERE u1.idUsuario = 3781
MATCH(u2:Usuario)
WHERE u2.idUsuario = 5562
MATCH(u3:Usuario)
WHERE  u3.idUsuario = 6416
CREATE(u)-[:SEGUE]->(u1)
CREATE(u)-[:SEGUE]->(u2)
CREATE(u)-[:SEGUE]->(u3)

//Cria relacionamento SEGUE para Usuario 2
MATCH(u:Usuario)
WHERE u.idUsuario = 2943
MATCH(u1:Usuario)
WHERE u1.idUsuario = 3781
MATCH(u2:Usuario)
WHERE u2.idUsuario = 4067
CREATE(u)-[:SEGUE]->(u1)
CREATE(u)-[:SEGUE]->(u2)

//Cria relacionamento SEGUE para Usuario 3
MATCH(u:Usuario)
WHERE u.idUsuario = 3781
MATCH(u1:Usuario)
WHERE u1.idUsuario = 1965
MATCH(u2:Usuario)
WHERE u2.idUsuario = 2943
MATCH(u3:Usuario)
WHERE  u3.idUsuario = 6416
CREATE(u)-[:SEGUE]->(u1)
CREATE(u)-[:SEGUE]->(u2)
CREATE(u)-[:SEGUE]->(u3)

//Cria relacionamento SEGUE para Usuario 4
MATCH(u:Usuario)
WHERE u.idUsuario = 4067
MATCH(u1:Usuario)
WHERE u1.idUsuario = 2943
MATCH(u2:Usuario)
WHERE u2.idUsuario = 5562
CREATE(u)-[:SEGUE]->(u1)
CREATE(u)-[:SEGUE]->(u2)

//Cria relacionamento SEGUE para Usuario 5
MATCH(u:Usuario)
WHERE u.idUsuario = 5562
MATCH(u1:Usuario)
WHERE u1.idUsuario = 1965
MATCH(u2:Usuario)
WHERE u2.idUsuario = 4067
CREATE(u)-[:SEGUE]->(u1)
CREATE(u)-[:SEGUE]->(u2)

//Cria relacionamento SEGUE para Usuario 6
MATCH(u:Usuario)
WHERE u.idUsuario = 6416
MATCH(u1:Usuario)
WHERE u1.idUsuario = 1965
MATCH(u2:Usuario)
WHERE u2.idUsuario = 3781
CREATE(u)-[:SEGUE]->(u1)
CREATE(u)-[:SEGUE]->(u2)
