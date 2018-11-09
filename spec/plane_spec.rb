require 'plane'
require 'airport'

describe Plane do
  subject(:plane) { Plane.new }
  airport = Airport.new

  it 'Checks that the planes are landed' do
    # Act
    airport.land!(plane)

    # Assert
    expect(plane.landed?(airport)).to be_truthy
  end
end
