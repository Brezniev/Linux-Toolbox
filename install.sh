#!/bin/bash

inst()
{
if [ -e "/etc/Toolkit/" ]; then
echo "Znaleziono folder z plikami konfiguracyjnymi"
else
echo "Tworzenie folderu z plikami konfiguracyjnymi"
sudo mkdir /etc/Toolkit
fi
}





pakiety()
{
#licz
echo "Instalowanie..."
sudo mkdir /etc/Toolkit/licz
sudo mv licz/code.licz.sh /etc/Toolkit/licz/code.licz.sh
if [ -e /usr/bin ]; then
#licz
sudo mv licz/licz /usr/bin/licz
#distro
sudo mv distro/distro /usr/bin/distro
else
#licz
sudo mv licz/licz /bin/licz
#distro
sudo mv distro/distro /bin/distro
fi

}



Install()
{
mv install.sh .install.sh
mv .uninstall.sh uninstall.sh
}








echo "Witaj w instalatorze mojego toolkita"
sleep 1
echo "Wybierz interesujaca cie opcje wpisujac cyfre z poczatku wiersza:"
echo "1.Zainstaluj caly pakiet."
echo "2.Pokaz liste komend."
echo "3.Wyjdz z tego menu"

read odpowiedz

if [ $odpowiedz -eq 1 ];
then
echo "Rozpoczynanie instalacji..."
inst;pakiety;Install
elif [ $odpowiedz -eq 2 ];
then
clear
echo "Komendy:"
echo "-----------"
echo "1.licz"
echo "2.distro"
echo "-----------"
elif [ $odpowiedz -eq 3 ];
then
echo "Wychodzenie..."
sleep 0.7
clear
elif [ $odpowiedz -eq 2137 ];
then
yes "JAN PAWEL II GWALCIL MALE DZIECI!!!"
else
echo "Co?"
echo "Nie ma takiej opcji w menu!"

fi

