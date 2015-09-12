import UIKit

//Tuples group multiple values into a single compound value. The values within a tuple can be of any type and do not have to be of the same type as each other.
//
//In this example, (404, "Not Found") is a tuple that describes an HTTP status code. An HTTP status code is a special value returned by a web server whenever you request a web page. A status code of 404 Not Found is returned if you request a webpage that doesn’t exist.



let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")




//You can decompose a tuple’s contents into separate constants or variables, which you then access as usual:

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// prints "The status code is 404"
print("The status message is \(statusMessage)")
// prints "The status message is Not Found"




//If you only need some of the tuple’s values, ignore parts of the tuple with an underscore (_) when you decompose the tuple:

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// prints "The status code is 404"




//Alternatively, access the individual element values in a tuple using index numbers starting at zero:

print("The status code is \(http404Error.0)")
// prints "The status code is 404"
print("The status message is \(http404Error.1)")
// prints "The status message is Not Found"




//You can name the individual elements in a tuple when the tuple is defined:

let http200Status = (statusCode: 200, description: "OK")




//If you name the elements in a tuple, you can use the element names to access the values of those elements:

print("The status code is \(http200Status.statusCode)")
// prints "The status code is 200"
print("The status message is \(http200Status.description)")
// prints "The status message is OK"




//Tuples are particularly useful as the return values of functions. A function that tries to retrieve a web page might return the (Int, String) tuple type to describe the success or failure of the page retrieval. By returning a tuple with two distinct values, each of a different type, the function provides more useful information about its outcome than if it could only return a single value of a single type. For more information, see Functions with Multiple Return Values.