class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def admin?
    !admin.nil?
  end

  def get_all_admins
    admins = []
    User.all.each do |user|
      admins << user
    end
    admins
  end

end
