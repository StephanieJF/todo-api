class ItemSerializer < ActiveModel::Serializer
  attributes :id, :body

  def body
    object.body
  end
end
