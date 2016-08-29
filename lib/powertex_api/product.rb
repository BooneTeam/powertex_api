module PowertexApi
  class Product
    class << self
      def all_by_name_split_by_pipe
        response = HTTParty.get(BASE_URL + '/api/products', headers)
        powertex_products = response['$values']
        # Names look like this currently
        # Red Hoodie | Large
        # So pull out the stuff after | as a variation

        powertex_products.group_by { |p| p['name'].split('|').first }
      end

      def all
        PowertexApi::Api.get_request('/api/products') do |response|
          response['$values']
        end
      end

    end
  end
end