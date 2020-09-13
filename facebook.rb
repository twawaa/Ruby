def face_book(number)
  if number % 15 == 0
  	'facebook'
  elsif number % 3 == 0
    'face'
  elsif number % 5 == 0
  	'book'
  else
  	number.to_s
  end

end

range = 1..100
range.each  do |x| #データの先頭から順に繰り返して処理
  puts face_book(x)
end