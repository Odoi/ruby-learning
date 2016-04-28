# 優秀な掃除ロボット
#
# 　多くのメーカーから発売されている掃除ロボット。忙しい私たちにとって、家事を助けてくれるロボットはとても便利です。
# 一方で、同じところを何度も往復するなど、その動きが理解できないことも珍しくありません。
# 　ここでは、同じ場所を通らない掃除ロボットを考えます。このロボットは、前後左右にのみ移動することができます。
# たとえば、３階移動する場合、最初の後ろに移動する経路は以下の９パターンあります。最初の移動方向は前後左右があるので、
# 考えられる移動経路は全部で３６通りあります。

# 問題；このロボットが１２回移動する時、考えられる移動経路のパターンが何通りあるか求めてください。
#
# 12回動かす
# 経験した経路を削除
# 座標を置いてみる
#
# 座マリン
# xanarin
#
# times = 12
#
# array = Array(x, y)
# array.include?(obj)

# array = Array["(0, 0)"]
# m = 0
# n = 0

# counts = 0


def move(list, pattern)    #関数の定義
  start = list.last   #リストの最初の要素（今いる場所）を取得
  x = start[0]   #最初の要素のx座標を取得
  y = start[1]   #最初の要素のy座標を取得

  right = [x+1, y]   #今いる位置の右の位置
  left = [x-1, y]   #今いる位置の左の位置
  up = [x, y+1]   #今いる位置の上の位置
  down = [x, y-1]   #今いる位置の下の位置

  [right, left, up, down].each{|position|   #それぞれについて行う
    if list.include?(position) == false   #最初の位置の右左上下それぞれの場所に通ったことがあるか
      newlist = list.push(position)
      p newlist   #なければその場所を加えた新たなリストを作成
      if newlist.count <= 12  #関数を繰り返す
        move(newlist, pattern)    #リストの要素の数が１３だった場合（１２回移動した場合）
        
      else   #まだ１２回移動してない場合
        pattern += 1      #パターンに１を加える
      end


    end
  }

end

pattern = 0
move([[0, 0]], pattern)
puts pattern

#配列えー、数字パターン
# 最初の位置をラストとする、えーラスト
#
# 四つの位置にたいして
# 配列えーに含まれていないか
# なければ殻を作りえーと点を加える、それをビーとする
#
#
# ビーの要素数が１３ならパターン＋＝１
# 抜け出す
# えんど
# ふぁんくしょんおこなう
#
# じっこう
# パターンは０
# ０、０　パターン
# ぷっと　パターン

#
# def move(m, n, counts)
#   if counts == 0
#     array = [[0, 0]]
#     pattern = 0
#   end
#
#   if counts >= 13
#     p pattern
#   else
#     m += 1
#     if array.include?([m, n]) == true
#
#     else
#       array << [m, n]
#       pattern += 1
#     end
#
#     m += -2
#     if array.include?([m, n])
#
#     else
#       array << [m, n]
#       pattern += 1
#     end
#
#     m += 1
#     n += 1
#     if array.include?([m, n]) == true
#
#     else
#       array << [m, n]
#       pattern += 1
#     end
#
#     n += -2
#     if array.include?([m, n]) == true
#
#     else
#       array << [m, n]
#       pattern += 1
#     end
#
#     n += 1
#     counts += 1
#     move(m, n, counts)
#   end
#   # if counts <= 12
#   # move(m, n, counts)
#   # end
# end
# # count = 0
# # array = Array['(0, 0)']
# p move(0, 0, 0)



#
#
# def separate(m)
#    state = Array.new(m,0)
#    separates(state, [], 0, m)
#  end
#
#
# def separates(state, resul, sum, m)
#    return resul if sum == m
#    ok = (sum+1 == m)
#    (0..sum).each do |i|
#       tmp = state.dup
#       tmp[i] += 1
#       resul << tmp if ok
#       separates(tmp, resul, sum+1, m)
#    end
#  resul
# end
#
# p separate(2)
