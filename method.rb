
  # 金額を決めるメソッド
  def sum_price(people,price)
    #5人以上の時に計算する
    if people >= 5
      price = price * people * 0.9 
      puts "５人以上なので10%割引になります"
      puts "合計金額:¥#{price.to_i}"
    #5人未満で計算する
    else 
      price = price * people 
      puts "合計金額:¥#{price.to_i}"
    end
  end

  puts <<~TEXT
  旅行プランを選択してください
  1.沖縄旅行(¥10,000)
  2.北海道旅行(¥20,000)
  3.九州旅行(¥15,000)
  TEXT
  puts "プランを選択 > "
  plan = gets.to_i

  if plan == 1
    puts "沖縄旅行ですね、何人で行きますか？"
    price = 10000
    people = gets.to_i
    puts sum_price(people,10000)

  elsif  plan == 2
    puts "北海道旅行ですね、何人で行きますか？"
    price = 20000
    people = gets.to_i
    puts sum_price(people,price)

  elsif  plan == 3 
    puts "九州旅行ですね、何人で行きますか？"
    price = 15000
    people = gets.to_i
    puts sum_price(people,price)
  else
    puts "入力し直してください"
  end