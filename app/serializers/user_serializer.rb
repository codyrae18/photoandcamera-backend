class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :username, :image

  def image
    # rails_blob_path(object.image, disposition: "attachment", only_path: true) if object.image.attached?
    Rails.application.routes.url_helpers.rails_blob_path(object.image, only_path:true)
  end


end
