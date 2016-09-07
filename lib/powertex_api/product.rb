module PowertexApi
  class Product
    class << self


      # Names look like this currently
      # Red Hoodie | Large
      # Red Hoodie | Small
      # So pull out the stuff after | as a variation
      def all_by_name_split_by_pipe
        PowertexApi::Api.get_request('/api/products') do |response|
          powertex_products  = response['$values']
          powertex_products.group_by { |p| p['name'].split('|').first }
        end
      end

      def all
        PowertexApi::Api.get_request('/api/products') do |response|
          response['$values']
        end
      end

    end
  end
end