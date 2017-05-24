response=$(curl --write-out %{http_code} --silent --output /dev/null http://www.myfitnesspal.com/food/calories/$1)

if [ "$response" == "200" ]; then
  echo "valid" > "enum/$1" | cat
fi
