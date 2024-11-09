# Define the output file
output_file="airplane_info.txt"

# Prompt for each parameter
read -p "Enter Airplane ID: " airplane_id
read -p "Enter Airplane Capacity: " airplane_capacity
read -p "Enter Airport ID: " airport_id
read -p "Enter City: " city
read -p "Enter Country: " country
read -p "Enter Flight Length (in hours): " flight_length

# Write the parameters to the file
echo "Airplane_ID: $airplane_id" >> $output_file
echo "Airplane_Capacity: $airplane_capacity" >> $output_file
echo "Airport_ID: $airport_id" >> $output_file
echo "City: $city" >> $output_file
echo "Country: $country" >> $output_file
echo "Flight_Length: $flight_length" >> $output_file

# Confirm success
echo "Airplane information has been added to $output_file."
