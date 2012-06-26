require 'uri'
require 'net/http'

class Adspeed
  
  def self.configure(api_key, api_secret)
    @@api_key = api_key
    @@api_secret = api_secret
    @@api_url = "http://api.adspeed.com/"
  end
  
  def self.get_api(method, params = {})
    params = params.merge!({:key => @@api_key, :method => method})    
    query = params.sort.map { |key, value| "#{URI.escape(key.to_s)}=#{URI.escape(value)}"}.join("&")
    
    url = URI.parse(@@api_url + "?#{query}&md5=" + Digest::MD5.hexdigest(@@api_secret + query))
       
    req = Net::HTTP::Get.new(url.path)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    res.body
  end
  
  def self.post_api(method, params = {})
    params = params.merge!({:key => @@api_key, :method => method})
    
    query = params.sort.map { |key, value| "#{URI.escape(key.to_s)}=#{URI.escape(value)}"}.join("&")
    query += ("&md5=" + Digest::MD5.hexdigest(@@api_secret + query))
    
    url = URI.parse @@api_url
         
    res = Net::HTTP.post_form(url, query)
    res.body
  end
  
  
end