# Projeto Full Cycle – Go com Docker

Este é um projeto simples desenvolvido em **Go** como parte de desafios/estudos do **Full Cycle**, com foco em **containerização usando Docker**.

## 🎯 Objetivo

Demonstrar a criação de uma aplicação Go minimalista, empacotada em uma imagem Docker otimizada, seguindo boas práticas como:

- Imagem final pequena
- Build separado da execução
- Execução direta via container ou via docker run https://hub.docker.com/repository/docker/murilommichelon/full-cycle-desafio-go/general

## 🧩 Descrição do Projeto

A aplicação executa um programa em Go que imprime uma mensagem no terminal quando o container é iniciado.

Exemplo de saída:

Full Cycle Rocks!!!

## 🛠️ Tecnologias Utilizadas

- Go
- Docker
- Docker Hub

## 📁 Estrutura Básica

\`\`\`
.
├── Dockerfile
├── go.mod
└── main.go
\`\`\`



## ▶️ Como Executar o Projeto

### Build da imagem Docker
### Build da imagem Docker

\`\`\`bash
docker build -t fullcycle-go .
\`\`\`

### Executar o container

\`\`\`bash
docker run --rm fullcycle-go
\`\`\`

### Publicar no Docker Hub (Opcional)

\`\`\`bash
docker tag fullcycle-go seu-usuario/fullcycle-go:latest
docker push seu-usuario/fullcycle-go:latest
\`\`\`
