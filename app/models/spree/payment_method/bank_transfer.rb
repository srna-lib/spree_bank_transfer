module Spree
  class PaymentMethod::BankTransfer < PaymentMethod
    def actions
      %w[capture void]
    end

    def can_capture?(payment)
      %w[checkout pending].include?(payment.state)
    end

    def can_void?(payment)
      payment.state != 'void'
    end

    def capture(*)
      ActiveMerchant::Billing::Response.new(true, '', {}, {})
    end

    def void(*)
      ActiveMerchant::Billing::Response.new(true, '', {}, {})
    end

    def credit(money, credit_card, response_code, options = {})
      ActiveMerchant::Billing::Response.new(true, '', {}, {})
    end

    def source_required?
      false
    end
  end
end
