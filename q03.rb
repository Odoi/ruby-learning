# 　１〜１００までの番号が書かれた１００枚のカードが順番に並べられています。最初、全てのカードは裏返しの状態で置かれています。
# ある人が２番のカードから、１枚おきにカードを裏返していきます。すると、2,4,6,...,100番のカードが表を向くようになります。
# 　次に、別の人が、３番のカードから２枚おきにカードを裏返していきます（裏向きのカードは表を向き、表を向いているカードは裏返されます）。
# また、別の人が、４番のカードから３枚おきにカードを裏返していきます。
# 　このように　n番目のカードからn-1枚おきにカードを裏返す操作を、どのカードの向きも変わらなくなるまで続けたとします。
# カードの向きが変わらなくなった時、裏向きになっているカードの番号をすべて求めてください。
#
# #
# i = 2
# array = Array[1, 2, 3]
# puts array[1]
#


# require 'pp'


cards = Array.new(100, false)

startnum = 2
loop{
  turnnum = startnum - 1

  loop{
    cards[turnnum] = !cards[turnnum]
    break if turnnum > 100
    turnnum += startnum
  }

  break if startnum > 99
  startnum += 1
}
#
# shownum = 0
# loop{
#   if cards[shownum] == false
#     puts shownum + 1
#   end
#
#   break if shownum > 98
#   shownum += 1
# }
#
# pp cards
cards.map.with_index(1) { |card, i| card ? nil : i }.compact





# if cards[0] = false
#   puts 5
# end




# cards = false
# cards = !cards
# puts cards
# i = 1
# loop{
#   puts i
#   break if i > 5
#   i += 1
# }
#
# # cards.each{|i|
#   loop{
#     j = i + 1
#
#
#     break if i > 100
#     i += 1
#   }
# }

#
#
# range = 1..100
# range.each{|num|
#   num = false
# }
# puts range





#
# cards{}
# (1..100).cards
#   false
#
#
#   (5..10).each{|num|
#     print("num = ", num)
#   }
#
# cards{}
# ()
# loop {
#
#  i += 1
#  break if i > 100
#
# }
#
#
#   print("18..20 is \n")
# (18..20).each{|num|
#   print("num = ", num, "\n")
# }
#
# print("\n")
#
# print("\"Ax\"..\"Bc\" is \n")
# ("Ax".."Bb").each do |str|
#   print("str = " + str + "\n")
# end
