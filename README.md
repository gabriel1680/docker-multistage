# Multistage Dockerfile

Um caso de estudo para exercitar comandos no docker e conseguir gerar uma imagem com menos de 2MB com apenas um print ao executar um arquivo gerado com a linguagem go.

Para tanto utilizei o conceito de muitistage builds do docker, onde é possível gerar uma imagem a partir de outra anterior. A primeira é mais pesada com a imagem do golang para compilar os arquivos do projeto, gernado um binário executável. Com isso, é possível no mesmo Dockerfile, criar outra imagem, mas dessa vez apenas com o scratch (uma imagem vazia) para rodar a aplicação e passar o arquivo gerado do build alterior para o novo build, conseguindo assim, uma imagem de 1,39MB de tamanho no total.

# DockerHub

Para baixar a imagem basta dar um pull on repositório do dokcerhub:

```sh
docker pull gabriellopes1680/codeeducation
``` 
