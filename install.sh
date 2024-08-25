#!/usr/bin/env bash

script_dir=$(dirname "$(realpath "$0")")

sudo ln -sf "$script_dir/src/aptar.py" "/usr/local/bin/aptar"
sudo ln -sf "$script_dir/src/apti.py" "/usr/local/bin/apti"
sudo ln -sf "$script_dir/src/aptr.py" "/usr/local/bin/aptr"
sudo ln -sf "$script_dir/src/aptrei.py" "/usr/local/bin/aptrei"
sudo ln -sf "$script_dir/src/aptse.py" "/usr/local/bin/aptse"
sudo ln -sf "$script_dir/src/aptsh.py" "/usr/local/bin/aptsh"
sudo ln -sf "$script_dir/src/aptu.py" "/usr/local/bin/aptu"
sudo ln -sf "$script_dir/src/aptug.py" "/usr/local/bin/aptug"

echo "Aptu aliases successfully installed!"