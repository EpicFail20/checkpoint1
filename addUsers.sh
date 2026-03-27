#!/bin/bash
#test les arguments
function test_add {
    if [ $# -ne 0 ]; then
        tableau_new=("$@")
    else
        echo "Il manque les noms d'utilisateurs en argument - Fin du script"
        exit 1
    fi
}

# Creation de compte
function new_user {
    for args in "${tableau_new[@]}"
    do
        if grep -q "^$args:" /etc/passwd
        then
            echo "Utilisateur $args déjà existant"
        else
            adduser "$args"
            if grep -q "^$args:" /etc/passwd
            then echo "L'utilisateur $args a bien été créé"
            else echo "erreur à la création de l'utilisateur $args"
            fi
            
        fi
    done
}

test_add "$@"
new_user
