#!/bin/bash

cd output/


echo "Running assetfinder ......"
cat ../domains.txt | assetfinder --subs-only | tee assetfinder.txt 

echo "Running subfinder ......."


for i in $(cat ../domains.txt)
do 

subfinder -d $i | tee subfinder.out

done 


echo "Running amass ....."

amass enum -passive -df ../domains.txt | tee amass.txt

cat amass.txt subfinder.out assetfinder.txt | sort -u | tee subdomains.out 

rm amass.txt subfinder.out assetfinder.txt


git add subdomains.out
git config --global user.email "max9036461@gmail.com"
git config --global user.name "osamatest1"
git commit -a -m "SUBDOMAIN ENUMERATION DONE"
git push -u origin main
echo " SUBDOMAIN ENUMERATION DONE"



############################

cat subdomains.out | httpx -silent -tech-detect -status-code -vhost -method -follow-redirects  -no-color -rate-limit 250 -cname -x all -websocket -o httpx_result.txt
cat subdomains.out | httprobe -c 100 -p http:8080 -p https:8443 -p http:81 -p https:8080 | tee http_probe.txt
sort -u http_probe.txt -o http_probe.txt
git add http_probe.txt httpx_result.txt
git config --global user.email "max9036461@gmail.com"
git config --global user.name "osamatest1"
git commit -a -m "HTTPX AND HTTPROBE DONE"
git push -u origin main
echo "HTTPX AND HTTPROBE DONE"
############################

nuclei -nc -l http_probe.txt -t ../nuclei-templates/ -silent -bs 300 -rl 300 | tee -a nuclei-result.txt

git add nuclei-result.txt
git config --global user.email "max9036461@gmail.com"
git config --global user.name "osamatest1"
git commit -a -m "NUCLEI DONE"
git push -u origin main
echo "NUCLEI DONE"