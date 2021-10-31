#Awk Program that will generate a report on the top selling video game for each year from 1980 - 2016 according to provided dataset
#Program will also provide a total sales figure for each year - according to the dataset
#A report will be generated both in the terminal (via this AWK file) and in the file directory (generated via Makefile)
#Author: Shawn Philipps

BEGIN{
	#use a comma as a field separator
	FS = ","
	print""
	print "================= Top Selling Video Games for each Year 1980 - 2016 =================="
	print"                                (Platform Specific)"
	print"                             (based on total Global Sales)"
	print""
	
	#for loop to generate data arrays for each year for each category
	for(i = 1980; i < 2017; i++){
		videoGameDate[i] = ""
		videoGameName[i] = ""
		videoGamePlatform[i] = ""
		videoGameGenre[i] = ""
		videoGameGlobalSales[i] = ""
		totalVGGlobalSales[i] = ""
	}

}
{
	if(NR > 1){
		#for loop goes through all years and checks/adds data to appropriate arrays
		for(i = 1980; i < 2017; i++){
			#if year on each line is equal to i 
			#and if Global Sales on line is greater than saved variable
			#update appropriate columns for this line
			if($4 == i && $11 > videoGameGlobalSales[i]){
				videoGameDate[i] = $4
				videoGameName[i] = $2
				videoGamePlatform[i] = $3
				videoGameGenre[i] = $5
				videoGameGlobalSales[i] = $11			  	
			}
			#if year is equal to i, sum up Global Sales to give total for year
			if($4 == i){
				totalVGGlobalSales[i] += $11 
			}
		}
	}
}

END{	
	#for loop to loop through all years in .csv file
	for(i = 1980; i < 2017; i++){
		if(i >1980){
			print "------------------------------------------------------------------------------------"
		}
		print videoGameDate[i] "    "videoGameName[i]
		print""
		print "Platform: "videoGamePlatform[i] "        	Genre: "videoGameGenre[i] "         Global Sales (in millions): $" videoGameGlobalSales[i]
		print""
		print "Total Video Game Sales for " i " (in millions): $" totalVGGlobalSales[i]
	}
	print "=============================== End of Report ==============================="
}

