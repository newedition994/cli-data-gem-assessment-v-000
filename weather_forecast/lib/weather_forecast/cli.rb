class WeatherForecast::CLI

  def call
    puts " Welcome to the Weather API!"
    puts ""
    menu
    goodbye
  end

  #def list_of_cities
    #List of popular cities longitude and latitude
    ##end


  def menu
    puts "Please choose one of the following cities:"
    puts "1. New York, New York"
    puts "2. London, England"
    puts "3. Tokyo, Japan"
    puts "4. Toronto, Canada"
    puts "5. Rio de Janeiro, Brazil"

    input = gets.strip.to_i
    latitude = WeatherForecast::Forecast.latitude
    longitude = WeatherForecast::Forecast.longitude
    WeatherForecast::API.current_location(latitude, longitude)
    #puts "Please enter your latitude:"
    #latitude = gets.strip.to_f
    #puts "Please enter your longitude:"
    #longitude = gets.strip.to_f
  end

  def goodbye
    puts "See you tomorrow for the temperature"
    exit
  end

  def forecast_details(fore_input)
    puts "___#{fore_input.temperature}___"
    puts "Humidity: #{fore_input.humidity}"
    puts "WindSpeed: #{fore_input.windSpeed}"
  end

#Record up to 30 minutes of code work for the project. Update blog post. Look at the videos for assistance with completing the project and meeting on wednesday more insight on how to complete the second section of the project.

end
