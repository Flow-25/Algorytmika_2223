#!/bin/bash
json1=$(curl http://api.nbp.pl/api/exchangerates/rates/A/EUR/)
json2=$(curl http://api.nbp.pl/api/exchangerates/rates/A/USD/)
json3=$(curl http://api.nbp.pl/api/exchangerates/rates/A/CHF/)
json4=$(curl http://api.nbp.pl/api/exchangerates/rates/A/GBP/)
a=$(echo "$json1"|jq '.rates[0].mid')
b=$(echo "$json2"|jq '.rates[0].mid')
c=$(echo "$json3"|jq '.rates[0].mid')
d=$(echo "$json4"|jq '.rates[0].mid')
echo "EUR : $a"
echo "USD : $b"
echo "CHF : $c"
echo "GBP : $d"

