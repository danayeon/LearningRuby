# 引数１に指定した条件に一致する部分文字列を引数2に指定した文字列に変換
str = 'hello world'
puts str.gsub('ll', '!!')
puts str.gsub(/ll/, '!!')
#=> he!!o world
#=> he!!o world

# \については二重エスケープしなければいけないとかがあるが、割愛

# gsub!は破壊的に置換する
str = 'AABBCC'
str.gsub!('BB', 'VV')
puts str
#=> AAVVCC
