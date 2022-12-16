import ballerina/http;

service / on new http:Listener(9090) {

    // This resource should accept a GET request at the path `/echo` and have a query param `sound`
    resource function get greeting() returns string{
        return "Hello, World!";
    }
}
