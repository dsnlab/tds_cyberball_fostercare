# Inputs (for calculate_global_intensities.R):
# * subjectDir = path to subject directory
# * functionalDir = path from subject's directory to to functional files
# * outputDir = path where study_globalIntensities.csv will be written
# * study = study name
# * subPattern = regular expression for subject IDs
# * prefix = SPM prefix appended to functional images; use "" to ignore
# * runPattern = regular expression for run names; use "" to specify all directories in $functionalDir
# * threshold = voxel intensity value used to truncate the distribution
# * final_output_csv = path and file name for 'study_globalIntensities.csv'
# * parallelize = use TRUE to parallelize, FALSE if not
# * leave_n_free_cores = number of cores to leave free
#------------------------------------------------------
# define variables
# these variables are all you should need to change
# to run the script
#------------------------------------------------------

# paths
#This is where all subject-numbered directories are:
subjectDir = "/projects/dsnlab/shared/tds/fMRI/subjects_tds1_tds2/"
#If you want nii files in just a particular subject subdirectory, specifiy that here:
functionalDir = ""
#This is where you want the resulting csv file to be saved:
outputDir = "/projects/dsnlab/shared/tds/fMRI/analysis/fx/motion/auto-motion-output/tds1_tds2/" 

# variables
study = "tds"
subPattern = "^[0-9]{3}"
prefix = "ru" #would usually be "o", or "ru" 
runPattern = "(cyb|stop|vid)[1-8]" 
threshold = 5000
final_output_csv = file.path(outputDir,paste0(study,'_globalIntensities.csv'))
parallelize = TRUE
leave_n_free_cores = 0
