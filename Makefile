all: clean README.md

README.md:
	echo "<center> <h3>guessinggame.sh for Coursera/John Hopkins Univerity/The Unix Workbench course</h3> </center>" > README.md
	echo -n "README.md created at: " >> README.md
	date >> README.md
	echo -n "\nNumber of lines in guessinggame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md

clean:
	if [ -f README.md ]; then rm README.md; fi
