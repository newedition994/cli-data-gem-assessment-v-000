class WeatherForecast::Forecast
  attr_accessor :longitude, :latitude, :temperature, :humidity, :windSpeed
  @@all = []

#Pull up the sticky notes for questions with the meeting with the TA to make sure that all of the classes work and the irb works for testing
  def self.new_from_json(fore_info)
    binding.pry
    self.new(
      fore_info["temperature"],
      fore_info["humidity"],
      fore_info["windSpeed"]
    )
  end
#longitude = fore_info

  def initialize(temperature=nil, humidity=nil, windSpeed=nil)
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

  def self.latitude(input)
    case input
    when 1
      40.7128
    when 2
      51.5074
    when 3
      35.6895
    when 4
      43.6532
    when 5
      22.9068
    end
  end

  def self.longitude(input)
    case input
    when 1
      74.0060
    when 2
      0.1278
    when 3
      139.6917
    when 4
      79.3832
    when 5
      43.1729
    end
  end

end
