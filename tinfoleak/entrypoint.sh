echo "[+] Executing command: tinfoleak.py $@"
python tinfoleak.py $@
echo "[+] Starting HTTP Server"
python -m SimpleHTTPServer 8000
