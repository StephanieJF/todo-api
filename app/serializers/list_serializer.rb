class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :private

  def title
    object.title
  end

  def private
    object.private
  end
end
