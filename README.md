[![Gem Version](https://badge.fury.io/rb/jwt_manager.svg)](https://badge.fury.io/rb/jwt_manager)

Manages encoding/decoding of any payload data.

You can dynamically refer to the key used to encode/decode through the use of `secret_key_env_variable_name`.
By default, the key used is `JWT_MANAGER_SHARED_SECRET`.

**Usage:**  
Add an environment variable to your stack, with the JWT shared secret.
Use this variable's name to initialize the JWT Manager:

**Encoding**  
`manager = JwtManager.new('INTEGRATION_JWT_TOKEN') `  
`payload = { a: 1, b: 2 } `  
`token = manager.encode(payload) `


**Decoding**
`manager.decode(token)`
