<< comment
Author: Sadie Thomas + Matt Morgan
Date: 1/15/2022
Description: Runs executable on input files and checks results against answer file
Instructions: Make sure `python3` is a valid command and pass in the python filename as the last argument
comment

#runs against all .in and .ans files in the ./data/sample directory (change path if necessary)
for f in ./data/sample/*.in ; 
	do python3 $1 < "$f" > my_output.txt; 
		diff "${f%.in}.ans" my_output.txt;
		rv=$?
		if [[ $rv == 1 ]]
		then 
			echo "Failed test $f"
		else
			echo "Passed test $f"
		fi
	done

#runs against all .in and .ans files in the /data/secret directory
for f in ./data/secret/*.in ; 
	do python3 $1 < "$f" > my_output.txt; 
		diff "${f%.in}.ans" my_output.txt;
		rv=$?
		if [[ $rv == 1 ]]
		then 
			echo "Failed test $f"
		else
			echo "Passed test $f"
		fi
	done
