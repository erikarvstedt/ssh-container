cd "${BASH_SOURCE[0]%/*}"
./start.sh
echo "connecting..."
ssh root@ssh-server -o IdentityFile=key -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o LogLevel=ERROR hostname
extra-container destroy ssh-server
