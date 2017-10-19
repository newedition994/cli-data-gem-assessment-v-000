class WeatherForecast::CLI

  def call
    WeatherForecast::API.list_of_cities
    puts " Welcome to the Weather API!"
    menu
    goodbye
  end

  def list_of_cities
    #List of popular cities longitude and latitude
    WeatherForecast::Forecast
      #puts 5 cities numbered and city names
  end


  def menu
    #provide more information
    #create a loop
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
