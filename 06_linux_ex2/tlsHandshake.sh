
 #!/bin/bash
 #curl -X POST -H "Content-Type: application/json" \ -d '{"clientVersion": "3.2", "message": "Client Hello"}'  \http://ec2-54-207-102-47.sa-east-1.compute.amazonaws.com:8081\clienthello


#Client Hello HTTP request to the server + Extracting the text by jq command and saving in files
curl -X POST -H "Content-Type:application/json" -d '{"clientVersion":"3.2","message":"Client Hello"}' http://ec2-54-207-102-47.sa-east-1.compute.amazonaws.com:8081/clienthello | jq -r '.sessionID'>sessionID.json
#cat sessionID.json
curl -X POST -H "Content-Type:application/json" -d '{"clientVersion":"3.2","message":"Client Hello"}' http://ec2-54-207-102-47.sa-east-1.compute.amazonaws.com:8081/clienthello |  jq -r '.serverCert'>cert.pem
#cat cert.pem

#variable definition
SESSION_ID=$(cat /ex2/DevOpsSep22/06_linux_ex2/sessionID.json)



#download of Certificate Authority (in our case Amazon Web Services) who issued and signed the server cert
wget - https://devops-course-sep-22.s3.sa-east-1.amazonaws.com/ex2/cert-ca-aws.pem

#verify CA
cert.pem
VERIFICATION_RESULT=$( openssl verify -CAfile cert-ca-aws.pem  )
if [ "$VERIFICATION_RESULT" != "cert.pem: OK" ]; then
  echo "Server Certificate is invalid."
  exit 1
fi

#generate a 32 random bytes string in masterKey.txt
 openssl rand -hex 32 > masterKey.txt
#cat masterKey.txt

#encrypt the generated master-key secret with the server certificate
# openssl smime -encrypt -aes-256-cbc -in masterKey.txt -outform DER cert.pem | base64 -w 0 >tmp_master_key.pem
#cat tmp_master_key.pem
#MASTER_KEY=$(cat /ex2/DevOpsSep22/06_linux_ex2/tmp_master_key.pem)
MASTER_KEY=$(openssl smime -encrypt -aes-256-cbc -in masterKey.txt -outform DER cert.pem | base64 -w 0)

# the content of encryptedSampleMessage is stored in a file called encSampleMsg.txt
curl -X POST -H "Content-Type:application/json" -d '{"'sessionID'":"$SESSION_ID","'masterKey'":"$MASTER_KEY","sampleMessage":"Hi server, please encrypt me and send to client!"}' http://ec2-54-207-102-47.sa-east-1.compute.amazonaws.com:8081/keyexchange  |  jq -r '.'>enc_not_ready.json




cat encnotready.json | jq -r '.encryptedSampleMessage' > encSampleMsg.txt

#encryptedSampleMessage is encoded in base64, before you decrypt it, encode it to binary
cat encSampleMsg.txt | base64 -d > encSampleMsgReady.txt
# file encSampleMsgReady.txt is ready now to be used in "openssl enc...." command




if [ "$DECRYPTED_SAMPLE_MESSAGE" != "Hi server, please encrypt me and send to client!" ]; then
  echo "Server symmetric encryption using the exchanged master-key has failed."
  exit 1
else
  echo "Client-Server TLS handshake has been completed successfully"
fi







