#!/bin/bash

count_files() {
    local file_count=$(ls -1 | wc -l)
    echo $file_count
}

play_game() {
    local correct_count=$(count_files)
    local guess
    local correct=false
    
    echo "Bienvenue dans le jeu de devinettes !"
    echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"
    
    while [ "$correct" = false ]; do
        read -p "Votre estimation : " guess
        
        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Erreur : Veuillez entrer un nombre entier positif."
            continue
        fi
        
        if [ "$guess" -lt "$correct_count" ]; then
            echo "Trop bas ! Essayez encore."
        elif [ "$guess" -gt "$correct_count" ]; then
            echo "Trop haut ! Essayez encore."
        else
            correct=true
            echo "Félicitations ! $correct_count est le bon nombre de fichiers !"
        fi
    done
}

play_game
