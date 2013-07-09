require 'addressable/uri'
require 'rest_client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/1.json',
  # query_values: {
  #   'some_category[a_key]' => 'another value',
  #   'some_category[a_second_key]' => 'yet another value',
  #   'some_category[inner_inner_hash][key]' => 'value',
  #   'something_else' => 'aaahhhh'
  # }
).to_s



# RestClient.post(url, {user: {name: "hahahhahahaa"}})

RestClient.put(url, name: 123, email: "Im a new email")

# RestClient.delete(url)
