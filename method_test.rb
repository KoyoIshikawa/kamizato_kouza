# if people >= 5
#   okane = okane * 0.9 * people
#   puts <<~TEXT
#   5人以上なので10%割引となります
  
#   合計金額:¥ #{okane}
#   TEXT
# else
#   okane = okane * people
#   puts <<~TEXT
#   5人未満のため割引対象外となります
#   TEXT
#   puts "合計金額:¥#{okane.to_i}"

# end

puts <<~TEXT
 旅行プランを選択してください
 1.沖縄旅行(¥10,000)
 2.北海道旅行(¥20,000)
 3.九州旅行(¥15,000)
TEXT
puts "プランを選択 > "
plan = gets.to_i

#旅行先を決めるメソッド
def plan_dection(plan)
  if plan == 1
    puts "沖縄旅行ですね、何人で行きますか？"
    # price = 10000
  elsif plan == 2
    puts "九州旅行ですね、何人で行きますか？"
    # price = 20000
  elsif plan == 3
    puts "北海道旅行ですね、何人で行きますか？"
    # price = 15000
  else
    return puts "プランを洗濯してください"
  end
end
puts plan_dection(plan)

# 金額を決めるメソッド
def sum_price(people)
  #5人以上の時に計算する
  if people >= 5
    price = price * people * 0.9 
    puts "５人以上なので10%割引になります"
    puts "合計金額:¥#{price}"
  #5人未満で計算する
  else 
    price = price * people 
    puts "合計金額:¥#{price}"
  end
end
aaa = 5
puts sum_price(aaa)

