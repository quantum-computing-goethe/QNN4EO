cd /workspaces/QNN4EO

mkdir -p datasets/EuroSAT
cd datasets/EuroSAT

# # git clone https://github.com/phelber/EuroSAT.git
# wget https://madm.dfki.de/files/sentinel/EuroSATallBands.zip
wget https://madm.dfki.de/files/sentinel/EuroSAT.zip

unzip EuroSAT.zip

du -h -d 1 ../
