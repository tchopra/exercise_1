#download the hospital_revised_flatfile
wget -O Hospital_Revised_Flatfiles.zip https://data.medicare.gov/views/bg9k-emty/files/Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip

#unzip the file
unzip Hospital_Revised_Flatfiles.zip

#remove the header and rename the file to hospitals.csv
tail -n+2 'Hospital General Information.csv' > hospitals.csv

#remove the header and rename the file to effective_care.csv
tail -n+2 'Timely and Effective Care - Hospital.csv' > effective_care.csv

#remove the header and rename the file to readmissions.csv
tail -n+2 'Readmissions and Deaths - Hospital.csv' > readmissions.csv

#remove the header and rename the file to readmissions.csv
tail -n+2 'Readmissions and Deaths - Hospital.csv' > readmissions.csv

#remove the header and rename the file to Measures.csv
tail -n+2 'Measure Dates.csv' > Measures.csv

#remove the header and rename the file to surveys_responses.csv
tail -n+2 'hvbp_hcahps_05_28_2015.csv' > surveys_responses.csv

#create the working directory in hdfs hospital_compare
hdfs dfs -mkdir /user/w205/hospital_compare

#create hospital directory
hdfs dfs -mkdir /user/w205/hospital_compare/hospital

#store hospitals.csf file in hdfs hospital directory
hdfs dfs -put hospitals.csv /user/w205/hospital_compare/hospital

# create effective care directory.
hdfs dfs -mkdir /user/w205/hospital_compare/effective_care

#store effective_care.csv file in hdfs effective care directory.
hdfs dfs -put effective_care.csv /user/w205/hospital_compare/effective_care

#create readmits directory.
hdfs dfs -mkdir /user/w205/hospital_compare/readmits

#store readmission.csv file in hdfs readmits directory.
hdfs dfs -put readmissions.csv /user/w205/hospital_compare/readmits

#create measure dates directory.
hdfs dfs -mkdir /user/w205/hospital_compare/measure_dates

#store measure dates data file.
hdfs dfs -put Measures.csv /user/w205/hospital_compare/measure_dates

#create survey response directory.
hdfs dfs -mkdir /user/w205/hospital_compare/survey_response

#store survey response file.
hdfs dfs -put surveys_responses.csv /user/w205/hospital_compare/survey_response
