g++ main_latency.cc -Ofast -o ./build/main_latency
g++ main_goodput.cc -Ofast -o ./build/main_goodput
g++ main_workload.cc -Ofast -o ./build/main_workload

dataset=(linear seg1 seg10 normal)
for ds in ${dataset[@]}
do
    echo ">>>>>>>>>> $ds: 时延 <<<<<<<<<<"
    ./build/main_latency ../Index_homework/dataset/$ds.csv
done

for ds in ${dataset[@]}
do
    echo ">>>>>>>>>> $ds: 不同静态数据集吞吐量 <<<<<<<<<<"
    ./build/main_goodput ../Index_homework/dataset/$ds.csv
done

for ds in ${dataset[@]}
do
    echo ">>>>>>>>>> $ds: 不同工作负载的吞吐量 <<<<<<<<<<"
    ./build/main_workload ../Index_homework/dataset/$ds.csv
done
