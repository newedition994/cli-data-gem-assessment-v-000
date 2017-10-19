class WeatherForecast::Forecast
  attr_reader :temperature, :humidity, :windSpeed
  attr_accessor :longitude, :latitude
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

  def temperature
    @temperature
  end

  def humidity
    @humidity
  end

  def windSpeed
    @windSpeed
  end

  def new_york
    @latitude = 40.7128
    @longitude = 74.0060
  end

  def london
    @latitude = 51.5074
    @longitude = 0.1278
  end

  def tokyo
    @latitude = 35.6895
    @longitude = 139.6917
  end

  def toronto
    @latitude = 43.6532
    @longitude = 79.3832
  end

  def rio_de_janeiro
    @latitude = 22.9068
    @longitude = 43.1729
  end

end
