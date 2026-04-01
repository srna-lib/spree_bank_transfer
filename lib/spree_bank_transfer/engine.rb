module SpreeBankTransfer
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_bank_transfer'

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
