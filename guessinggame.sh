#!/bin/bash
#Hello everyone this is radhakrishnan and this is my first ever try to code, hope this will works as I could only test it in online
#be gentle :)
function test_coursera {                                      #this declares the Function
	
	check=0	
	x=$(ls -al | grep -c)
	while [[ $check -eq 0 ]]                               #this is the starts of the loop
	do
	   echo "Guess the number of files in the directory:"
	   read -r guess                                       #this is the reading of input from the user
	   if ! [[ $guess =~ ^[0-9]+$ ]]                       #thisis the starts if statement
	   then 
	      echo "Numer is not valid, please try again
	   elif [[ $guess ==  $x ]]
	   then
	      echo "Congrats You got it, well done!"
	      check=1
	      break
	   elif [[ $guess -lt $x ]]
	   then
	      echo "Number is lower than the expected"
	   else 
	      echo "Numer is higher than  the expected"
	   fi

	done
}

