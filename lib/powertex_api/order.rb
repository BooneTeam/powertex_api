module PowertexApi
  class Order

    class << self
      def all
        PowertexApi::Api.get_request('/api/orders') do |response|
          response['$values']
        end
      end


      def create(params)
        PowertexApi::Api.post_request('/api/orders', params) do |response|
          response
        end
      end
    end
  end
end