require 'addressable/uri'
require 'rest_client'

class MyFirstSession
  def get_url(path, query)
    Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: path,
      query_values: query
    ).to_s
  end

  def initialize
    @token = login
    @user_id = get_user_id
  end

  def get_user_id
    RestClient.get(get_url("users/token.json", {token: @token}))
  end

  def login
    print "email: "
    email = gets.chomp
    print "password: "
    pword = gets.chomp

    RestClient.get(get_url("users/login.json", {email: email, password: pword}))
  end

  def get_contacts
    RestClient.get(get_url("users/#{@user_id}/contacts.json", {token: @token}))
  end



end


