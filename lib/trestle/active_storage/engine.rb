module Trestle
  module ActiveStorage
    class Engine < Rails::Engine
      config.assets.precompile << 'activestorage.js' << 'trestle/active_storage_fields.js'



      initializer :extensions do
        Trestle::Resource.send(:include, Trestle::ActiveStorage::Resource)
        Trestle::Resource::Builder.send(:include, Trestle::ActiveStorage::Builder)
        Trestle::ResourceController.send(:include, Trestle::ActiveStorage::ControllerConcern)
      end
    end
  end
end
