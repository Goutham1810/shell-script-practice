#Write a script that reads a text file and count the occurences of each word, displaying the top 5 most
#frequent words along with their counts

#filename="C:\Users\kalya\OneDrive\Documents\GitHub\shell-script-practice\sample.txt"
#filecontent="Hi, this is goutham Currently working in SCB SCB is my second company holding an position of Data Engineer I want to move as Devops Engineer."

declare -A words

while read line
do
    for word in $line
    do
        ((words[$word]++))
    done
done

for i in "${!words[@]}"
do
    echo "$i:" "${words[$i]}"
done