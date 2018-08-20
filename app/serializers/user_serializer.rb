class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest

  def email
    object.email
  end

  def password_digest
    object.password_digest
  end
end
