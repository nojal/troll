start() {
  clear
  echo "=========================================="
  sleep 0.03
  echo
  sleep 0.03
  echo ▄▄▄█████▓ ██▀███   ▒█████   ██▓     ██▓
  sleep 0.03
  echo ▓  ██▒ ▓▒▓██ ▒ ██▒▒██▒  ██▒▓██▒    ▓██▒
  sleep 0.03
  echo ▒ ▓██░ ▒░▓██ ░▄█ ▒▒██░  ██▒▒██░    ▒██░
  sleep 0.03
  echo ░ ▓██▓ ░ ▒██▀▀█▄  ▒██   ██░▒██░    ▒██░
  sleep 0.03
  echo   ▒██▒ ░ ░██▓ ▒██▒░ ████▓▒░░██████▒░██████▒
  sleep 0.03
  echo   ▒ ░░   ░ ▒▓ ░▒▓░░ ▒░▒░▒░ ░ ▒░▓  ░░ ▒░▓  ░
  sleep 0.03
  echo   ░      ░▒ ░ ▒░  ░ ▒ ▒░ ░ ░ ▒  ░░ ░ ▒  ░
  sleep 0.03
  echo   ░      ░░   ░░  ░ ░ ▒    ░ ░  ░  ░ ░  ░
  sleep 0.03
  echo           ░         ░ ░      ░  ░    ░  ░
  sleep 0.03
  echo "=========================================="
  sleep 0.07
}

get_sms=$(curl -s http://zlucifer.com/api/sms.php)
get_call=$(curl -s http://zlucifer.com/api/call.php)

mulai (){
    echo "Gunakan Troll Project Lagi?"
    echo "y/n?"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "Terimakasih sudah menggunakan Troll project"
    fi
}
#spam
spam(){
    clear
    echo
    echo "[1] Spam SMS"
    echo "[2] Spam Telp"
    echo "[3] Close Troll Project"
    echo
    echo "1/2/3?"
    read pilih
    if [ $pilih = "1" ]; then
            clear
            echo "Troll Spam SMS"
            #function spam
            echo
            echo "Silahkan masukan nomor telp target"
            echo contoh 0812345678
            read target # masukin no telp
            echo
            echo "Berapa sms yang mau dikirim?"
            read paket
            echo
            echo Apakah nomor $target "dan SMS dikirim "$paket" sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    clear
                    echo Melakukan spam SMS ke nomor $target
                    echo
                    echo "Jangan close aplikasi sebelum spam selesai"
                    echo "=========================================="
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " Gunakan tools buat iseng"
            else
                    echo "Kesalahan"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            clear
            echo "Troll Spam Call"
            #function spam
            echo
            echo "Silahkan masukan nomor telp target"
            echo contoh 0812345678
            read target # masukin no telp
            echo
            echo "Gunakan API Grab/Toped?"
            echo "[1] GRAB"
            echo "[2] TOKOPEDIA"
            echo "1/2?"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="toped"
            fi
            echo Apakah nomor $target dan spam menggunakan $api_spam "sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  clear
                  echo Melakukan spam call ke nomor $target
                  echo
                  echo "Jangan close aplikasi sebelum spam selesai"
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                  echo " Gunakan tools buat iseng"
            else
                  echo Kesalahan, silahkan coba lagi
            fi
        mulai
    elif [ $pilih = "3" ]; then
        echo "Terimakasih sudah menggunakan Troll project :)"
        close
    else
        clear
        echo "Kesalahan"
        mulai
    fi
}
close(){
    exit
}
clear
start
echo Selamat datang Gilang ":)"
echo
echo "Mulai troll project?"
echo "y/n?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi
