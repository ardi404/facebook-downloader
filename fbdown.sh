#!/bin/bash
# FACEBOOK DOWNLOADER WITH BASH SHELL
RED=$(tput setaf 1) #MERAH
NORMAL=$(tput sgr0)
if [[ -z $(command -v curl && command -v grep) ]]; then
	printf "sepertinya belom di install ...\n"
	exit
fi
baner(){
echo -e "${RED}
                                                                                           
   ##   #                 #                        ##                      #               
  #  #  #                 #                         #                      #               
  #     # ##           ## #   ###   #   #  # ##     #     ###    ###    ## #   ###   # ##  
 ####   ##  #  #####  #  ##  #   #  #   #  ##  #    #    #   #      #  #  ##  #   #  ##  # 
  #     #   #         #   #  #   #  # # #  #   #    #    #   #   ####  #   #  #####  #     
  #     ##  #         #  ##  #   #  # # #  #   #    #    #   #  #   #  #  ##  #      #  CREATE BY -> widhisec   
  #     # ##           ## #   ###    # #   #   #   ###    ###    ####   ## #   ###   #  
"
}
baner
fbdown(){
read -p "${NORMAL}[?] URL :" url
printf "[?] FILE NAME:"; read namafile
agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.1 Safari/605.1.15"
        okEY=$(curl --silent "https://fbdownloader.net/download/?url=${url}" -A "$Agent" \
        -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" \
        -H "Accept-Language: id,en-US;q=0.7,en;q=0.3"\
        -H "Referer: https://fbdownloader.net/" \
        -H "Connection: keep-alive" \
        -H "Cookie: __cfduid=dd7ef794ff4967e8d290f438aea038d631563060205; PHPSESSID=1af3ot3pgckptjrfhi41s03757; _ga=GA1.2.1542120481.1563060211; _gid=GA1.2.1163781838.1563060211" \
        -H "Upgrade-Insecure-Requests: 1" \
        -H "TE: Trailers")
        EZZ=$(echo -e "$okEY" | grep -Po '(?<=<a href=").*?(?=")' | tail -3 | head -1)
   bgo=$(echo -e "$EZZ")
   exor=$(wget $bgo --show-progress -q -O $namafile.mp4)
              echo -e "$exor"
}
fbdown