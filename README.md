# PROJETO-INTEGRADOR-APOIO-DECISORIO-AOS-NEGOCIOS_Grupo03

# 📊 Projeto Integrador II: ETL Covid-19 Brasil

## ✅ Descrição
Este projeto implementa uma solução para análise e monitoramento da evolução da Covid-19 no Brasil. A proposta inclui:
- Processo ETL (Extração, Transformação e Carga) para centralização e padronização dos dados.
- Armazenamento em Data Warehouse PostgreSQL.
- Operações OLAP para análise multidimensional.
- Publicação de evidências e scripts no GitHub.

---

## 🚀 Tecnologias Utilizadas
- **Linguagem:** Python 3.x
- **Banco de Dados:** PostgreSQL
- **Bibliotecas:** pandas, requests, sqlalchemy
- **Agendamento:** Airflow ou cron
- **BI:** Power BI / Tableau
- **Controle de Versão:** GitHub

---

## 🏗 Arquitetura da Solução
/etl
├── extract.py        # Extração dos dados
├── transform.py      # Limpeza e padronização
├── load.py           # Carga no PostgreSQL
/sql
├── ddl.sql           # Criação das tabelas
├── dml.sql           # Inserção dos dados
/olap
├── consultas_olap.sql # Consultas analíticas


---

## 🔗 Fonte dos Dados
- https://brasil.io/dataset/covid19/caso_full/
- https://www.gov.br/saude/pt-br
