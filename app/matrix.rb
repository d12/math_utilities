```ruby
require "matrix"

class Matrix
  def self.add(a, b)
    Matrix[*a.data] + Matrix[*b.data]
  end

  def self.subtract(a, b)
    Matrix[*a.data] - Matrix[*b.data]
  end
end
```
