require 'nucleo_client/service_configuration'

module NucleoClient
  class School < LogicalModel
    include NucleoClient::ServiceConfiguration
    set_resource_path '/schools'

    attribute :id_unidade
    attribute :uni_federacao
    attribute :uni_nome
    attribute :uni_status

    alias_attribute :id, :id_unidade
    alias_attribute :name, :uni_nome
    alias_attribute :federation_id, :uni_federacao
    alias_attribute :status, :uni_status

    def federation
      Federation.find(federation_id)
    end
  end
end