while ! echo y | sudo apt-get update; do
    sleep 5
    sudo apt-get update
done

while ! echo y | sudo apt-get install clamav clamav-daemon -y; do
    sleep 5
    sudo apt-get install clamav clamav-daemon -y
done

while ! echo y | echo "TCPSocket 3310" | sudo tee -a /etc/clamav/clamd.conf; do
    sleep 5
    echo "TCPSocket 3310" | sudo tee -a /etc/clamav/clamd.conf
done