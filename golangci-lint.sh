#!/bin/bash

STAGED_GO_FILES=$(git diff --cached --name-only --diff-filter=ACM | grep ".go$")

if [[ "$STAGED_GO_FILES" = "" ]]; then
    exit 0
fi

PASS=true

for FILE in $STAGED_GO_FILES
do
    # ignore verdor/
    if [[ $FILE == "vendor"* ]];then
        continue
    fi
    
    golangci-lint run  $FILE
    if [[ $? != 0 ]]; then
        PASS=false
    fi
    
done

if ! $PASS; then
    printf "\033[31m COMMIT FAILED \033[0m\n"
    exit 1
else
    printf "\033[32m COMMIT SUCCEEDED \033[0m\n"
fi

exit 0
