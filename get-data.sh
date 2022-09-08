cd $(dirname $(realpath "${BASH_SOURCE:-$0}")) # cd in repo root

DATA_PATH="datasets/EuroSAT"

# [[ ! -d $DATA_PATH ]] && echo "&& path does not exists" || echo "|| path exists"
# [ "$(du -sm $DATA_PATH | cut -f 1)" -lt 134 ] && echo "&& folder is < 134MB" || echo "|| folder is >= 134MB"

if [ ! -d $DATA_PATH ] || [ "$(du -sm $DATA_PATH | cut -f 1)" -lt 134 ]; then
# if [ ! -d "$DATA_PATH" ]; then
    echo "Downloading Data"
    mkdir -p $DATA_PATH
    cd $DATA_PATH

    # https://github.com/phelber/EuroSAT.git
    # wget https://madm.dfki.de/files/sentinel/EuroSATallBands.zip
    wget https://madm.dfki.de/files/sentinel/EuroSAT.zip # 90 MB

    unzip EuroSAT.zip
    rm EuroSAT.zip
else
    echo "Data already downloaded"
fi

du -hs $DATA_PATH
