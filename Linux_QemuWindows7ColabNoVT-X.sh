wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar xf ngrok-v3-stable-linux-amd64.tgz
chmod +x ngrok
read -p "Paste authtoken here (Copy and Ctrl+V to paste then press Enter): " CRP
ngrok config add-authtoken 1lvbMEFO6r2uj8JDRnIoXrAxA20_87gxFUcUqyg2pPNFQ4u9s
nohup ./ngrok tcp 5900 &>/dev/null &
echo Please wait for installing...
echo "Installing QEMU (2-3m)..."
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo Downloading Windows Disk...
curl -L -o lite7.qcow2 https://app.vagrantup.com/thuonghai2711/boxes/WindowsQCOW2/versions/1.0.3/providers/qemu.box
echo "Windows 7 x86 Lite On Google Colab"
echo Your VNC IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Note: Use Right-Click Or Ctrl+C To Copy"
echo "Please Keep Colab Tab Open, Maximum Time 12h"
echo Script by fb.com/thuong.hai.581
sudo qemu-system-x86_64 -vnc :0 -hda lite7.qcow2  -smp cores=2  -m 8192M -machine usb=on -device usb-tablet > /dev/null 2>&1
