.PHONY: all analyze clean

all: analyze

analyze:
	echo "Analyzing.."
	test -f processed_data/abyss.dat || python source/wordcount.py data/abyss.txt processed_data/abyss.dat
	test -f processed_data/isles.dat || python source/wordcount.py data/isles.txt processed_data/isles.dat
	test -f processed_data/last.dat || python source/wordcount.py data/last.txt processed_data/last.dat
	test -f processed_data/sierra.dat || python source/wordcount.py data/sierra.txt processed_data/sierra.dat
	
	test -f results/abyss.png || python source/plotcount.py processed_data/abyss.dat results/abyss.png
	test -f results/isles.png || python source/plotcount.py processed_data/isles.dat results/isles.png
	test -f results/last.png || python source/plotcount.py processed_data/last.dat results/last.png
	test -f results/sierra.png || python source/plotcount.py processed_data/sierra.dat results/sierra.png
	
	test -f results/results.txt || python source/zipf_test.py processed_data/abyss.dat processed_data/isles.dat processed_data/last.dat processed_data/sierra.dat > results/results.txt
	
	@echo "Done"


clean:
	@echo "Clean"
	rm processed_data/*.dat
	rm results/*png
	rm results/*.txt
	@echo "Done"
