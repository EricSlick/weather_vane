require 'rails_helper'

RSpec.describe Api::WeatherVane do
  class TestAdapter
    def fetch_forecast_for(location)
      
    end
  end

  let(:subject) { Api::WeatherVane.new(adapter: test_adapter) }
  let(:test_adapter) { TestAdapter.new }
  let(:test_location) { 'Chicago, IL'}

  describe '#initialize' do
    it 'instantiates' do
      expect(subject).to be_a Api::WeatherVane
      expect(subject.adapter).to be test_adapter
    end

    it 'instantiates with a default adapter' do
      expect_any_instance_of(Api::WeatherVane).to receive(:default_adapter).and_return test_adapter
      api = Api::WeatherVane.new
      expect(api.adapter).to be test_adapter
    end
  end

  describe '#get_forecast_for' do
    it 'calls third party for data' do
      expect(test_adapter).to receive(:fetch_forecast_for).with test_location
      subject.get_forecast_for(test_location)
    end
  end
end