class LocationsLogic
  def forecast_for(location)
    Api::WeatherVane.new.get_forecast_for(location)
  end
end