# Vector

A DragonRuby GTK Library to work with vector (2D or 3D)

... work in progress ...

## Methods

**add(Vector) -> new Vector**

Add a Vector
```ruby
a = Vector.new(2, 1)
b = Vector.new(5, 2)
c = a.add b       # => c = {x: 7, y: 2, z: 0 }
```

**sub(Vector) -> new Vector**

Substract a Vector
```ruby
a = Vector.new(2, 1, 1)
b = Vector.new(5, 2)
c = a.sub b       # => c = {x: -3, y: -1, z: 1 }
```

**mult(Number) -> new Vector**

Multiplies by a scalar

```ruby
a = Vector.new(6, 2)
c = a.mult 3      # => c = {x: 18, y: 6, z: 0 }
```

**div(Number) -> new Vector**

Divide by a scalar
Return nil if scalar = 0

```ruby
a = Vector.new(6, 2, 1.5)
c = a.div 2       # => c = {x: 3, y: 1, z: 0.725 }
```
**dot(Vector) -> Number**

Make the dot product of two vectors

```ruby
a = Vector.new(2 ,1 ,0)
b = Vector.new(1, 3)
c = a.dot b       # => c = 6
```

**mag -> Number**

Return the magnitude of the vector

```ruby
a = Vector.new(3, 4)
c = a.mag         # => c = 5
```

**mag_squared -> Number

Return the squared magnitude of the vector (faster than mag)

```ruby
a = Vector.new(3, 4)
c = a.mag_squared         # => c = 25
```

**set!(x, y, z) -> Vector**

Set the value of the vector to x, y, z

```ruby
a = Vector.new(3, 1, 4)
a.set!(1, 5, 9)
puts a # => {x: 1, y: 5, z: 9}
```
