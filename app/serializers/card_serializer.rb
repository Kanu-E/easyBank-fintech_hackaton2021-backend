class CardSerializer < ActiveModel::Serializer
  belongs_to :employer
  belongs_to :user
  belongs_to :bank
  has_many :transactions
  attributes :id, :transactions, :card_number
end
