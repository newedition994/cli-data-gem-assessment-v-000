class WeatherForecast::Forecast
  attr_accessor :longitude, :latitude, :temperature, :humidity, :windSpeed, :location


  def self.new_from_json(fore_info, location)

      self.new(
        fore_info["temperature"],
        fore_info["humidity"],
        fore_info["windSpeed"],
        location
      )
  end

  def initialize(temperature=nil, humidity=nil, windSpeed=nil, location=nil)
    @location = location
    @temperature = temperature
    @humidity = humidity
    @windSpeed = windSpeed
  end

  def self.getWeather(input)
    case input
    when "1"
      WeatherForecast::API.current_location(40.7128,-74.0060, "New York")
    when "2"
     WeatherForecast::API.current_location(51.5074,0.1278, "London, England")
    when "3"
      WeatherForecast::API.current_location(35.6895,139.6917, "Tokyo, Japan")
    when "4"
      WeatherForecast::API.current_location(43.6532,79.3832, "Toronto, Canada")
    when "5"
      WeatherForecast::API.current_location(22.9068,43.1729, "Rio de Janeiro, Brazil")
    else
      puts "Invalid input"
      WeatherForecast::CLI.new.menu
    end
  end


end
