# コラッソの予想
# 自然数nについて、
# ・nが偶数の場合、nを２で割る
# ・nが奇数の場合、nに３をかけて１を足す
# という操作を繰り返す時、初期値がどんな数であっても必ず１に到達する。
#
# この予想の内容を少し変えて、初期値が偶数の場合、初回のみnに３をかけて１を足すことから始めることとし、「最初の数」に戻るものを考えます。
#
# 問題；１００００以下の偶数のうち、上記の２や４のような「最初の数に戻る数」がいくつあるか、その個数を求めてください。
#

num1 = 2
num2 = 2
counts = 0

loop{
  break if num1 > 10000
  num1 = num1 * 3 + 1

  loop{
    if num1 % 2 == 0
       num1 = num1 / 2
     else
       num1 = num1 * 3 + 1
     end

     break if num1 == 1

     if num1 == num2 then
       counts += 1
       break
     end
  }

  num2 +=2
  num1 = num2
}

 puts counts
