require 'addressable/uri'
require 'rest_client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/1/contacts.json',
  query_values: {token: "1fVogaLW5y0CZQ=="}
).to_s


# RestClient.get(url)
# RestClient.post(url, {contact: {name: "blah", email: "blah@blah.com", user_id: 2}})
# RestClient.post(url, {user: {name: "hahahhahahaa"}})
# RestClient.put(url, {user: {name: "Im a noobie!!", email: "Im not real..."}})
# RestClient.delete(url)
# RestClient.get(url)

# RestClient.put(url, {contact: {name: "Im a super noobie!!", email: "Im really real!"}})

#RestClient.delete(url)
# RestClient.get(url)
# RestClient.post(url, {favorite: {contact_id: 3}})
RestClient.get(url)