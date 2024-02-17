#!/bin/bash

# Creator of Tool: @untw0
# Follow on Twitter: @untw0 < https://twitter.com/untw0
# Follow on Instagram: @untw0 < https://instagram.com/untw0
# Thx for use my Tool! It is still in the testing phase :D

# Check if the number of arguments is correct
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Check if the xss.txt file exists
if [ ! -f "xss.txt" ]; then
    echo "File xss.txt not found."
    exit 1
fi

# URL of the website to be tested
echo " "
echo "======================================================================="
echo "██╗  ██╗███████╗███████╗    ███████╗ ██████╗ █████╗ ███╗   ██╗"
echo "╚██╗██╔╝██╔════╝██╔════╝    ██╔════╝██╔════╝██╔══██╗████╗  ██║"
echo " ╚███╔╝ ███████╗███████╗    ███████╗██║     ███████║██╔██╗ ██║"
echo " ██╔██╗ ╚════██║╚════██║    ╚════██║██║     ██╔══██║██║╚██╗██║"
echo "██╔╝ ██╗███████║███████║    ███████║╚██████╗██║  ██║██║ ╚████║"
echo "╚═╝  ╚═╝╚══════╝╚══════╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝"
echo "Follow @untw0 on all social media!"
echo "======================================================================="
echo " "
url=$1

# Loop through the payloads from the xss.txt file
while IFS= read -r payload; do
    # Make the GET request with the payload injected into the URL
    response=$(curl -s -o /dev/null -w "%{http_code}" "$url$payload")

    # Check the response code and add appropriate marking
    if [ "$response" == "200" ]; then
        echo "Payload: $payload [200]"
    else
        echo "Payload: $payload [404]"
    fi
done < "xss.txt"
