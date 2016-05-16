class BucketlistSerializer < ActiveModel::Serializer
  attributes :id, :name, :items, :date_created, :date_modified, :created_by
  has_many :items

  def created_by
    object.user.name
  end
end
