class WeatherForecast::CLI

  def call
    puts "welcome to the weather api"
    puts "please enter your latitude:"
    latitude = gets.strip.to_f
    puts "please enter your longitude:"
    longitude = gets.strip.to_f
    WeatherForecast::API.current_location(latitude,longitude)
  end


end
