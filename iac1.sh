#!/bin/bash

# DIO Bootcamp Linux Experience 
# Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões
# Script criado por Walter J. Silva
# GitHub: /walterowisk

echo "Script IaC iniciado!!"
echo "Criando os diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários e atribuindo aos grupos determinados..."

useradd carlos -c "Carlos Villagran" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_ADM
useradd maria -c "Maria do Bairro" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_ADM
useradd joao -c "João Canalha" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_ADM

useradd debora -c "Débora Nascimento" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_VEN
useradd sebastiana -c "Dona Sebastiana" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_VEN
useradd roberto -c "Roberto Baggio" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_VEN

useradd josefina -c "Josefininha" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_SEC
useradd amanda -c "Amanda Carvalho" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_SEC
useradd rogerio -c "Rogério Cenior" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_SEC

echo "Definindo os donos e grupos dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Definindo as permissões de usuário nos diretórios..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Script IaC finalizado!!"