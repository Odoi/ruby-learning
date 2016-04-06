# １０進数、２進数、８進数の何で表現しても回文数となる数のうち、１０進数の１０以上で最小の値を求めてください。
# 012234567 10 11 12 13 14 15 16 17 20
# 9 = 1001 = 11

# ruby loop next
# continue break


# s = "hello"
# puts s.reverse
# 10進数から2進数への変換
# 255.to_s(2) # => "11111111"
# 2進数から10進数への変換
# "11111111".to_i(2) # => 255
#
# i=10
# j=i.to_s.to_i.to_s(2)
# puts j
#


i = 11

loop {
  j = i.to_s.reverse
  k = i.to_s(2)
  l = k.to_s.reverse
  m = i.to_s(8)
  n = m.to_s.reverse

  puts i
  puts j
  puts k
  puts l
  puts m
  puts n
  puts "============\n"
  # break

  if i.to_s == j && k == l && m == n
    puts i
    break
  end
  i += 2
}
#
#
# i = 9
# j = i.to_s(8)
# k = j.to_s.reverse.to_i
# if j = k
#   puts j
# end


#
#
# while j >= 1 && j <= 10
#   k = j.to_s.reverse.to_i
#   l = j.to_s(2)
#   m = l.to_s.reverse.to_i
#   if k == j && l == m
#     puts k
#   end
#   j += 1
# end

#
# num = 10
# loop{
#   print("num = ", num, "¥n")
#   num += 1
#   if num >  then
#     break
#   end
# }
