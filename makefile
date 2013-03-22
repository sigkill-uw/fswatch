all: fswatch

fswatch: main.c
	gcc -o fswatch main.c

install: fswatch
	cp fswatch /bin

clean:
	rm fswatch

uninstall:
	rm /bin/fswatch

git:
	@git add main.c README makefile
	@read -p "Commit message: " message
	@git commit -m "$message"
	@git push -u origin master
