grep "$1" $2_Dealer_schedule | awk '{print $5, $6}' 
# for first argument user should input full date and AM/PM in double quotes "**:**:** AM \| PM"
# for second argument user should in put 4 digit date preceding file name i.e. 0310