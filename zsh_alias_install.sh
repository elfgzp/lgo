#!/bin/bash

LGOPATH=$(PWD)
echo "Current lgo path: $LGOPATH"
echo "export LGOPATH=$LGOPATH" >> ~/.zshrc
echo 'alias lgoup="cd $LGOPATH/docker/jupyter/ && ./up.sh && cd -"' >> ~/.zshrc
echo 'alias lgodown="cd $LGOPATH/docker/jupyter/down.sh && ./down.sh && cd -"' >> ~/.zshrc
echo 'alias lgoshell="docker exec -it jupyter_jupyter_1 /usr/local/bin/jupyter console --kernel lgo"' >> ~/.zshrc
echo 'alias lgobash="docker exec -it jupyter_jupyter_1 /bin/bash"' >> ~/.zshrc
echo "alias lgoget='f() {echo \"lgo get \$@\" && docker exec -it jupyter_jupyter_1 /usr/local/go/bin/go get -u \$@};f'" >> ~/.zshrc
echo "Add alias lgoup, lgodown, lgoshell, lgobash, lgoget"
