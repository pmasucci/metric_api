class RepresentationSerializer < ActiveModel::Serializer
  # determines which attributes will be shown in the represntation.
  attributes :id, :chart_type, :structure
end
