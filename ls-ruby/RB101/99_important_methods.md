# Important Methods

| Name           | Description                                                         | Signature         |
| -------------- | ------------------------------------------------------------------- | ----------------- |
| [[#`inspect`]] | Returns a string containing a human-readable representation of _obj | inspect -> string |

## Examples

### `inspect`

```ruby
[ 1, 2, 3..4, 'five' ].inspect   #=> "[1, 2, 3..4, \"five\"]"
Time.new.inspect                 #=> "2008-03-08 19:43:39 +0900"

class Foo
end
Foo.new.inspect                  #=> "#<Foo:0x0300c868>"

class Bar
  def initialize
    @bar = 1
  end
end
Bar.new.inspect                  #=> "#<Bar:0x0300c868 @bar=1>"
```

