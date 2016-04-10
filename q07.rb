# 日付の２進数変換
#
# 　年月日をYYYYMMDDの８桁の整数で表したとき、
# これを２進数に変換して逆から並べ、さらに１０進数に戻したとき、元の日付と同じ日付になるものを探してください。
#
# 　期間は、前回の東京オリンピック（１９６４年10月10日）から、次回の東京オリンピック（２０２０年7月24日予定）とします。
#
# ２進数についてはオーケー。
# 月ごとに日付が異なる、うるう年も注意。
# 日付処理のライブラリを使用できる。
#
#
# jan = 31
# feb = 28
# uruufeb = 29
# mar = 31
# apr = 30
# may = 31
# jun = 30
# jul = 31
# aug = 31
# sep = 30
# oct = 31
# nov = 30
# dec = 31


year = 1964
month = 10
day = 10

loop{
  break if year > 2020

  loop{
    break if year >= 2020 && month > 7 || month >12

    loop{
      break if year >= 2020 && month >= 7 && day > 24

      if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
        break if day > 31

      elsif month == 4 || month == 6 || month == 9 || month == 11
        break if day > 30

      elsif month == 2 && year % 4 == 0
        break if day > 29

      else
        break if day > 28

      end

      num = 10000 * year + 100 * month + day
      num2 = num.to_s(2)
      renum = num2.reverse

      puts "#{year}年#{month}月#{day}日" if num2 == renum

      day += 1
    }

    day = 1
    month += 1
  }

  month = 1
  year += 1
}


# TDateTime date = StrToDate(FormatFloat("0000/00/00", 20120420));
