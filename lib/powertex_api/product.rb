module PowertexApi
  class Product
    class << self


      def all_by_base_sku
        PowertexApi::Api.get_request('/api/products') do |response|
          powertex_products = response['$values']
          powertex_products.group_by { |product| product['baseSku'] }
        end
      end

      def items_grouped_by_product_sku_fdl_base
        PowertexApi::Api.get_request('/api/products') do |response|
          powertex_products = response['$values']
          powertex_products.group_by do |product|
            /(\w*-\w*)-?/.match(product['sku']).captures[0]
          end
        end
      end

      # Names look like this currently
      # Red Hoodie | Large
      # Red Hoodie | Small
      # So pull out the stuff after | as a variation
      def all_by_name_split_by_pipe
        PowertexApi::Api.get_request('/api/products') do |response|
          powertex_products = response['$values']
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