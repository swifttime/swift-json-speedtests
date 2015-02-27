# swift-json-speedtests
Simplistic test of Swift JSON decoding

Adding a pure swift test of JSON parsing with [owensd/json-swift](https://github.com/owensd/json-swift/)

[SwiftTime Article](http://swiftti.me/swift%20json%20performance/2015/01/22/swift-json-speed-tests.html)

![results](https://raw.githubusercontent.com/swifttime/swift-json-speedtests/master/results.jpg)

Added a test using JavaScriptCore to parse the JSON and it was slowing than all the rest...

![JavaScriptCore](https://raw.githubusercontent.com/swifttime/swift-json-speedtests/master/JavaScriptCore.png)
