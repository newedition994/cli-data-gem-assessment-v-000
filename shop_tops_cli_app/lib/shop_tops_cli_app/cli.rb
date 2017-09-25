class ShopTopsCliApp::CLI

  def call
    list_types
    menu
    come_again
  end

  def list_types
    puts "Check out these cute Tops:"
    @shop = ShopTopsCliApp::Shop.forever
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the categeory of the tops you would like to see or type list to see the list again or type exit to leave:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Here's some lace-up tops"
      when "2"
        puts "Here's some tee & tank-tops"
      when "3"
        puts "Here's some shirts & blouses"
      when "4"
        puts "Here's some sweaters & cardigans"
      when "5"
        puts "Here's some going-out tops"
      when "list"
        list_types
      else
        puts "What kind of tops would you like to see?"
      end
    end
  end

  def come_again
    puts "Sorry to see you leave. Please come again."
  end


end
