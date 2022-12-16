import ballerina/http;
import ballerina/io;

final http:Client brainyQuoteClient = check new ("http://localhost:9095/brainyquote");

public function main() {

    // Invoke the HTTP client and try to retrive a quote. 
    //This result should be a union type consisting `string` and `error`
    string|error res = brainyQuoteClient->/;

    // If the quote is received, print it to the console (using `io:println()`).

    // If an `error` has occurred, print the error message to the console
    if (res is error){
        io:println(res.message());
    } else if (res is string) {
        io:println(res);
    }
}
