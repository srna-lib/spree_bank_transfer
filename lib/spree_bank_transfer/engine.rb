module SpreeBankTransfer
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_bank_transfer'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer 'spree_bank_transfer.register.payment_methods' do |app|
      app.config.spree.payment_methods << Spree::PaymentMethod::BankTransfer
    end

    config.to_prepare do
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')).each do |decorator|
        load decorator
      end
    end
  end
end
