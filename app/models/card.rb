class Card < ApplicationRecord
  belongs_to :user
  belongs_to :employer
  belongs_to :bank
  has_many :transactions
end
