# cURL POST

[Back](../index.md#curl){: .button}

```sh
# Basic POST request
curl -X POST http://localhost:8080/resource

# Post with form data
curl -d "param1=value1&param2=value2" -X POST http://localhost:8080/resource

# Post data with json content type
curl -d '{"key1": "value1", "key2": "value2"}' -h "Content-Type: application/json" -X POST http://localhost:8080/resource

# Verbose
curl -v -X POST http://localhost:8080/resource

# Write output to file
curl -o abc.txt -d "param1=value1&param2=value2" -X POST http://localhost:8080/resource

```



