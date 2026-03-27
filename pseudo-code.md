
'fonction verification
{ si  : pas d'arguments
variable_arguments = arguments
sinon:  afficher  "Il manque les noms d'utilisateurs en argument - Fin du script"
sortie du script
}
fonction nouvel_user
{ Pour tout les éléments de variables_arguments :
faire:
		si :utilisateur existe déjà:
				afficher  "L'utilisateur <variable_arguments> existe déjà"
				continuer
		sinon: ajouter l'utilisateur
				si l'utilisateur a bien ete créé:
					afficher "L'utilisateur <variable_arguments> a été crée"
				sinon
					afficher "Erreur à la création de l'utilisateur <variable_arguments>"
				

}
lancer fonction verification
lancer fonction nouvelutilisateur'
