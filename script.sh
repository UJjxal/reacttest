cd /tmp/pe || exit
rm -rf IDSP-IncedoDataSciencePlatform/
git clone -b deployment-pe --single-branch https://95f3062b002ab7b528b50131c060ffbcc632546b@github.com/ITSL-Engg/IDSP-IncedoDataSciencePlatform.git
cd /tmp/pe/IDSP-IncedoDataSciencePlatform/incedo/ui || exit
npm install
npm run build

cd /var/www/html || exit
mkdir temp-pe
cp -r /tmp/pe/IDSP-IncedoDataSciencePlatform/incedo/ui/build/* temp-pe
cd temp-pe || exit
rm -f envconfig.js
cp "envconfig-pe.js" envconfig.js
rm -f envconfig-*