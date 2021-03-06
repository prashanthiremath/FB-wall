class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :is_subscribe
  # attr_accessible :title, :body

  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :posts, :dependent => :destroy

  def is_subscribe?
     self.is_subscribe
  end

end
