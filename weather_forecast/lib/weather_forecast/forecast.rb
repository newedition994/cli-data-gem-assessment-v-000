class WeatherForecast::Forecast
  attr_reader
  @@all = []

  def self.new_from_json(fore_info)
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

  def self.find()
    self.all.detect
  end

  def humidity
    @humidity
  end

  def windSpeed
    @windSpeed
  end

end
