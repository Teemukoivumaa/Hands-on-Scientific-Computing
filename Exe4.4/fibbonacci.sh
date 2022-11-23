#!bin/bash


function fibonacci() {
    n=$1

    if [ $n -lt 0 ] 
    then
        exit 1
    fi

    a=0
    b=1
    
    for ((i=0; i<n; i++))
    do
        func=$((a + b))
        a=$b
        b=$func
    done
    
    # Print a because b is the next fibbonacci number
    echo $a
}

