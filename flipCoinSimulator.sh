target_wins=21

heads=0
tails=0

while [ $heads -lt $target_wins ] && [ $tails -lt $target_wins ]
do
  result=$((RANDOM % 2))
  if [ $result -eq 0 ]
  then
    heads=$((heads+1))
  else
    tails=$((tails+1))
  fi
done

echo "Results after $((heads+tails)) flips:"
if [ $heads -gt $tails ]
then
  echo "Heads wins by $((heads-tails))"
elif [ $tails -gt $heads ]
then
  echo "Tails wins by $((tails-heads))"
else
  echo "It's a tie!"
fi
