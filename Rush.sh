apt -qq update && apt -qq install -y git wget pv jq wget python3-dev ffmpeg mediainfo curl 
pip install --upgrade pip
pip install requests
pip3 install requests
sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/okteto-compressor/main/dcompres.sh)"
