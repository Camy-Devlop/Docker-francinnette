while true; do
	echo "veillez entrer l'adresse de votre dossier"
	read address
	if [ -n "$address" ]; then
		echo "super !!!!!\n"
		break
	else
		echo "Error une addresse vide n'est pas bonne"
	fi
done
docker run -it -v $address:/app francinette

