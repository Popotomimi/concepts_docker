# Concepts Docker 🐳

Este repositório contém uma aplicação estruturada para demonstrar conceitos fundamentais de Docker e Docker Compose, focando na orquestração de containers para ambientes de desenvolvimento e produção.

## 🚀 Tecnologias
- **Docker**: Plataforma para criação e execução de containers.
- **Docker Compose**: Ferramenta para definir e rodar aplicações multi-container.
- **Ecossistema**: Configurações otimizadas para Node.js, Bancos de Dados (SQL/NoSQL) e ambientes isolados.

## 📦 Funcionalidades
- Isolação completa do ambiente de desenvolvimento.
- Orquestração de serviços dependentes (API, Banco de Dados, Cache).
- Configuração de volumes para persistência de dados.
- Gerenciamento de redes internas para comunicação segura entre containers.

## 🔧 Como Executar

Certifique-se de ter o **Docker** e o **Docker Compose** instalados em sua máquina.

1. Clone o repositório:
   ```bash
   git clone [https://github.com/Popotomimi/concepts_docker.git](https://github.com/Popotomimi/concepts_docker.git)
   cd concepts_docker
   ```

2. Suba os containers em modo background:
  ```bash
  docker-compose up -d
  ```

3. Verifique se os serviços estão rodando:
  ```bash
  docker ps
  ```

## 🛠 Comandos Úteis
Parar os serviços: docker-compose down

Visualizar logs em tempo real: docker-compose logs -f

Reconstruir as imagens (após alterações): docker-compose up --build

Acessar o terminal de um container específico: docker exec -it <nome_do_container> sh
