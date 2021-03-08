compile: clean
	mkdir -p ./target/classes
	javac -d ./target/classes ./src/main/java/games/Slot.java

run:
	java -cp ./target/КазиноJava.jar games.Slot

clean:
	rm -rf ./target
compile-run: compile run

.DEFAULT_GOAL:= build-run

build: compile
		jar cfe ./target/КазиноJava.jar games.Slot -C ./target/classes .

build-run: build run