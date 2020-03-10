class Vector
  attr_accessor :x, :y, :z
  def initialize x = 0, y = 0, z = 0
    @x = x
    @y = y
    @z = z
  end

  # Addition of two vectors
  def add vector
    Vector.new(@x + vector.x, @y + vector.y, @z + vector.z)
  end

  # Substraction of two vectors
  def sub vector
    Vector.new(@x - vector.x, @y - vector.y, @z - vector.z)
  end

  # Multiplicate a vector by a scalar
  def mult scalar
    Vector.new(scalar * @x, scalar * @y, scalar * @z)
  end

  # Divide a vector by a scalar
  def div scalar
    Vector.new(@x / scalar, @y / scalar, @z / scalar)
  end

  # Dot product of two vectors
  def dot vector
    @x * vector.x + @y * vector.y + @z * vector.z
  end

  # Return the magnitude of a vector
  def mag
    Math.sqrt(@x**2 + @y**2)
  end

  # Return the squared magnitude (faster than mag)
  def mag_squared
    @x**2 + @y**2 + @z**2
  end

  # Set a vector to x and y value
  def set! x = 0, y = 0, z = 0
    @x = x
    @y = y
    @z = z
  end

  # Return the distance between two point
  def dist vector
    Math.sqrt((@x - vector.x)**2 + (@y - vector.y)**2 + (@z - vector.z)**2)
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
    @x == vector.x && @y == vector.y &&  @z == vector.z ? true : false
  end

end
