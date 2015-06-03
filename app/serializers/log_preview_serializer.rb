class LogPreviewSerializer < ActiveModel::Serializer
  # determines which attributes will be shown in the represntation.
  attributes :id, :name
end
