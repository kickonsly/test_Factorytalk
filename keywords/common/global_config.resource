*** Variables ***
######   Setting Driver   ######
${CHROME_DRIVER_PATH_WINS}    ${CURDIR}${/}..${/}..${/}resources${/}drivers${/}win${/}chromedriver_109.exe
${CHROME_DRIVER_PATH_MAC}     ${CURDIR}${/}..${/}..${/}resources${/}drivers${/}mac64${/}chromedriver
${CHROME_DRIVER_PATH_LINUX}   ${/}usr${/}local${/}bin${/}chromedriver

######   Time Delay   ######
${TIME_DELAY_S}     10s
${TIME_DELAY_M}     20s
${TIME_DELAY_L}     40s
${TIME_SLEEP_S}     0.5s
${TIME_SLEEP_M}     1s
${TIME_SLEEP_L}     3s

######   Index Loof   ######
${INDEX}    0
${INDEX_FAIL}   0

######   Path ing   ######
${PATH_IMG_1}       ${EXECDIR}${/}resources${/}img${/}img1.png
${PATH_IMG_2}       ${EXECDIR}${/}resources${/}img${/}img2.png
${PATH_IMG_3}       ${EXECDIR}${/}resources${/}img${/}img3.png
