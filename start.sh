if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Krmovierequest/KD-Filter-Bot-new.git /Newbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KD-Filter-Bot-new
fi
cd /KD-Filter-Bot-new
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
