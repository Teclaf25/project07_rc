cat /root/.bash_history#!/bin/bash

echo "Script para verificar servidor linux."
echo "Prof. Paulo Henrique S. Barbosa"
echo "Laboratório de Redes - Linux"

echo ""
echo ""

echo -n "Coloque seu nome completo: "
read -a aluno

echo -n "Coloque sua matricula: "
read matricula

touch "$aluno-$matricula.log"

echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"
echo " ################### History Essencial ! ##################" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"

cat /root/.bash_history | grep -a 'apache2' >> "$aluno-$matricula.log"
cat /root/.bash_history | grep -a 'php' >> "$aluno-$matricula.log"
cat /root/.bash_history | grep -a 'mysql' >> "$aluno-$matricula.log"
cat /root/.bash_history | grep -a 'dhcpd' >> "$aluno-$matricula.log"
cat /root/.bash_history | grep -a 'samba' >> "$aluno-$matricula.log"
cat /root/.bash_history | grep -a 'proftpd' >> "$aluno-$matricula.log"
cat /root/.bash_history | grep -a 'bind' >> "$aluno-$matricula.log"
cat /root/.bash_history | grep -a 'named.conf.local' >> "$aluno-$matricula.log"
cat /root/.bash_history | grep -a 'named.conf.options' >> "$aluno-$matricula.log"
cat /root/.bash_history | grep -a 'dhcpd' >> "$aluno-$matricula.log"
cat /root/.bash_history | grep -a 'strogswan' >> "$aluno-$matricula.log"
cat /root/.bash_history | grep -a 'openvpn' >> "$aluno-$matricula.log"

echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"

echo " ################### History COMPLETO! ##################" >> "$aluno-$matricula.log"

echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"

#history -r
cat /root/.bash_history >> "$aluno-$matricula.log"

echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"

echo " ################### ARQUIVOS DE CONFIGURACAO! ##################" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"

cat /etc/apache2/apache2.conf >> "$aluno-$matricula.log"
cat /etc/apache2/sites-enabled/000-default.conf >> "$aluno-$matricula.log"
cat /etc/apache2/sites-enabled/default-ssl.conf >> "$aluno-$matricula.log"
cat /etc/proftpd/proftpd.conf >> "$aluno-$matricula.log"
cat /etc/bind/named.conf.local >> "$aluno-$matricula.log"
cat /etc/bind/named.conf.options >> "$aluno-$matricula.log"
cat /etc/samba/smb.conf >> "$aluno-$matricula.log"
cat /etc/dhcp/dhcpd.conf >> "$aluno-$matricula.log"
cat /etc/default/isc-dhcp-server >> "$aluno-$matricula.log"
cat /etc/ipsec.conf >> "$aluno-$matricula.log"
cat /etc/squid/squid.conf >> "$aluno-$matricula.log"
cat /etc/openvpn/server/server.conf >> "$aluno-$matricula.log"

echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"
echo ""
echo ""
echo "ENVIE ESTE ARQUIVO SOMENTE SE TIVER TERMINADO TUDO! :D"
echo ""
echo ""

echo ""
echo " Dados Essenciais...Ook"
echo " ################### Dados essenciais ! ##################" >> "$aluno-$matricula.log"
echo ""
echo ""
uname -a >> "$aluno-$matricula.log"
w >> "$aluno-$matricula.log"
who >> "$aluno-$matricula.log"
ip a >> "$aluno-$matricula.log"

echo ""
echo ""


echo ""
echo ""
echo ""
echo ""
echo "Envie o arquivo com seu nome para o professor. O arquivo está neste mesmo diretório que executou este script. :D"
echo ""
echo ""
echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"

cat $aluno-$matricula.log | base64 > $aluno-$matricula.enviar
rm $aluno-$matricula.log
