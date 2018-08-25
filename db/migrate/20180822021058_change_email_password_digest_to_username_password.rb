class ChangeEmailPasswordDigestToUsernamePassword < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
        t.rename :email, :username
        t.rename :password_digest, :password
    end
  end
end

