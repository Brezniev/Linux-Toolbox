#!/bin/bash

pakiety()
{
if [ -e /usr/bin/licz ]
then
#licz
rm -f /usr/bin/licz
#distro
rm -f /usr/bin/distro
else
#licz
rm -f /bin/licz
#distro
rm -f /bin/distro
fi
}

conf()
{
rm -rf /etc/Toolkit
}







odinst()
{
mv .install.sh install.sh
mv uninstall.sh .uninstall.sh
}

DESTROY()
{
cd `find /home -type d -name "licz" 2>/dev/null`
cd ..
cd ..
rm -rf  $OLDPWD
}








sleep 1
echo "Wybierz interesujaca cie opcje wpisujac cyfre z poczatku wiersza:"
echo "1.Odinstaluj pakiet"
echo "2.Odinstaluj pakiet i usun folder ze skryptem instalacyjnym"
echo "3.Chce wyjsc z tego menu"

read odpowiedz

if [ $odpowiedz -eq 1 ];
then
echo "Odinstalowywanie calego pakietu..."
licz;conf;odinst;
elif [ $odpowiedz -eq 2 ];
then
licz;conf;DESTROY;
elif [ $odpowiedz -eq 3 ];
then
echo "Wychodzenie..."
sleep 0.7
clear
else
echo "Co?"
echo "Nie ma takiej opcji w menu!"

fi
