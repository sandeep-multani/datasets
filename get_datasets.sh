#!/bin/bash

declare -A csv_files=(
    ["social-network-ads.csv"]="https://www.dropbox.com/scl/fi/gk5qn2isjjemgq70qvu7t/Social_Network_Ads.csv?rlkey=oltks93f2luz3nq9qn8w9mlat&dl=0"
    ["credit-card-frauds.csv"]="https://www.dropbox.com/scl/fi/axjb833dqr0ejztcwi1qj/creditcard.csv?rlkey=8m55x25zty8x299gvzlglu5pg&dl=0"
    ["house-prices.xlsx"]="https://www.dropbox.com/scl/fi/ewhij69682gada6a1ms1s/HousePricePrediction.xlsx?rlkey=bpxyfeqxxkmo3gmbg8xx79nmn&dl=0"
)

dir="./datasets"
if [ ! -d $dir ]; then
  mkdir -p $dir;
fi

for key in "${!csv_files[@]}"; do
    ./download.sh $dir/$key ${csv_files[$key]}
done
