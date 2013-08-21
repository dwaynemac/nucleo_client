module NucleoClient
  module ServiceConfiguration
    def self.included(base)
      base.send('use_hydra', NucleoClient::HYDRA)
      #base.send('force_ssl')

      host = case ENV['RACK_ENV']
        when 'development'
          'nucleo_api'
        when 'production'
          'metododerose.org/nucleo_api'
      end

      base.send('set_resource_host', host)
      base.send('configure_index_response', {collection: 'collection', total: 'total'})

      base.send('set_api_key','api_key',ENV['nucleo_api_key'])
    end
  end
end