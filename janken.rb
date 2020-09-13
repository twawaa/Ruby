def janken#jankenメソッドの返り値(true/false)
  puts "最初はグー、じゃんけん..."
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"
  
  jankens = ["グー", "チョキ", "パー"]

  input_hand = gets.to_i

  #無効な入力
  if input_hand < 0 || 3 < input_hand
    puts "入力された値が無効です"
    return true
  end

  computer_hand = rand(3)

  puts "あなたの手"+jankens[input_hand]+":、相手の手:"+jankens[computer_hand]
  

  #あいこ
  if input_hand == computer_hand
    puts "あいこです。"
    return true
  #勝ち
  elsif (input_hand == 0 && computer_hand == 1)||(input_hand == 1 && computer_hand == 2)||(input_hand == 2 && computer_hand == 0)
    puts "あなたの勝ちです"
    return false
  #負け
  else
    puts "あなたの負けです"
    return false
  end

end

game = true

while game do # nextがtrue(あいこ)の間は繰り返し。false(勝ち・負け)になれば繰り返し終了
  game = janken # jankenメソッドの返り値(true/false)がnext_gameに代入される
end


