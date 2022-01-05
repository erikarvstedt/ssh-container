cd "${BASH_SOURCE[0]%/*}"
./start.sh
echo "connecting..."
ssh root@ssh-server -o IdentityFile=key UserKnownHostsFile=known-hosts hostname
extra-container destroy ssh-server
