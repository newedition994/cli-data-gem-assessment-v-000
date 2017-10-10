class ShopTopsCliApp::CLI

  def call
    list_types
    menu
    come_again
  end

  def list_types
    puts "Check out these cute Tops:"
    @shop = ShopTopsCliApp::Clothing.forever
    @shop.each.with_index(1) do |clothing, i|
      puts "#{i}. #{clothing.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the categeory of the tops you would like to see or type list to see the list again or type exit to leave:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_clothing = @clothing[input.to_i-1]
        puts "#{the_clothing.name} - #{the_clothing.url}"
      elsif input == "list"
        list_types
      else
        puts "Do you know what you want, type list or exit."
      end
    end
  end

  def come_again
    puts "Sorry to see you leave. Please come again."
  end


end
