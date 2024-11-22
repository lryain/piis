apt-get update

echo "Installing Python libraries..."
apt-get install -y python3-pip python3-dev python3-pil python3-smbus libatlas-base-dev
# WAS: pip3 install numpy pi3d==2.34 svg.path rpi-gpio adafruit-ads1x15
apt install python3-venv
mkdir -p /home/lryain/.env && python3 -m venv /home/lryain/.env/piis_dev
source /home/lryain/.env/piis_dev/bin/activate
/home/lryain/.env/piis_dev/bin/python -m pip install --upgrade pip
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
# pi3d deps
/home/lryain/.env/piis_dev/bin/pip install numpy pi3d svg.path rpi-gpio adafruit-blinka
# smbus and Blinka+ADC libs are installed regardless whether ADC is
# enabled; simplifies the Python code a little (no "uncomment this")

mkdir -p /home/lryain/dev
cd /home/lryain/dev
git clone https://github.com/lryain/piis.git /home/lryain/dev/piis_dev
