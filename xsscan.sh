#!/bin/bash

# ----------------------------------------------------------------------
# Follow Creator of Tool on Social Midia:
# Creator of Tool: @untw0
# Follow on Twitter: @untw0 < https://twitter.com/untw0
# Follow on Instagram: @untw0 < https://instagram.com/untw0
# ----------------------------------------------------------------------
# Follow Collaborator of Tool on Social Midia:
# Collaborator: @sput_tesla
# Follow on Instagram: @sput_tesla < https://instagram.com/sput_tesla
# ----------------------------------------------------------------------
# Thx for use my Tool! It is still in the testing phase :D
# ----------------------------------------------------------------------

# Check if the number of arguments is correct
if [ $# -ne 1 ]; then
    echo "Usage: $0 https://example.com/page?param="
    exit 1
fi

if [ ! -f "xss.txt" ]; then
    echo "File xss.txt not found."
    exit 1
fi

echo -e "\e[1;32m\e[0m"
echo "======================================================================="
echo "██╗  ██╗███████╗███████╗    ███████╗ ██████╗ █████╗ ███╗   ██╗"
echo "╚██╗██╔╝██╔════╝██╔════╝    ██╔════╝██╔════╝██╔══██╗████╗  ██║"
echo " ╚███╔╝ ███████╗███████╗    ███████╗██║     ███████║██╔██╗ ██║"
echo " ██╔██╗ ╚════██║╚════██║    ╚════██║██║     ██╔══██║██║╚██╗██║"
echo "██╔╝ ██╗███████║███████║    ███████║╚██████╗██║  ██║██║ ╚████║"
echo "╚═╝  ╚═╝╚══════╝╚══════╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝"
echo "Follow @untw0 on all social media!"
echo "======================================================================="
echo -e "\e[1;32m\e[0m"
url=$1

while IFS= read -r payload; do
    # Make the GET request with the payload injected into the URL

    response=$(curl -k -s -o /dev/null -w "%{http_code}" "$url$payload")

    # Check if the response code is 200 (OK)
    if [ "$response" == "200" ]; then
        lengh=$(curl -k -s -o /dev/null -w "%{size_download}" "$url$payload")
        filter=$(curl -k -s -L "$url$payload" | grep -Fsi "\$payload")
        if $filter 2>/dev/null; then
            echo -e "\e[1;32m[+] - $url\e[0m" 2>/dev/null
            echo -e "\e[1;38mPayload: $payload\e[0m \e[1;32m[status: $response]\e[0m\e[1;33m[lengh: $lengh]\e[0m\n" 2>/dev/null
        fi
    fi

done < "xss.txt"
