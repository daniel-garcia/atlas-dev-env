        set -x
        cd "$(mktemp -d)"
        OS="$(uname | tr '[:upper:]' '[:lower:]')"
        ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')"
        curl -fsSLO "https://get.helm.sh/helm-v3.10.2-${OS}-${ARCH}.tar.gz"
        tar zxvf "helm-v3.10.2-${OS}-${ARCH}.tar.gz"
        cp ${OS}-${ARCH}/helm /usr/local/bin/helm

