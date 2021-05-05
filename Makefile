compile: clean
	mkdir -p ./target/classes
	javac -d ./target/classes ./src/main/java/games/Slot1.java

run:
	java -cp ./target/CasinoJava.jar games.Slot1

clean:
	rm -rf ./target
compile-run: compile run

.DEFAULT_GOAL:= build-run

build: compile
	jar cfe ./target/CasinoJava.jar games.Slot1 -C ./target/classes .

build-run: build run

update:
	./mvnw versions:display-plugin-updates