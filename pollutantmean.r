pollutantmean <- function(directory, pollutant, id = 1:332) {

    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    dir_vect <- as.character(directory)
    polltnt_vect <- as.character(pollutant)

    valid_files <- list.files(path = dir_vect, pattern = "\\.csv$")

    if(length(valid_files) > 0) {

    	i = 1

    	for(i in length(valid_files)) {
    		full_path <- paste(dir_vect, valid_files[i], sep = "")
    		data_file <- file.path(full_path, fsep = .Platform$file.sep)
    		file_data <- read.csv(data_file)
    		valid_data <- file_data[complete.cases(file_data),][,]
    	}
    	print(valid_data)

	} else{
    	print("No CSV files found")
    	return
    }

    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate".
    if(polltnt_vect == "sulfate" | polltnt_vect == "nitrate") {

    	## 'id' is an integer vector indicating the monitor ID numbers
		## to be used	
    	if(id > 0 && id < 333) {
    		print("ID Valid")
    	} else {
    		print("Invalid pollutant argument")
    	}
			## Return the mean of the pollutant across all monitors list
		    ## in the 'id' vector (ignoring NA values)

	}	        
}