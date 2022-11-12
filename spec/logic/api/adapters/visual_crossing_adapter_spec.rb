require 'rails_helper'

RSpec.describe Api::Adapters::VisualCrossingAdapter do
  let(:subject) { Api::Adapters::VisualCrossingAdapter.new }
  let(:test_location) { 'Chicago, IL' }
  let(:test_query_string) { "https://testmyapi.com" }
  let(:test_query_params) do
    {
      'test': 'param'
    }
  end

  it 'instantiates' do
    expect(subject).to be_a Api::Adapters::VisualCrossingAdapter
  end

  it 'implements the weather_vane api' do
    expect(subject).to respond_to(:fetch_forecast_for)
  end

  it 'calls HTTParty with correct url' do
    subject.instance_variable_set('@forecast_base_url', test_query_string)
    allow(subject).to receive(:query_params).and_return(test_query_params)
    expect(HTTParty).to receive(:get).with(test_query_string, 'query': test_query_params)
    subject.fetch_forecast_for(test_location)
  end
end