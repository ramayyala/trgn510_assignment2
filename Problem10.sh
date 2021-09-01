num1=$1
num2=$2
num1k=$(echo "$1 + 273.15" | bc)
multp=$(echo "${num1k} * ${num2}" | bc)
result=$(echo "${multp} - 273.15" | bc)
echo $result
