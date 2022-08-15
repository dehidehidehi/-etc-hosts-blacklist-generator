TARGET_DIR="./hosts-list/download"

rm -Rf $TARGET_DIR
mkdir $TARGET_DIR

echo "Downloading blacklist into $TARGET_DIR"
# Update lists directly from repos
curl -o $TARGET_DIR/adios-adblocker.txt https://raw.githubusercontent.com/AlexRabbit/ADios-ADS/master/hosts || exit 1
#curl -o $TARGET_DIR/anudeepnd-adservers.txt https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt || exit 1
#curl -o $TARGET_DIR/developerdan-facebook-extended.txt https://www.github.developerdan.com/hosts/lists/facebook-extended.txt || exit 1
curl -o $TARGET_DIR/coinblockerlists-coinminers-all.txt https://gitlab.com/ZeroDot1/CoinBlockerLists/-/raw/master/list.txt?inline=false || exit 1

# Merge
echo "Creating new host file"
rm ./hosts
touch ./hosts
cat ./hosts-list/*.txt $TARGET_DIR/*.txt > ./hosts

# replace machine host
echo "Replacing /etc/hosts"
mv ./hosts /etc/hosts
echo "Done!"
