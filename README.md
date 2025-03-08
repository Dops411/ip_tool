# ip_tool

1. kind create cluster --config kind-config.yaml
2. docker build -t ip-tool:latest .
3. kind load docker-image ip-tool:latest --name ip-tool
4. k apply -f deployment.yaml
5. One way to find colliding IPs is using sh approach:-
   In this approach we would write the IP column using awk command and below command:-
      kubectl get pods -A -o wide | awk 'NR > 1 {print $9}' > ip_list.txt
      cat ip_list.txt | uniq -cd # this would list all duplicates IPs along with the count.
   
