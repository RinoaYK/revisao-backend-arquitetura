# Revisão Backend Arquitetura

Este é um projeto que aborda o material de revisão de backend. <br>

Envolve o desenvolvimento de uma API que permite que usuários se cadastrem e façam login, além de acessarem as funcionalidades CRUD das playlists. Os usuários podem criar, visualizar, atualizar e excluir suas próprias playlists, e também podem dar like e deslike em playlists de outros usuários.

A autenticação é feita por meio de tokens JWT, garantindo a segurança das informações e das operações realizadas pelos usuários.

## Documentação Postman
https://documenter.getpostman.com/view/25826614/2s93eYUBgr

# Conteúdos abordados
- NodeJS
- Typescript
- Express
- SQL e SQLite
- Knex
- POO
- Arquitetura em camadas
- Geração de UUID
- Geração de hashes
- Autenticação e autorização
- Roteamento
- Postman

# Banco de dados
![Revisão Backend 2](https://user-images.githubusercontent.com/29845719/218814910-bf37f2b0-b58b-4f3d-9590-b6c12d618da8.png)

# API playlists
- **Endpoints**
    - signup
    - login
    - get playlists
    - create playlist
    - edit playlist
    - delete playlist
    - like / dislike playlist

- **Autenticação e autorização**
    - identificação UUID
    - senhas hasheadas com Bcrypt
    - tokens JWT
 
 - **Código**
    - POO
    - Arquitetura em camadas
    - Roteadores no Express
