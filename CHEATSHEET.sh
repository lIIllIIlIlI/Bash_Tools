#!/bin/bash


# Check if input is correct     ******  ERWEITERN DURCH PARAMETERÜBERGABE ENTSPRECHEND BUCH *******
if [[ $# -gt 1 ]] 
then
    echo "Error: Illegal number of arguments; expecting at most 1 argument"
    echo "* Call without argument to execute all cores"
    echo "* Usage: ./update_cycle_cost_forAllCores.sh || ./update_cycle_cost_forAllCores.sh <arch>"
    echo "*   <arch>: ARM_CORTEX_A7 ARM_CORTEX_A9 ARM_CORTEX_A15 ARM_CORTEX_A53 ARM_CORTEX_A57 
    ARM_CORTEX_A72 INFINEON_TC16E INFINEON_TC16P INTEL_ATOM_SILVERMONT NXP_E6500 
    RENESAS_RH850G3M XILINX_MICROBLAZE"
    exit 1
fi

# stop execution if a used variable is not set
set -u
# stop if error return statement occurs. Vorsicht, wenn ein command != 0 zurückliefert gilt er als error, obwohl das die gewollte Funktion sein kann
set -e
# track each command, for debugging purpose
set +x

CURRENT_DIR=$PWD

#Create clean directory
COPY_DIR=${CURRENT_DIR}/Copy
if [ -d "$COPY_DIR" ]; then
	rm -rf ${COPY_DIR}/*
else
	echo ERROR: Copy directory does not exist
	exit 1
fi


ARRAY="element1 element2 element3 \
element 4"

for ARRAYELEMENT in ARRAY
do
	print "doint something with element"
fi
if [[ "$ARRAYELEMENT" == "element1" || "$CORE" == "element2" ]]
then
fi
while
do
done


#BASH SCRIPTING

#!/bin/bash		#bash interpreter location

#SOME COMMANDS
echo			#print on command line

cat mytext.txt > newfile.txt	#print mytext.txt into newfile.txt (if this not exist,
				#it will be created)

cat mytext.txt >> another_text_file.txt	#append mytext.txt to another_text_file.txt

env			#see all the variables

#PIPES
comm1 | comm2	#Send the output from one program (comm1) as input to another 
		#program (comm2) 

#SPECIAL VARIABLES
    $0 - The name of the Bash script.
    $1 - $9 - The first 9 arguments to the Bash script. (As mentioned above.)
    $# - How many arguments were passed to the Bash script.
    $@ - All the arguments supplied to the Bash script.
    $? - The exit status of the most recently run process.
    $$ - The process ID of the current script.
    $USER - The username of the user running the script.
    $HOSTNAME - The hostname of the machine the script is running on.
    $SECONDS - The number of seconds since the script was started.
    $RANDOM - Returns a different random number each time is it referred to.
    $LINENO - Returns the current line number in the Bash script.

#ASSIGN VARIABLE
var=value		#no spaces and no $
var='Hello $World'	#no interpolation ($World remains $World)
var="Hello $World"	#interpolation ($World is substituted with its value)

#LOCAL VARIABLE
local var_name=<var_val> #variable is visible only inside the current scope

#COMMAND SUBSTITUTION
var=$( my_command )	#execute my_command and store its output result into var

#EXPORT VARIABLE
export var		#tell the bash to make a copy of var for each process is going
			#to be created; the new processes can only read and modify their
			#copy of var, but not modify the original one.

#ARITHMETIC
#result assigned to a variable
let a=5+4		#no spaces allowed
let "a = 5 + 4"		#spaces allowed
let a++
let "a = $1 + 30"	#sum 30 to the first command line argument
#result printed out
expr 5 + 4		#spaces must be present
expr "5 + 4"		#spaces arbitrary
expr 5 \* $1
a=$( expr 10 - 3 )	#alternative way to assign result to a variable

#IF STATEMENT
if [ <some test> ]	#execute commands if the test is true
then
  <commands>
fi

#IF ELSE STATEMENT
if [ <some test> ]
then
  <commands>
else
  <other commands>
fi

#IF ELIF ELSE STATEMENT
if [ <some test> ]
then
  <commands>
elif [ <some test> ]
then
  <different commands>
else
  <other commands>
fi

#BOOLEAN OPS IN CONDITIONS
if [ <test> ] && [ <test> ]
if [ <test> ] || [ <test> ]

#CASE STATEMENT
case <variable> in
<pattern1>)
  <commands1>
  ;;
<pattern2>)
  <commands2>
  ;;
*)
  <other_commands>
  ;;
esac

#WHILE STATEMENT
while [ <some test> ]
do
  <commands>
done

#UNTIL STATEMENT
until [ <some test> ]
do
  <commands>
done

#FOR LOOP
for var in <list>	#iterate over a list and store in var the current element
do
  <commands>
done

for var in {10..0..2}	#use a range instead of a list (from 10 to 0 with step of 2)

#break & continue in loops
break		#it allows to exit from the loop (e.g. when a condition occurs)
continue	#it allows to jump to the next iteration (e.g. when a condition
		#occurs

#array
declare -a arr=("el1" "el2" "el3")	#declare an array variable

for i in "${arr[@]}"		#now loop through the above array
do
   echo "$i"			#or do whatever with individual element of the array
done

#SELECT STATEMENT
select var in <list>	#implements a menu showing elements in list and asking the
do			#user to choose one, which is stored in var before executing
 <commands>		#commands
done



