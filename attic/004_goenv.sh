
if ! grep goenv ~/.bashrc; then
  mkdir -p ~/go/src
  mkdir -p ~/go/pkg
  mkdir -p ~/go/bin

  echo "PATH=\"\$PATH:\$HOME/bin:\$HOME/go/bin\" # goenv" >> ~/.bashrc
  source ~/.bashrc
fi
 
