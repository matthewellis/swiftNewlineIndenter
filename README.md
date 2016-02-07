## Newline Indenter

swiftnewlineIndenter is the switft rewrite of a small utility written in objective-c that fixes the formatting of empty newlines in the same way the Xcode indent command would.
![Annimated Demo](https://github.com/matthewellis/newlineIndenter/blob/master/newlineIndenterDemo.gif?raw=true)

#API

##indentFileText
This method takes a string of the file to be formatted and will return a correctly indented version.

```swift
func indentFile(fileText:String) -> String
```
