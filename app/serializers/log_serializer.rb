class LogSerializer < ActiveModel::Serializer
  # determines which attributes will be shown in the represntation.
  attributes :id, :name, :charts
  #has_many :log_entries
  #has_many :representations
end
