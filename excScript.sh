# replace Name with your name 
N=1 #initialization value of N
for n in $(seq 1 5)#values of n between 1 and 5 
do
echo "making the directory saade${n} with changing value of n" #make this message appear on the screen
mkdir saade${n}#creating a folder saade with value of n 
sed -e "s/xxxx/${N}/" inputOrig.txt > input.txt #changing from xxxx to N and pasting it input.txt 
cd saade${n}#entering the folder saade${n}
cp ../input.txt ./
cd ../
N=$(( $N + $n ))#incrementation of N
done
