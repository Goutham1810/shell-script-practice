#Write a script that reads a text file and count the occurences of each word, displaying the top 5 most
#frequent words along with their counts

filename="/home/ec2-user/shell-script-practice\sample.txt"
#filecontent="Hi, this is goutham Currently working in SCB SCB is my second company holding an position of Data Engineer I want to move as Devops Engineer."

read -p $filename
while read line
do
    echo $line
done < $filename