require 'httparty'

module Api
  module Adapters
    class VisualCrossingAdapter
      
      def initialize
        @forecast_base_url = "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/weatherdata/forecast"
      end

      def fetch_forecast_for(location)
        HTTParty.get(@forecast_base_url, query: query_params(location))
      end

      private

      def query_params(location)
        {
          'key': Rails.application.credentials.visual_crossing[:key],
          'locations': location,
          'aggregateHours': 24,
          'unitGroup': 'us',
          'shortColumnNames': 'false',
          'contentType': 'csv'
        }
      end
    end
  end
end
