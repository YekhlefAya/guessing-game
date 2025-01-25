#!/bin/bash

# Fonction pour demander et comparer la réponse
guess_game() {
  local file_count=$(ls -1 | wc -l)
  local user_guess=0

  echo "Devinez combien de fichiers sont dans le répertoire actuel :"
  while [[ $user_guess -ne $file_count ]]; do
    read -p "Votre estimation : " user_guess
    if [[ $user_guess -lt $file_count ]]; then
      echo "Trop bas ! Essayez encore."
    elif [[ $user_guess -gt $file_count ]]; then
      echo "Trop haut ! Essayez encore."
    else
      echo "Félicitations ! Vous avez deviné correctement."
    fi
  done
}

guess_game
