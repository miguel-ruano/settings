VERSION="go1.16.6.linux-amd64.tar.gz"
wget -O "tmps/${VERSION}" "https://golang.org/dl/${VERSION}"
sudo tar -C /usr/local -xzf "tmps/${VERSION}"
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
