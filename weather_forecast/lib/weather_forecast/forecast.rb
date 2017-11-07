class WeatherForecast::Forecast
  attr_accessor :longitude, :latitude, :temperature, :humidity, :windSpeed, :location
  @@all = []

#Pull up the sticky notes for questions with the meeting with the TA to make sure that all of the classes work and the irb works for testing
  def self.new_from_json(fore_info, location)

      self.new(
        fore_info["temperature"],
        fore_info["humidity"],
        fore_info["windSpeed"],
        location
      )
  end
#longitude = fore_info

  def initialize(temperature=nil, humidity=nil, windSpeed=nil, location=nil)
    @location = location
    @temperature = temperature
    @humidity = humidity
    @windSpeed = windSpeed
    @@all << self
  end

  def self.all
    @@all
  end

  def temperature
    @temperature
  end

  def humidity
    @humidity
  end

  def windSpeed
    @windSpeed
  end

  def location
    @location
  end

  def self.getWeather(input)
    binding.pry
    case input
    when input == "1"
      WeatherForecast::API.current_location(40.7128, 74.0060, "New York")
    when input == "2"
      puts WeatherForecast::API.current_location(51.5074,0.1278, "London, England")
    when input == "3"
      WeatherForecast::API.current_location(35.6895,139.6917, "Tokyo, Japan")
    when input == "4"
      WeatherForecast::API.current_location(43.6532,79.3832, "Toronto, Canada")
    when input == "5"
      WeatherForecast::API.current_location(22.9068,43.1729, "Rio de Janeiro, Brazil")
    else
      puts "Invalid input"
    end
  end


end
