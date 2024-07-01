# data-platform-architecture

### Objetivo do Projeto
Construir uma plataforma de dados que suporte as operações de comércio eletrônico da SoftCart, integrando sistemas de bancos de dados, armazenamento de dados em larga escala e ferramentas de análise para melhorar a tomada de decisões estratégicas e operacionais.

### Visão geral
A SoftCart adota uma arquitetura híbrida, utilizando bancos de dados locais e na nuvem para suportar suas operações de comércio eletrônico. Esta arquitetura visa facilitar a gestão eficiente de dados, análises avançadas e geração de insights estratégicos.

### Ferramentas e Tecnologias

- **Banco de dados OLTP:** MySQL
- **Banco de dados NoSQL:** MongoDB
- **Data Warehouse de Produção:** DB2 na Nuvem
- **Data Warehouse de Staging:** PostgreSQL
- **Plataforma de Big Data:** Hadoop
- **Plataforma de Análise de Big Data:** Spark
- **Dashboard de Business Intelligence:** IBM Cognos Analytics
- **Pipelines de Dados:** Apache Airflow

### Processo

- **Presença Online:** O site da SoftCart é acessado por clientes através de laptops, celulares e tablets.
- **Armazenamento de Dados:** 
  - O catálogo de produtos é gerenciado no MongoDB.
  - Dados transacionais como inventário e vendas são mantidos no MySQL.
- **Infraestrutura Web:** A infraestrutura web da SoftCart é suportada pelos bancos de dados MySQL e MongoDB.
- **Data Warehousing:**
  - Dados são extraídos regularmente dos bancos MongoDB e MySQL para o data warehouse de staging no PostgreSQL.
  - O data warehouse de produção está hospedado na instância de nuvem do DB2.
- **Business Intelligence (BI):** 
  - Equipes de BI utilizam IBM DB2 para criar dashboards operacionais, com suporte do IBM Cognos Analytics.
- **Plataforma de Big Data:** A SoftCart utiliza um cluster Hadoop para coletar dados para análises.
- **Análise de Big Data:** Spark é empregado para processar e analisar dados no cluster Hadoop.
- **ETL (Extract, Transform, Load):** Pipelines ETL são executados no Apache Airflow para mover dados entre OLTP, NoSQL e o data warehouse.

## Módulo 1
- Projetar o esquema do banco de dados OLTP; 
- carregar os dados; 
- Criar script bash para a exportação de todas as linhas da tabela;

### Ferramentas / Software:
- MySQL 8.0.22
- phpMyAdmin 5.0.4.
***
  Este projeto faz parte do programa de cursos da formação de Engenheiro de Dados da IBM
