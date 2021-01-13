#/usr/bin/bash

#etape : récupérer les pantheons, puis les dieux qui leur appartiennent

echo "Bienvenue à cette aide de création personnage pour le système Scion!";
echo "Première étape: choisissez votre panthéon! Majuscule ou minuscule, mais évitez les accents.";
echo "Vous pouvez quitter le script à tout moment en tapant 'exit'";
for file in /mnt/c/Users/Claire/Desktop/scion.exe/pantheon/*.txt; do
	echo `basename "$file"` | cut -f1 -d "."
done
read -p "> " pantheon
for file in /mnt/c/Users/Claire/Desktop/scion.exe/pantheon/*.txt; do
	match=false
	if [[ ${file,,} =~ ${pantheon,,} ]]; then
		match=true
		pantheon_file=$file
		file=`basename "$file"`
		pantheon=$file | cut -f1 -d "."
		pantheon=${pantheon^}
		break
	fi
done
if [[ ${match} == 'false' ]]; then
	echo "Oops! merci de saisir votre panthéon à nouveau ^^"
	# rappeler fonction avant
else
	echo "Panthéon validé: "$file | cut -f1 -d "."
	# elements_pantheons $pantheon
fi






# elements_pantheons() {
# 	echo "Votre sélection du panthéon des "echo $pantheon" vous donnera accès aux éléments suivants:"
# 	première ligne du fichier divisée en fonction de "\t"
# 	echo "2 Compétences: "+echo $ligne1_comp+" , qui devront figurer dans votre Cheminement de panthéon (on y revient après)"
# 	echo "Une piste de vertu dont les extrémités sont "+echo $ligne1_vertu+"; vous commencez au milieu de cette piste."
# 	echo "Le Domaine de panthéon, "+echo $ligne1_dom+", accordé automatiquement. Vous pourrez plus tard y sélectionner des dons."
# 	echo "Cela vous convient-il? (Y/N)"
# 	if n: break et on repart plus tôt
# 	fi
# 	if y: break et on continue
# }


# dieu_pantheon(pantheon):
# echo "Vous avez choisi votre panthéon. Maintenant, il est temps de choisir un parent divin."
# casser le fichier ligne par ligne
# echo le premier bout + si on a des notes entre parenthèses

