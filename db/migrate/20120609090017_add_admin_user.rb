class AddAdminUser < ActiveRecord::Migration
  def up
    user = AdminUser.create! :email => "admin@tevi.ru", :password => "admin", :password_confirmation => "admin"
    user.save!
  end

  def down
  end
end
