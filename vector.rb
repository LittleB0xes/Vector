class Vector < Hash
  def initialize x_init = 0, y_init = 0, z_init = 0
    super nil
    self[:x] = x_init
    self[:y] = y_init
    self[:z] = z_init
  end

  def x
    self[:x]
  end

  def y
    self[:y]
  end

  def z
    self[:z]
  end

  # Addition of two vectors
  def add vector
    Vector.new(self[:x] + vector.x, self[:y] + vector.y, self[:z] + vector.z)
  end

  # Substraction of two vectors
  def sub vector
    Vector.new(self[:x] - vector.x, self[:y] - vector.y, self[:z] - vector.z)
  end

  # Multiplicate a vector by a scalar
  def mult scalar
    Vector.new(scalar * self[:x], scalar * self[:y], scalar * self[:z])
  end

  # Divide a vector by a scalar
  def div scalar
    Vector.new(self[:x] / scalar, self[:y] / scalar, self[:z] / scalar)
  end

  # Dot product of two vectors
  def dot vector
    self[:x] * vector.x + self[:y] * vector.y + self[:z] * vector.z
  end

  # Return the magnitude of a vector
  def mag
    Math.sqrt(self[:x]**2 + self[:y]**2).round(14)
  end

  # Return the squared magnitude (faster than mag)
  def mag_squared
    self[:x]**2 + self[:y]**2 + self[:z]**2
  end

  # Set a vector to x and y value
  def set! x = 0, y = 0, z = 0
    self[:x] = x
    self[:y] = y
    self[:z] = z
  end

  # Return the distance between two point
  def dist vector
    Math.sqrt((self[:x] - vector.x)**2 + (self[:y] - vector.y)**2 + (self[:z] - vector.z)**2)
  end

  # Set the magnitude of a vector
  def set_mag! value
    self.mult(value / self.mag)
  end

  # Limit a vector to a max value
  def limit! value
    self.mag > value ? self.set_mag!(value) : self
  end

  # normalize a vector
  def normalize!
    self.set_mag! 1
  end

  # Test if two vectors are equal
  def is_equal? vector
    self[:x] == vector.x && self[:y] == vector.y &&  self[:z] == vector.z ? true : false
  end

  # Return an array representation of th vector
  def get_array
    [self[:x], self[:y], self[:z]]
  end

  # Return the angle between two vectors
  def angle_with vector
    cos_angle = (self.dot vector) / (self.mag * vector.mag)

  end


end


class Array
  def to_vector3D
    Vector.new(self[0], self[1], self[2])
  end
end