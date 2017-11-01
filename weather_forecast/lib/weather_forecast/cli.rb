class WeatherForecast::CLI
  #attr_accessor :latitude, :longitude, :location
  def call
    WeatherForecast::Forecast.getWeather

    puts " Welcome to the Weather API!"
    puts ""
    menu
    goodbye
  end

  def menu
    input = nil
    puts "------ Please choose one of the following cities ------"
    list_of_cities
    input = gets.strip.to_i
    #move the api line within the if statements and breakdown each part to finish the project
    if input == "exit"
      goodbye
    else
      its = input.to_f
      if its != 0
        #Iteration trail: WeatherForecast::Forecast.getWeather.each { |c| c.call}
        #each_with_index: WeatherForecast::Forecast.getWeather.each_with_index do |value, index| ~ probably will not work for this specific problem
        fore_input = WeatherForecast::Forecast.getWeather
        binding.pry
        forecast_details(fore_input)
        puts "Would you like more information for another city?"
        ci = gets.strip.downcase
        if ci == "yes" || ci == "y"
          menu
        else
          goodbye
        end
      else
        puts "I don't understand that selection."
        puts "Please select a city's number, type exit to leave, or get info on your own city"
        menu
      end
    end
    #create a if statement for more details
    #puts "Please enter your latitude:"
    #latitude = gets.strip.to_f
    #puts "Please enter your longitude:"
    #longitude = gets.strip.to_f
  end
#you have to do a gem install RestClient everytime you open IDE
  def goodbye
    puts "See you tomorrow for the temperature"
    exit
  end

  def list_of_cities
    puts "1. New York, New York"
    puts "2. London, England"
    puts "3. Tokyo, Japan"
    puts "4. Toronto, Canada"
    puts "5. Rio de Janeiro, Brazil"
  end

  def forecast_details(fore_input)
    puts "Location: #{fore_input.location}"
    puts "Temperature#{fore_input.temperature}"
    puts "Humidity: #{fore_input.humidity}"
    puts "WindSpeed: #{fore_input.windSpeed}"

  end

#Record up to 30 minutes of code work for the project. Update blog post. Look at the videos for assistance with completing the project and meeting on wednesday more insight on how to complete the second section of the project.

end
