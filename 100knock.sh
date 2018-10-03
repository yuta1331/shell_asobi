#!/bin/sh
# 100 knocks -> http://www.cl.ecei.tohoku.ac.jp/nlp100/

# shellscript reference
# -> https://qiita.com/zayarwinttun/items/0dae4cb66d8f4bd2a337
# -> https://qiita.com/katsukii/items/383b241209fe96eae6e7

text="hightemp.txt"

# 10
wc -l $text

# 11
cat $text | sed -e 's/\t/ /g' | cat

# 12
cut -f1 $text > ./result/col1.txt
cut -f2 $text > ./result/col2.txt

# 13
# reference -> https://eng-entrance.com/linux-command-paste
paste ./result/col1.txt ./result/col2.txt > ./result/col_merge.txt

# 14
echo -n "N--> "
read N
echo "[head]"
head --lines=$N $text

# 15
echo "[tail]"
tail --lines=$N $text

# 16
echo "[divide]"
split --lines=$N $text ./result/divide_

# 17

