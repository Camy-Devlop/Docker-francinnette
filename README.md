# 🚀 Francinette Docker - README

Bienvenue !  
Ce guide va te montrer **pas à pas** comment installer et utiliser ce projet pour tester ta `libft` avec Francinette, même si tu n’as jamais utilisé Docker !

---

## 🧰 Prérequis

- [Docker](https://docs.docker.com/get-docker/) installé sur ta machine (Windows, Mac ou Linux)
- Ton dossier `libft` prêt à être testé

## ⚡️ Installation

Ouvre un terminal dans le dossier du projet (celui qui contient ce README et les scripts).

1. **Construis l’image Docker**


 bash install.sh  
Ce script exécute la commande :  
`docker build -t francinette .`  
  Cela peut prendre quelques minutes la première fois.

## ▶️ Lancer les tests Francinette
   
1. **Démarre le conteneur et monte ton dossier `libft`**
    bash run.sh
2. **Quand tu vois le message :**

    veillez entrer l'adresse de votre dossier

**Entre le chemin absolu** de ton dossier `libft` (exemple : `/home/user/42/libft` ou `C:\Users\moi\Documents\libft`).

3. **Valide** : le conteneur démarre et tu arrives dans un terminal prêt à l’emploi !

---

## 🗂️ Structure des fichiers

- **Dockerfile** : configure l’environnement avec Francinette, la Norminette, etc.
- **install.sh** : construit l’image Docker.
- **run.sh** : lance le conteneur et monte ton dossier `libft`.
- **start.sh** : script lancé automatiquement à l’ouverture du conteneur (optionnel, selon ce que tu mets dedans).

---

## 🧪 Tester ta Libft

Une fois dans le terminal du conteneur Docker :

1. **Vérifie que tu es dans `/app`** (où ta libft est montée).
2. **La Francinette ce lance tout seul :**

##si le test est fini alors vous pouver relance le teste si vous etes toujour dans le contenaire 

  francinette


ou, pour tester uniquement la libft :

francinette libft

## 💡 Conseils

## ❓ FAQ

**Q : J’ai une erreur “docker: command not found” ?**  
R : Docker n’est pas installé ou n’est pas dans le PATH. [Télécharge Docker ici](https://docs.docker.com/get-docker/).

**Q : Francinette ne détecte pas ma libft ?**  
R : Vérifie que tu as bien entré le chemin complet de ton dossier `libft` lors du lancement du script.

**Q : Comment sortir du conteneur ?**  
R : Tape `exit` dans le terminal du conteneur.

---

## 🎨 Visuel

+-------------------+

| Ton dossier |

| libft/ |

+-------------------+\n

| v ......\n

+-------------------+\n

| Docker Container |\n

| (Francinette) |\n

+-------------------+\n

| v ......\n

+-------------------+\n

| Résultats tests |\n

+-------------------+\n

## 🤝 Remerciements

- [Francinette](https://github.com/xicodomingues/francinette)
- [Norminette](https://github.com/42Paris/norminette)
- [libftTester](https://github.com/Tripouille/libftTester)

---

**Bon courage et happy coding !** 🚀

