echo "[+] Executing command: tinfoleak.py $@"
python tinfoleak.py $@
if [ $# -eq 0 ] ; then
 echo "[-] No arguments supplied. Exiting"
 exit
fi
if [[ $@ == *'-h'* ]] ; then
 echo "[-] Exiting the help"
 exit
fi
echo "[+] Starting HTTP Server"
python -m SimpleHTTPServer 8000
