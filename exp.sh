g++ main_latency.cpp -Ofast -o main_latency
g++ main_goodput.cpp -Ofast -o main_goodput

./main_latency ../Index_homework/dataset/linear.csv
echo "==============================="
./main_latency ../Index_homework/dataset/seg1.csv
echo "==============================="
./main_latency ../Index_homework/dataset/seg10.csv
echo "==============================="
./main_latency ../Index_homework/dataset/normal.csv
echo "==============================="
./main_goodput ../Index_homework/dataset/linear.csv
echo "==============================="
./main_goodput ../Index_homework/dataset/seg1.csv
echo "==============================="
./main_goodput ../Index_homework/dataset/seg10.csv
echo "==============================="
./main_goodput ../Index_homework/dataset/normal.csv
echo "==============================="
