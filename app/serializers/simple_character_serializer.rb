class SimpleCharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
end