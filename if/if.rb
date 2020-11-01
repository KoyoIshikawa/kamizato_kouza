module ProductsHelper
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
  okane = 10000
  people = gets.to_i

  if people >= 5
    okane = okane * 0.9 * people
    puts <<~TEXT
    5人以上なので10%割引となります
    
    合計金額:¥ #{okane}
    TEXT
  else
    okane = okane * people
    puts <<~TEXT
    5人未満のため割引対象外となります
    TEXT
    puts "合計金額:¥#{okane.to_i}"

  end
elsif  plan == 2
  puts "北海道旅行ですね、何人で行きますか？"
  okane = 20000
  people = gets.to_i

  if people >= 5
    okane = okane * 0.9 * people
    puts <<~TEXT
    5人以上なので10%割引となります
    
    合計金額:¥ #{okane.to_i}
    TEXT
  else
    okane = okane * people
    puts <<~TEXT
    5人未満のため割引対象外となります
    TEXT
    
    puts "合計金額:¥#{okane.to_i}"

  end
elsif  plan == 3 
  puts "九州旅行ですね、何人で行きますか？"
  okane = 15000
    people = gets.to_i

  if people >= 5
    okane = okane * 0.9 * people
    puts <<~TEXT
    5人以上なので10%割引となります
    
    合計金額:¥ #{okane.to_i}
    TEXT
  else
    okane = okane * people
    puts <<~TEXT
    5人未満のため割引対象外となります
    TEXT
    
    puts "合計金額:¥#{okane.to_s(:delimited, delimiter: ',')}"
     
    


  end
else
  puts "入力し直してください"

end

end