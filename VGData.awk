BEGIN{
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
	}

}
{
	if(NR > 1){
		#for loop goes through all years and checks/adds data to appropriate arrays
		for(i = 1980; i < 2017; i++){
			if($4 == i && $11 > videoGameGlobalSales[i]){
				videoGameDate[i] = $4
				videoGameName[i] = $2
				videoGamePlatform[i] = $3
				videoGameGenre[i] = $5
				videoGameGlobalSales[i] = $11			  	
			}
		}
	}
}

END{	
	for(i = 1980; i < 2017; i++){
		if(i >1980){
			print "------------------------------------------------------------------------------------"
		}
		print videoGameDate[i] "    "videoGameName[i]
		print""
		print "Platform: "videoGamePlatform[i] "        	Genre: "videoGameGenre[i] "         Global Sales (in millions): $" videoGameGlobalSales[i]
		#print""
	}
	print""
	print "=============================== End of Report ==============================="
}

