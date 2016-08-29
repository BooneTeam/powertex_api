module PowertexApi
  class Order

    class << self
      def all
        PowertexApi::Api.get_request('/api/orders') do |response|
          response['$values']
        end
      end


      def create(params)

      end
    end
  end
end