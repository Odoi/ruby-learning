# 　最近は電車もバスも電子マネーが当たり前。でも、未だに現金で払う人も以外と多いもの。
# 今回はバスに設置されている両替機を考えます。
# 　この機械では、１０円玉、５０円玉、１００円玉、５００円玉の組み合わせに両替することができ、いずれの硬貨も十分な枚数がセットされています。
# （バスの運賃は現金の場合は１０円単位になっているため１円玉、５円玉は扱っていません）。
# 　両替する際に、使われていない硬貨はあっても構いませんが、バスの中でたくさんの小銭が出ると困るため、最大で１５枚になるように両替します。
# 例えば、１０００円を両替するときに、「１０円玉を１００枚」という両替はできません。
#
# 問題；１０００円札を入れた時に出てくる硬貨の組み合わせは何通りあるかを求めてください。なお、硬貨の順番は区別しないものとします。
#
# 単純に解くだけなら簡単そうね。
# 余裕があれば、拡張性も意識したプログラムを作ってみてください。（そんな余裕はないです、、、）



# require 'pp'

price = 1000
coins = [500, 100, 50, 10]
usable = 15
coins_with_limit = {}
pattern = 0
count = 0

coins.each do |coin|
coins_with_limit[coin] = price.div(coin)
end

count500 = 0
count100 = 0
count50 = 0
count10 = 0
counts = 0

loop{
  break if count500 > coins_with_limit[500] || count500 > usable

  loop{
    break if count100 > coins_with_limit[100] || count500 + count100 > usable

    loop{
      break if count50 > coins_with_limit[50] || count500 + count100 + count50 > usable

      loop{
        break if count10 > coins_with_limit[10] || count500 + count100 + count50 + count10 > usable

        if price == 500 * count500 + 100 * count100 + 50 * count50 + 10 * count10
           counts += 1
        end

        count10 += 1
      }

      count50 += 1
      count10 = 0

    }

    count100 += 1
    count50 = 0

  }
  count500 += 1
  count100 = 0
}

puts counts


#
# pp coins_with_limit


#
# startnum = 0
# {
#   coins_with_limit.each do |coin, limit|
#   range(0..limit)
# }
#
#
#
# coins.each do |coin|
# end
#
# #
# loop{
#
# }
#
#
#
#
# coins_with_limit.each do |coin, limit|
#   loop{
#
#     price =
#     break if  > limit
#     break if  > max
#
#     coin = coin * 2
#     count += 1
#     break if count = maxnum
# }
# end
# #
# puts coins_with_limit[100]
#

#
#
#
# pp coins_with_limit






# a.to_i

#
# array = Array[a, b, c, d]
# 1000 == 500 * a + 100 * b + 50 * c + 10 * d
# a + b + c + d <= 15
# a >= 0
# b >= 0
# c >= 0
# d >= 0
#
# pp array
#
# Array.count
#
# a = 1
# b = 3
#
# array = [a, b, c,]
#
# p array.combination(2).to_a.count
