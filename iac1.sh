#!/bin/bash

# DIO Bootcamp Linux Experience 
# Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões
# Script criado por Walter J. Silva
# GitHub: /walterowisk

echo "Criando os diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários e atribuindo os grupos determinados"

useradd carlos -c "Carlos Villagran" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_ADM
useradd Maria -c "Maria do Bairro" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_ADM
useradd joao -c "João Canalha" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_ADM

useradd debora -c "Débora Nascimento" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_VEN
useradd sebastiana -c "Dona Sebastiana" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_VEN
useradd roberto -c "Roberto Baggio" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_VEN

useradd josefina -c "Josefininha" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_SEC
useradd amanda -c "Amanda Carvalho" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_SEC
useradd rogerio -c "Rogério Cenior" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_SEC

echo "Criando as permissões"

