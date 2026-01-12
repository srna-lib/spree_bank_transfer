module SpreeBankTransfer
  module PaymentDecorator
    def self.prepended(base)
      base.class_eval do
        attr_accessor :validate_bank_details
        validates :bank_name, :account_no, :transaction_reference_no, :deposited_on, presence: true, if: :validate_bank_details

        scope :from_bank_transfer, -> { joins(:payment_method).where(spree_payment_methods: { type: 'Spree::PaymentMethod::BankTransfer' }) }
      end
    end

    def details_submitted?
      transaction_reference_no?
    end
  end
end

Spree::Payment.prepend(SpreeBankTransfer::PaymentDecorator)
