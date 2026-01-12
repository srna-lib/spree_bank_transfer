module SpreeBankTransfer
  module ContentControllerDecorator
    def bank_transfer
      render layout: false
    end
  end
end

Spree::ContentController.prepend(SpreeBankTransfer::ContentControllerDecorator)
