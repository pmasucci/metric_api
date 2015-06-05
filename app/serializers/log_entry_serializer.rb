class LogEntrySerializer < ActiveModel::Serializer
  # determines which attributes will be shown in the represntation.
  attributes :id, :data

end
