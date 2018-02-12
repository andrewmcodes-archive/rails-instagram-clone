image_url = 'http://docs.imagga.com/static/images/docs/sample/japan-605234_1280.jpg'
api_key = ''
api_secret = ''

auth = 'Basic ' + Base64.strict_encode64( "#{api_key}:#{api_secret}" ).chomp
response = RestClient.get "https://api.imagga.com/v1/tagging?url=#{image_url}", { :Authorization => auth }