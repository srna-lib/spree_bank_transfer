module Spree
  class Bank < Spree::Base
    validates :name, :account_no, presence: true
    validates :account_no, uniqueness: { scope: :name }

    scope :active, -> { where(active: true) }
  end
end
