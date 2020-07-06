# 文字列から指定文字を削除する
str = 'helloworld'
puts str.delete('l')
#=> heoword

# 文字列の先頭から指定文字を削除
puts str.delete_prefix('hel')
#=> loworld
puts str.delete_prefix('llo')
#=> helloworld

# 文字列の末尾から指定文字を削除
puts str.delete_suffix('rld')
#=> hellowo
puts str.delete_suffix('llo')
#=> helloworld

# delete、 delete_prefix、 delete_suffixの末尾に ! をつけると破壊的に処理を行う
