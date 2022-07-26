for i in $(seq 1 1000000)
do
  curl -w "Time: ${i}, Code: %{http_code}, speed: %{speed_download}\n" -o /dev/null -s http://$Microservice_Demo_Exteranl_IP/cart
done