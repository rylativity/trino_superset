FROM apache/superset:latest

RUN pip install sqlalchemy-trino==0.4.1 elasticsearch-dbapi pystan==2.19.1.1 prophet