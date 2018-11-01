require "mock_collector/openshift/entity"

module MockCollector
  module Openshift
    class Entity::Pod < Entity
      attr_reader :podIP, :nodeName

      def self.ingress_api_class
        TopologicalInventory::IngressApi::Client::ContainerGroup
      end

      def initialize(id, server)
        super

        @podIP    = "127.0.0.1"
        @nodeName = link_to(:nodes, :ref => :name)
      end

      def status
        self
      end

      def spec
        self
      end
    end
  end
end