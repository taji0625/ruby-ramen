class Shop
  attr_reader :items
  def initialize(name:, items:)
    @name = name
    @items = items
  end

  def display
    puts "いらっしゃいませ！！"
    puts "こちらが#{@name}のメニューです"
    puts "*" * 40
    @items.each.with_index(1) do |item, i|
      puts "#{i.to_s}. #{item.name}: #{item.price.to_i}円"
    end
    puts "*" * 40
  end

  def sell(user, item)
    puts "#{item.name}ですね。#{item.price}円になります！！"
    puts "#{user.money}円頂戴します。"
    puts "#{user.money - item.price} 円お返しです！"
    puts "ゆっくり#{item.name}をお楽しみください！！"
  end
end