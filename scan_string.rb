# 指定した文字列に対して引数の条件を繰り返しマッチし、マッチした部分文字列の配列を返す
# 引数に正規表現を指定した場合、その正規表現にマッチした部分文字列の配列を返す
  p "foobar".scan(/../)               # => ["fo", "ob", "ar"]
  p "foobar".scan("o")                # => ["o", "o"]
  p "foobarbazfoobarbaz".scan(/ba./)  # => ["bar", "baz", "bar", "baz"]

  p "foobar".scan(/(.)/) # => [["f"], ["o"], ["o"], ["b"], ["a"], ["r"]]

  p "foobarbazfoobarbaz".scan(/(ba)(.)/) # => [["ba", "r"], ["ba", "z"], ["ba", "r"], ["ba", "z"]]
# 引数に続けてブロック{}を指定するとマッチした部分文字列をブロックに渡して実行する
  "foobarbazfoobarbaz".scan(/ba./) {|s| p s }
      # => "bar"
      #    "baz"
      #    "baz"
      #    "baz"

  "foobarbazfoobarbaz".scan("ba") {|s| p s }
      # => "ba"
      #    "ba"
      #    "ba"
      #    "ba"

  "foobarbazfoobarbaz".scan(/(ba)(.)/) {|s| p s }
      # => ["ba", "r"]
      #    ["ba", "z"]
      #    ["ba", "r"]
      #    ["ba", "z"]

# 文字数指定
  p "foobarbazfoobarbaz".scan(/.{1,5}/)
  # => ["fooba", "rbazf", "oobar", "baz"]
