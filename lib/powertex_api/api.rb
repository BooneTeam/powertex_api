module PowertexApi
  class Api
    # attr_reader :password, :username, :api_key, :base_url
    # attr_accessor :token


    class << self

      BASE_URL = 'http://fulfillment.ptxsecure.com'

      def initiate_connection(options = {})
        @@password = options[:password] || raise('Must Supply Password')
        @@username = options[:username] || raise('Must Supply Username')
        @@api_key = options[:api_key] || raise('Must Supply API Key')
        @@token = get_token
      end

      def token
        @@token ||= get_token
      end

      def get_token
        response = HTTParty.post(BASE_URL + '/token',
                                 {body:
                                      {grant_type: 'password',
                                       username: @@username,
                                       password: @@password}
                                 })

        token = response["access_token"]

        return 'Bearer ' + token
      end

      def headers
        {:headers => {"Authorization" => @@token, "X-APIKEY" => @@api_key}}
      end

      def get_request(route)
        response = HTTParty.get(BASE_URL + route, headers)
        yield(response);
      end

      def pst_request(route)
        response = HTTParty.post(BASE_URL + route, headers)
        yield(response);
      end

    end
  end
end