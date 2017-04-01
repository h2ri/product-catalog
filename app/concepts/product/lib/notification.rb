module Product::Lib
  require 'net/http'
  require 'json'

  class Notification
    def self.call(model,*)

      body = {"name" => model[:name]}

      url = URI.parse(URI.encode('http://localhost:9200/medicine/external/' << model[:id].to_s))

      begin
        http = Net::HTTP.new(url.host, url.port)
        request = Net::HTTP::Post.new(url.request_uri)
        request.body = body.to_json


        res = http.request(request)
        puts res.body
        if res
          puts "True"
        end
        rescue Exception => e
          puts e.message
          puts e.backtrace.inspect
        end

      end
      true
    end
end

