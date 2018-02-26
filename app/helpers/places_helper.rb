module PlacesHelper
  def self.location_format
    self.full_street_address + "+" + self.city + "+" + self.state
  end
end