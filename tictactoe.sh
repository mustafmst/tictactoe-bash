#!/bin/bash

PLANSZA=(0 0 0 0 0 0 0 0 0)
GRACZ=1
WYGRANA=0
POLE=" "

function wypisz {
	echo "Plansza"
	echo "${PLANSZA[0]}|${PLANSZA[1]}|${PLANSZA[2]}"
	echo "${PLANSZA[3]}|${PLANSZA[4]}|${PLANSZA[5]}"
	echo "${PLANSZA[6]}|${PLANSZA[7]}|${PLANSZA[8]}"
	echo "Kolej gracza: ${GRACZ}"
}

function pobierzPole {
	while [ $POLE -eq " " ]
	do
		echo "Podaj pole:"
		read PODANE
		if [ $PODANE -eq 0 || $PODANE -eq 1 || $PODANE -eq 2 || $PODANE -eq 3 || $PODANE -eq 4 || $PODANE -eq 5 || $PODANE -eq 6 || $PODANE -eq 7 || $PODANE -eq 8 ]; then
			$POLE=$PODANE 
		fi	
	done
}

echo "Gra w Kółko i Krzyżyk"

while [ $WYGRANA -eq 0 ]
do
	wypisz
	pobierzPole
	$WYGRANA=1
done
