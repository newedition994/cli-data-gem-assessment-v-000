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
    #google the longitude and latitude for New York
    @latitude = 40.7128
    @longitude = 74.0060
  end

  def london
    @latitude =
    @longitude =
  end

  def tokyo
    @latitude =
    @longitude =
  end

  def toronto
    @latitude =
    @longitude =
  end

  def rio_de_janeiro
    @latitude =
    @longitude =
  end

end
