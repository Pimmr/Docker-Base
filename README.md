# Docker-Base
Our Docker base image recipe

# Finding recursive NPM packages?

    Requires jq -- http://stedolan.github.io/jq/download/



    for PROJECT in $(find . -name node_modules -maxdepth 4); do
        echo "" > tmp-packages;
        for FILE in $(find ${PROJECT} -name package.json); do
            jq '.dependencies' ${FILE} | grep ":" | cut -d ':' -f1 | tr -d '"' | tr -d ' ' >> tmp-packages;
        done;
    done;

    sort tmp-packages | uniq -c | sort



