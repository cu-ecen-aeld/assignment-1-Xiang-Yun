#!/bin/sh


# writer.sh /tmp/aesd/assignment1/sample.txt ios


writefile=$1
writestr=$2

if [ $# -lt 2 ] || [ ! -n $writestr ]
then
        echo "Incorrect arguments"
        exit 1
fi

# 創建目標目錄（如果不存在）
mkdir -p "$(dirname "$writefile")"

# 寫入字符串到文件
echo "$writestr" > "$writefile"

# 檢查寫入是否成功
if [ $? -ne 0 ]; then
    echo "Error writing to file $writefile"
    exit 1
fi

exit 0