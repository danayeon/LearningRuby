# rubyの比較演算子の優先順位
# 完全に把握したわけではないが
# 真偽値を puts で出力したい時
# puts 条件A and 条件B
# とすると条件Aのみが評価される
# puts 条件A && 条件B
# とすると両方の条件が評価される
# https://qiita.com/riku-shiru/items/533a01bdf18e2e3eef46
# 上記のQiitaを参考に、基本的に特別な事情がない限り&&を使えばいいととりあえず認識
# SAMPLE
puts 1 > 0 and 1 > 5
# =>true
puts 1 > 0 && 1 > 5
# =>false
