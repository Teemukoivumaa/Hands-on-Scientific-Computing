#!/bin/bash

for file in "$@"
do
    echo "File: $file"
    echo "#!/bin/bash 
$(cat $file)" > $file
    echo "Added"
done

