class LogSerializer < ActiveModel::Serializer
  # determines which attributes will be shown in the represntation.
  attributes :id, :name
  has_many :log_entries
  has_many :representations
end
