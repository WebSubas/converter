if [ -z $SOURCE_CODE ]
then
  echo "Cloning main Repository"
  git clone https://github.com/WebSubas/converter /Converter
else
  echo "Cloning Custom Repo from $SOURCE_CODE "
  git clone $SOURCE_CODE /Converter
fi
cd /Converter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
