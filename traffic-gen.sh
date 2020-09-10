echo "==== TRAFFIC GENERATING NOW ===="

handler()
{
  echo "==== ENDING TRAFFIC NOW ====";
	exit 1;
}
trap handler INT

for i in {1..100}
do
	curl istio-ingressgateway-my-istio-system.cpat-dev-sandbox-ocp44-afb9c6047b062b44e3f1b3ecfeba4309-0000.us-south.containers.appdomain.cloud/version
done
echo "==== ENDING TRAFFIC NOW ====";
