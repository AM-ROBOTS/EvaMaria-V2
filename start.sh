if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AM-ROBOTS/EvaMaria-V2 /EvaMaria-V2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria-V2
fi
cd /EvaMaria-V2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
