require 'airport'
require 'plane'

describe Airport do
  subject(:airport) { Airport.new }
  plane = Plane.new

  context '#landing' do
    it 'checks the plane is in the airport' do
      # Act
      airport.land!(plane)

      # Assert
      expect(airport.in_port?(plane)).to eql(true)
    end

    it 'allows a plane to land' do
      expect { airport.land! double(:plane).to eq :plane }
    end
  end

  context '#max_capacity' do
    it 'checks if the airport is full' do
      # Act
      airport.capacity.times { airport.land!(plane) }

      # Assert
      expect(airport.max_capacity).to eql(true)
    end

    it 'does\'t allow landing of max capacity is reached' do
      # Arrange
      airport.planes = plane
      airport.capacity.times { airport.land!(plane) }

      # Act
      airport.land!(plane)

      # Assert
      expect(airport.in_port?(plane)).to eql(true)
    end
  end

  context '#taking off' do
    it 'allows planes to take off' do
      # Arrange
      airport.weather = 'sunny'

      # Act
      airport.land!(plane)
      airport.take_off(plane)

      # Assert
      expect(airport.in_port?(plane)).to eql(false)
    end
  end
end
