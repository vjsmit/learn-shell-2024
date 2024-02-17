a=10

while [ $a -gt 0 ]; do
  echo Hello World - $a
  sleep 1
  a=$(($a-1))
done

for component in frontend mongodb catalogue redis user cart mysql shipping rabbitmq payment dispatch ; do
  echo creating Componenet - ${component}
  aws ec2 run-instances --image-id ami-0f3c7d07486cad139 --count 1 --instance-type t2.micro
  sleep 1
done