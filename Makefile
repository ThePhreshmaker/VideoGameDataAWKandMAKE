default:
	curl -o vgsales.csv https://raw.githubusercontent.com/ThePhreshmaker/CISC3140-Lab-2/main/vgsales.csv
	awk -f VGData.awk "."/vgsales.csv
clean:
	rm vgsales.csv