# いろいろ使えそうな自作関数

# 時刻の調整
# hh:mm で与えられた時刻に関して、mmの部分の超過分、不足分をhh部分を調整することで適切な表記に変える
# 引数addに何かを指定すると下記のadd0を実行するため使用時はadd0の記述も必要
# add0を併記しない場合、コメントアウトでなんとかすればまあ大丈夫
def timeArrange(hour, minute, add = '')
    # minuteが負の数の場合
    while minute < 0
        hour -= 1
        minute += 60
    end
    # minuteが60以上の場合
    while minute >= 60
        hour += 1
        minute -= 60
    end
    unless add =='n'
        return add0(hour, minute)
    end
    return hour, minute
end

# 0埋め2桁
# hhとmmを hh:mm の形で返す その際1桁のものは三等に0を付け足す
# 戻り値はstring型
def add0(hour, minute)
    hour = hour.to_s
    minute = minute.to_s
    hour = '0' + hour if hour.length == 1
    minute = '0' + minute if minute.length == 1
    return "#{hour}:#{minute}"
end
