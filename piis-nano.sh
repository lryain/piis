apt-get update

echo "Installing Python libraries..."
apt-get install -y python3-pip python3-dev python3-pil python3-smbus libatlas-base-dev
# WAS: pip3 install numpy pi3d==2.34 svg.path rpi-gpio adafruit-ads1x15
apt install python3-venv
source /home/pi/.venv/pi3d-dev/bin/activate
#/home/pi/.venv/pi3d-dev/bin/python -m pip install --upgrade pip
#pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
# pi3d deps
/home/pi/.venv/pi3d-dev/bin/pip install numpy pi3d svg.path rpi-gpio adafruit-blinka

mkdir -p /home/pi/dev
cd /home/pi/dev
git clone https://github.com/lryain/piis.git piis_dev