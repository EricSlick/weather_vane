require 'rails_helper'

RSpec.describe LocationsLogic do
  it 'instantiates' do
    expect(LocationsLogic.new).to be_a LocationsLogic
  end

  describe '#weather_for' do
    let(:weather_api){ Api::WeatherVane.new }
    
    context 'when location is a city and state' do
      let(:location) { 'Chicago, IL' }
      let(:test_api_weather_vane) { Api::WeatherVane.new }

      it 'will call the correct api' do
        allow(Api::WeatherVane).to receive(:new).and_return(test_api_weather_vane)
        expect(weather_api).to receive(:get_forecast_for).with(location)
        subject.forecast_for(location)
      end
    end
  end
end