class Temp < ActiveRecord::Base
require 'httparty'

def self.gettemp_internal
 r = HTTParty.get("http://admin.local/arduino/on/")
 r.parsed_response.to_f
end

def self.gettemp_external
 w = WeatherUnderground::Base.new
 w.CurrentObservations( '98102' ).temp_f.to_f
end

end
