set -euo pipefail

cd "${BASH_SOURCE[0]%/*}"

./start.sh
echo "connecting..."
ssh root@ssh-server -o IdentityFile=key -o UserKnownHostsFile=known-hosts hostname
extra-container destroy ssh-server
