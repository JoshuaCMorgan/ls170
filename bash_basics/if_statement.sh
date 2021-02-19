## syntax
# if [[ <condition> ]]
# then
#   <commands>
# fi

if true
then
  echo 'True'
fi

# Output a string if it is longer than 0
string='Hello'

if [[ -n $string ]]
then
  echo $string
fi

# Compare two integers and output a string if they are equal
integer_1=10
integer_2=10

if [[ $integer_1 -eq $integer_2 ]]
then
  echo $integer_1 and $integer_2 are the same!
fi

# Output 'File exits' if the file `hello_world.sh` exists
if [[ -e ./hello_world.sh ]]
do
  echo "File exists"
fi

## Multiple conditions
# nested if, if integer is less than 10, then output that it is; if it is less than 5, output that it is
integer=4

if [[ $integer -lt 10 ]]
then
  echo $integer is less than 10

  if [[ $integer -lt 5 ]]
  then
    echo $integer is also less than 5
  fi
fi

## two conditional branches with if and else
integer=15

if [[ $integer -lt 10]]
then
  echo $integer is less than 10
else
  echo $integer is not less than 10
fi

# three conditionals with if, elif, and else
integer=15

if [[ $integer -lt 10 ]]
then
  echo $integer is less than 10
elif [[ $integer -gt 20 ]]
then
  echo $integer is greater than 20
else
  echo $integer is between 10 and 20
fi

# matching two conditions using && (and)
integer=15

if ([[ $integer -gt 10]] && [[ $integer -lt 20 ]])
then
  echo $integer is between 10 and 20.
fi

# matching one of two conditions using || (or)
integer=12

if [[ $integer -lt 5 ]] || [[ $integer  -gt 10]]
then
  echo $integer is less than 5 or greater than 10
fi

#negating conditions with ! (not)
integer=8

if ! ([ $integer -lt 5 ] || [ $integer -gt 10 ])
then
  echo $integer is between 5 and 10.
fi