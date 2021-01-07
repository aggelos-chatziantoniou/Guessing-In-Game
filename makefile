all:
		@-echo "# Guess in game" > README.md
		@-date >> README.md
		@-wc -l guessinggame.sh|cut -d " " -f1 >> README.md
		@-chmod +x guessinggame.sh
		@-echo "All done."
