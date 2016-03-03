Create EXTERNAL TABLE IF NOT EXISTS hospitals (provider_id string, hospital_name string, address string, city string, state string, zip_code string, county_name string, phone_number string, hospital_type string, hospital_ownership string, emergency_services string) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar"=",", "quoteChar"='"', "escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/hospital/';
Create EXTERNAL TABLE IF NOT EXISTS effective_care (provider_id string, hospital_name string, address string, city string, state string, zip_code string, county_name string, phone_number string, condition string, measure_id string, measure_name string, score string, sample string, footnote string, measure_start_date string, measure_end_date string) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar"=",", "quoteChar"='"', "escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/effective_care/';
Create EXTERNAL TABLE IF NOT EXISTS readmissions (provider_id string, hospital_name string, address string, city string, state string, zip_code string, county_name string, phone_number string, measure_name string, measure_id string, compared_to_national string, denominator string, score string, lower_estimate string, higher_estimate string, footnote string, measure_start_date string, measure_end_date string) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar"=",", "quoteChar"='"', "escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/readmits/';
Create EXTERNAL TABLE IF NOT EXISTS measures (measure_name string, measure_id string, measure_start_quarter string, measure_start_date string, measure_end_quarter string, measure_end_date string) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar"=",", "quoteChar"='"', "escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/measure_dates/';
Create EXTERNAL TABLE IF NOT EXISTS survey_response (provider_id string, hospital_name string, address string, city string, state string, zip_code string, county_name string, communication_with_nurses_achievement_points string, communication_with_nurses_improvement_points string, communication_with_nurses_dimension_score string, communication_with_doctors_achievement_points string, communication_with_doctors_improvement_points string, communication_with_doctors_dimension_score string, responsiveness_hospital_staff_achievement_points string, responsiveness_hospital_staff_improvement_points string, responsiveness_hospital_staff_dimension_score string, pain_management_achievement_points string, pain_management_improvement_points string, pain_management_dimension_score string, communication_medicine_achievement_points string, communication_medicine_improvement_points string, communication_medicine_dimension_score string, cleaniliness_quiteness_achievement_points string, cleaniliness_quiteness_improvement_points string, cleaniliness_quiteness_dimension_score string, discharge_achievement_points string, discharge_improvement_points string, discharge_dimension_score string, overall_hospital_achievement_points string, overall_hospital_improvement_points string, overall_hospital_dimension_score string, hospital_base_score string, hospital_consistency_score string) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar"=",", "quoteChar"='"', "escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/survey_response';