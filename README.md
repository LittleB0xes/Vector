# Vector

A DragonRuby GTK Library to work with vector (2D or 3D)

## Methods

**add(Vector) -> Vector**

Add a Vector
```ruby
a = Vector.new(2, 1)
b = Vector.new(5, 2)
c = a.add b # => c = {x: 7, y: 2, z: 0 }
```

**sub(Vector) -> Vector**

Substract a Vector
```ruby
a = Vector.new(2, 1, 1)
b = Vector.new(5, 2)
c = a.sub b # => c = {x: -3, y: -1, z: 1 }
```

**mult(Number) -> Vector**

Multiplies by a scalar

```ruby
a = Vector.new(6, 2)
c = a.mult 3 # => c = {x: 18, y: 6, z: 0 }
```

**div(Number) -> Vector**

Divide by a scalar
Return nil if scalar = 0

```ruby
a = Vector.new(6, 2, 1.5)
c = a.div 2 # => c = {x: 3, y: 1, z: 0.725 }
```
