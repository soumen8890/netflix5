if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/soumen8890/netflix5.git /netflix5
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /netflix5
fi
cd /netflix5
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
