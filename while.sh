N=10
while [ $N -gt 0 ]
do
  if $(docker ps -f 'name=nginx' | grep 'nginx' > /dev/null); then
    echo "Container is up!"
    exit 0
  fi
  echo "Container is not up yet; waiting to retry..."
  N=$(( $N - 1 ))
  sleep 2
done
exit 1

