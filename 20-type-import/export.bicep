@export()
type myObjectType = {
  foo: string
  bar: int
}

@export()
var myConstant = 'This is a constant value'

@export()
func sayHello(name string) string => 'Hello ${name}!'
