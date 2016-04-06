# 　長さn[cm]の１本の棒を１[cm]単位に切り分けることを考えます。但し、１本の棒を一度に切ることができるのは1人だけです。
# 切り分けた棒が３本あれば、同時に３人できることができます。
# 　最大m人の人がいる時、最短何回で切り分けられるかを求めてください。例えば、n=8,m=3のときは４回で切り分けることができます。
#
# 今回はメソッドの再帰呼び出しをやる必要があるので、 Ruby でのメソッドの定義方法と使い方を覚える必要があります。
#
#
# 問題１,n=20,m=3の時の回数？
# 問題２,n=100,m=5の時の回数？
#

# https://github.com/Odoi/ruby-learning.git

# firstcut = 1
# secondcut = 1

# n = 100
# m = 5
#
# maxcut = 1
# cuts = 0
# parts = 1
#
# loop{
#   if m < maxcut
#     parts = parts + m
#
#   else parts = parts * 2
#   end
#
#   cuts += 1
#
#   break if parts > n
#
#   maxcut = maxcut * 2
# }
#
# puts cuts
n = 100 m = 5

maxcut = 1 cuts = 0 parts = 1

loop{ if m < maxcut parts = parts + m

else parts = parts * 2 end

cuts += 1

break if parts > n

maxcut = maxcut * 2 }

puts cuts

























# print(self.to_s)
# print(self.class.to_s)
#

# require "kconv"
#
# def printHello
#   print("Hello\n")
# end
#
# print(Kconv.tosjis("method\n"))
# printHello
# print(Kconv.tosjis("method called\n"))
#
#
#
#
# require 'pp'
#
# a = 42
# b = 30
#
# def gcd(a, b)
#   return a if b == 0
#   gcd(b, a % b)
# end
#
# puts gcd(a, b)
