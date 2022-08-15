# Goal
Execute `sudo sh build-host-blacklist.sh` to generate a file which will replace the current `/etc/hosts`.  

It will include commonly blacklisted servers including:
- [Adservers](https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt)
- [Crypto coin miners](https://gitlab.com/ZeroDot1/CoinBlockerLists/-/raw/master/list.txt?inline=false)

# Credit
Thanks to the good people who compiled these lists:

[CoinBlockerLists](https://gitlab.com/ZeroDot1/CoinBlockerLists/): Simple lists that can help prevent cryptomining in the browser or other applications.  

[Blacklist](https://github.com/anudeepND/blacklist): Curated hostfile to block trackers and advertisements

