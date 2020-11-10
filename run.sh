#!/bin/bash

COMC="c"
if [ "$#"  -eq 1 ]; then
    echo ""
    if [[ "$1" = $COMC ]];then
        echo "清理路径"
        rm -rf  build  bin/*
    else 
        echo "预处理组件"
    fi
else
    echo "默认编译组件"
    rm -rf  build  bin/*
    mkdir build && cd build
    cmake ../ && make  
    cd .. && ./bin/main
fi


# rm -rf  build  bin/*
# mkdir build && cd build
# cmake ../ && make  
# cd .. && ./bin/main




#pre
 
#  docker run --name cdos -v /Users/lianzheng/icu/pg633:pg633 -d -i -t b5b4d78bc90c  /bin/bash 

#  

# docker run  -d -t  --name="cdos" -v /Users/lianzheng/icu/pg633:/pg633  centos /bin/bash

 