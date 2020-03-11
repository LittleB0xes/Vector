# Vector

A DragonRuby GTK Library

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

**mult(Numbe) -> Vector**
Multiplies by a scalar

```ruby
a = Vector.new(6, 2)
c = a.mult 3 # => c = {x: 18, y: 6, z: 0 }
```
