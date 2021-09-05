class SimpleMovieSerializer < ActiveModel::Serializer
  attributes :id, :image, :title, :creating
end