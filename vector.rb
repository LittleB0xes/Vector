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
    if scalar != 0
      Vector.new(self[:x] / scalar, self[:y] / scalar, self[:z] / scalar)
    else
      nil
    end
  end

  # Dot product of two vectors
  def dot vector
    self[:x] * vector.x + self[:y] * vector.y + self[:z] * vector.z
  end

  # Return the cross product af vectors
  def cross vector
    x = self[:y] * vector.z - self[:z] * vector.y
    y = self[:z] * vector.x - self[:x] * vector.z
    z = self[:x] * vector.y - self[:y] * vector.x
    Vector.new(x, y, z)
  end

  # Return the magnitude of a vector
  def mag
    Math.sqrt(self[:x]**2 + self[:y]**2 + self[:z]**2)
  end

  # Return the squared magnitude (faster than mag)
  def mag_squared
    self[:x]**2 + self[:y]**2 + self[:z]**2
  end

  # Set a vector to x and y value
  def self.set! x = 0, y = 0, z = 0
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
    mag = self.mag
    if mag == 0
      self.set(0,0,0)
    else
      mag = self.mag
      self.set!(self[:x] * value / mag, self[:y] * value / mag, self[:z] * value / mag)
    end
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

  # Return the oriented angle between two vectors
  def angle_with vector
    cos_angle =[1, [(self.dot vector) / (self.mag * vector.mag), -1].max].min

    # sign of angle ?
    sign = (self.cross vector).z <=> 0.0
    sign = 1 if sign == 0

    Math.acos(cos_angle) * sign
  end
end

class Array
  def to_vector3D
    Vector.new(self[0], self[1], self[2])
  end
end
