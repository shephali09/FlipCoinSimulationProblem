num_flips=20

heads=0
tails=0

for (( i=1; i<=$num_flips; i++ ))
do
  result=$((RANDOM % 2))
  if [ $result -eq 0 ]
  then
    heads=$((heads+1))
  else
    tails=$((tails+1))
  fi
done

echo "Results after $num_flips flips:"
echo "Heads: $heads"
echo "Tails: $tails"

