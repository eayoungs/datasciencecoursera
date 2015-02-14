pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
    dir_vect <- as.character(directory)
    valid_files <- list.files(path = dir_vect, pattern = "\\.csv$")

    i = 1

    if(length(valid_files) > 0) {
    	full_path <- paste(dir_vect, valid_files[i], sep = "")
    	data_file <- file.path(full_path, fsep = .Platform$file.sep)
    	df_contents <- read.csv(data_file)
    } else{
    	print("No CSV files found")
    }

        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".
    polltnt_vect <- as.character(pollutant)
    if(polltnt_vect == "sulfate" | polltnt_vect == "nitrate") {
    	print("Valid")
    } else {
    	print("Invalid")
    }
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used

        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)

}