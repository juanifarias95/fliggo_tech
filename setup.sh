#!/usr/bin/env bash

mkdir data
cd data/
echo "Downloading credit-data.csv"
wget https://s3-us-west-2.amazonaws.com/fligoo.data-science/TechInterviews/CreditEDA/data/credit-data.csv
cd ..
echo "Downloading Miniconda"
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh
conda update -n base -c defaults conda
conda env create -f environment.yml
conda clean -y --all
