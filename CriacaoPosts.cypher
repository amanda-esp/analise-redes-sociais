UNWIND[
  {id_postagem: 196501, id_usuario: 1965, anexo: 'Foto', tags_usuarios: 6416},
  {id_postagem: 196502, id_usuario: 1965, legenda: 'Passando no natal da praça Bom Jesus!', anexo:'Vídeo',	duracao_anexo:	91, local_postagem: 'Anápolis,GO,Brasil'},
  {id_postagem: 196503, id_usuario: 1965, anexo: 'Foto'},
  {id_postagem: 196503, id_usuario: 1965, texto: 'Feliz natal e ano novo para todos!',tags_usuarios: 3781},
  {id_postagem: 758402, id_usuario: 2943, anexo: 'Foto', local_postagem: 'São Paulo - SP, Brasil'},
  {id_postagem: 758403, id_usuario: 2943, anexo: 'Vídeo', duracao_anexo: 94, local_postagem: 'São Paulo - SP, Brasil'},
  {id_postagem: 378101, id_usuario: 3781, texto: "Vou-lhe dizer um grande segredo, meu caro. Não espere o juízo final. Ele realiza-se todos os dias. - Albert Camus",local_postagem: 'Manaus - AM, Brasil'},
  {id_postagem: 378102, id_usuario: 3781, anexo: 'Vídeo',duracao_anexo: 5, local_postagem: 'Manaus - AM, Brasil',tags_usuarios: 1965},
  {id_postagem: 378103, id_usuario: 3781, texto: "O verdadeiro conhecimento vem de dentro. - Sócrates", local_postagem: 'Belém - PA, Brasil'},
  {id_postagem: 378104, id_usuario: 3781, texto: "Podemos julgar o coração de um homem pela forma como ele trata os animais.- Immanuel Kant",local_postagem: 'Belém - PA, Brasil'},
  {id_postagem: 556201, id_usuario: 5562, legenda: 'Com a família!', anexo: 'Foto',local_postagem: 'Rio de Janeiro - RJ, Brasil', tags_usuarios: 4067},
  {id_postagem: 556202, id_usuario: 5562, anexo: 'Vídeo', duracao_anexo: 98, local_postagem: 'Rio de Janeiro - RJ, Brasil'},
  {id_postagem: 556203, id_usuario: 5562, texto: "Ser feliz sem motivo é a mais autêntica forma de felicidade. - Carlos Drummond de Andrade",local_postagem: 'Rio de Janeiro - RJ, Brasil'},
  {id_postagem: 556204, id_usuario: 5562, anexo: 'Foto',local_postagem: 'Rio de Janeiro - RJ, Brasil',	tags_usuarios: 4067},
  {id_postagem: 641601, id_usuario: 6416, anexo: 'Foto',local_postagem: 'Rio de Janeiro - RJ, Brasil',	tags_usuarios: 1965}
] as posts

CREATE(p:Posts{
        idPost: posts.id_postagem,
        idAutorPost: posts.id_usuario,
        texto: posts.texto,
        tipoAnexo: posts.anexo,
        duracaoAnexo: posts.duracao_anexo,
        localizacao: posts.local_postagem,
        usuariosMarcados: posts.tags_usuarios
})
