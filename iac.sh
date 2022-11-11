#!/bin/bash

echo "removendo dados anteriores..."
rmdir publico adm ven sec
groupdel -f GRP_ADM
groupdel -f GRP_VEN
groupdel -f GRP_SEC
userdel -f carlos
userdel -f maria
userdel -f joao
userdel -f debora
userdel -f sebastiana
userdel -f roberto
userdel -f josefina
userdel -f amanda
userdel -f rogerio

echo "criando pastas..."
mkdir publico adm ven sec

echo "criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando e adicionando usuarios nos grupos..."
useradd -G GRP_ADM carlos -m -s /bin/bash -p Senha123
useradd -G GRP_ADM maria -m -s /bin/bash -p Senha123
useradd -G GRP_ADM joao -m -s /bin/bash -p Senha123
useradd -G GRP_VEN debora -m -s /bin/bash -p Senha123
useradd -G GRP_VEN sebastiana -m -s /bin/bash -p Senha123
useradd -G GRP_VEN roberto -m -s /bin/bash -p Senha123
useradd -G GRP_SEC josefina -m -s /bin/bash -p Senha123
useradd -G GRP_SEC amanda -m -s /bin/bash -p Senha123
useradd -G GRP_SEC rogerio -m -s /bin/bash -p Senha123

echo "definindo owners..."
chown -R root:root publico
chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

echo "definindo permissões..."
chmod 2777 publico
chmod 2770 adm
chmod 2770 ven
chmod 2770 sec
