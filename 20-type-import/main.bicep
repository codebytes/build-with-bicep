import * as myImports from 'export.bicep'
import {myObjectType, sayHello} from 'export.bicep'

param exampleObject myObjectType = {
  foo: myImports.myConstant
  bar: 0
}

output greeting string = sayHello('Bicep user')
output exampleObject myImports.myObjectType = exampleObject
