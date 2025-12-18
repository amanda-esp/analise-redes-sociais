//CRIA RELACIONAMNETO POSTOU
MATCH(u:Usuario)
MATCH(p:Posts)
WHERE p.idAutorPost = u.idUsuario
MERGE(u)-[:POSTOU]->(p)

//CRIA RELACIONAMNETO SEGUE
//Cria relacionamento SEGUE para Usuario 1 
MATCH(u:Usuario)
WHERE u.idUsuario = 1965
MATCH(u1:Usuario)
WHERE u1.idUsuario = 3781
MATCH(u2:Usuario)
WHERE u2.idUsuario = 5562
MATCH(u3:Usuario)
WHERE u3.idUsuario = 6416
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
WHERE u3.idUsuario = 6416
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

//CRIA RELACIONAMNETO MARCADO_EM
MATCH(u:Usuario)
MATCH(p:Posts)
WHERE p.usuariosMarcados = u.idUsuario
MERGE(u)-[:MARCADO_EM]->(p)


//CRIA RELACIONAMNETO CURTIU
UNWIND[
  {id_postagem: 196501, curtiram: [2943,3781,6416]},
  {id_postagem: 196502, curtiram: [2943,3781,4067,6416]},
  {id_postagem: 196503, curtiram: [3781,6416]}, 
  {id_postagem: 196503, curtiram: [3781]},
  {id_postagem: 758402, curtiram: [4067]},
  {id_postagem: 758403, curtiram: [3781,4067]},
  {id_postagem: 378101, curtiram: [1965,6416]},
  {id_postagem: 378102, curtiram: [1965,2943]},
  {id_postagem: 378103, curtiram: [2943,6416]},
  {id_postagem: 378104, curtiram: [1965,2943,6416]},
  {id_postagem: 556201, curtiram: [4067]},
  {id_postagem: 556202, curtiram: [1965,4067]},
  {id_postagem: 556203, curtiram: [1965]},
  {id_postagem: 556204, curtiram: [1965,4067]},
  {id_postagem: 641601, curtiram: [1965,3781,5562]
}] as curtidas

UNWIND curtidas.curtiram AS usuariosCurtiram

MATCH(u:Usuario)
MATCH(p:Posts)
WHERE p.idPost = curtidas.id_postagem AND
      u.idUsuario = usuariosCurtiram
MERGE(u)-[:CURTIU]->(p)
