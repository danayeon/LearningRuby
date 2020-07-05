# 配列の指定したインデックスの要素を先頭にした配列
arry = [1,'a','あ']
p arry.rotate(1)
p arry
#=> ["a", "あ", 1]
#=> [1, "a", "あ"]
p arry.rotate(-1)
#=> ["あ", 1, "a"]
p arry.rotate(0)
#=> [1,'a','あ']
