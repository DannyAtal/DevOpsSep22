cd src

mkdir secretDir

rm -rf maliciousFiles

touch secretDir/.secret

chmod 600 secretDir/.secret

unlink important.link

/bin/bash generateSecret.sh

cat ./secretDir/.secret