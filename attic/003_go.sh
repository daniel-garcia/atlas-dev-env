if which go; then
  echo "go is installed"
  /usr/local/go/bin/go version
else
  curl https://dl.google.com/go/go1.19.linux-amd64.tar.gz --output go1.19.linux-amd64.tar.gz
  tar xvfz go1.19.linux-amd64.tar.gz   
  sudo rm -fr /usr/local/go
  sudo mv go /usr/local
  rm -f go1.19.linux-amd64.tar.gz
  echo "PATH=\$PATH:/usr/local/go/bin" >> $HOME/.bashrc
  source ~/.bashrc

fi

