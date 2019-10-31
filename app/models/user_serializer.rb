class UserSerializer < ActiveModel::Serializer
    attributes :name, :username, :description
  end