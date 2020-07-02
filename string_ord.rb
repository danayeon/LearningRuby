# class String
# ord
# 文字列の最初の文字の文字コードを整数で返す
# SAMPLE
p 'a'.ord
# => 97
# 文字列の最初と最後の文字の文字の順番を比較
# 最初の文字がアルファベット順で最後の文字より先に出現する場合trueを返す
str = 'SKGORH'
puts str[0].ord < str[str.length - 1].ord
# 標準入力から
str2 = gets.chomp
puts str2[0].ord < str2[str2.length - 1].ord
