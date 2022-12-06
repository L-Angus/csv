#！gen.sh

i=1
name=example_${i}.csv
touch ${name}
echo "TestFlow, TestFlowItem, MeasureCondition, TestNo, HighLimit, LowLimit" > ${name}
for j in {1..10000000}; 
do
  flow=flow_${j}
  item=item_${j}
  meas=meas_${j}
  testno=testno_${j}
  high=high_${j}
  low=low_${j}
  echo ${flow},${item},${meas},${testno},${high},${low} >> ${name}
  let "j+=1"
done



