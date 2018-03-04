#!/bin/bash

PLANSZA=("0" "0" "0" "0" "0" "0" "0" "0" "0")
GRACZ="1"
WYGRANA="0"
POLE="9"

function wypisz {
	echo "Plansza"
	echo "${PLANSZA[0]}|${PLANSZA[1]}|${PLANSZA[2]}"
	echo "-+-+-"
	echo "${PLANSZA[3]}|${PLANSZA[4]}|${PLANSZA[5]}"
	echo "-+-+-"
	echo "${PLANSZA[6]}|${PLANSZA[7]}|${PLANSZA[8]}"
	echo "Kolej gracza: ${GRACZ}"
}

function pobierzPole {
	while [ "$POLE" -eq "9" ]
	do
		echo "Podaj pole:"
		read PODANE
		if [ "$PODANE" -eq "0" ] || [ "$PODANE" -eq "1" ] || [ "$PODANE" -eq "2" ] || [ "$PODANE" -eq "3" ] || [ "$PODANE" -eq "4" ] || [ "$PODANE" -eq "5" ] || [ "$PODANE" -eq "6" ] || [ "$PODANE" -eq "7" ] || [ "$PODANE" -eq "8" ] ; then
			POLE="$PODANE"
		else
			echo "Podaj liczbe od 0 do 8"
		fi	
	done
}

function zerujPole {
	echo $POLE
	POLE="9"
}

function wprowadzZnakNaPole {
	pobierzPole
	while [ $PLANSZA[$POLE] -eq "1" ] || [ $PLANSZA[$POLE] -eq "2" ]
	do
		echo "Pole zajete!"
		pobierzPole
	done
	PLANSZA[$POLE]=$GRACZ
}

function zamienGracza {
	if [ $GRACZ -eq "1" ]; then
		GRACZ=2
	else
		GRACZ=1
	fi
}

echo "Gra w Kółko i Krzyżyk"

while [ $WYGRANA -eq 0 ]
do
	clear
	wypisz
	wprowadzZnakNaPole
	zamienGracza
	zerujPole
done


