.PHONY: all clean

all: README.md

README.md: guessinggame.sh
	@echo "# Jeu de Devinettes - Projet Unix" > README.md
	@echo "" >> README.md
	@echo "*Date et heure de génération :* $$(date '+%Y-%m-%d à %H:%M:%S')" >> README.md
	@echo "" >> README.md
	@echo "*Nombre de lignes de code dans guessinggame.sh :* $$(wc -l < guessinggame.sh)" >> README.md
	@echo "" >> README.md
	@echo "## Description" >> README.md
	@echo "Ce projet est un jeu de devinettes en Bash où le joueur doit trouver le nombre de fichiers dans le répertoire courant." >> README.md
	@echo "" >> README.md
	@echo "## Comment jouer" >> README.md
	@echo "Exécutez la commande : \bash guessinggame.sh\" >> README.md

clean:
	rm -f README.md
