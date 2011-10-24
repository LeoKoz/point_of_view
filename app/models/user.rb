class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
  easy_roles :roles_mask, :method => :bitmask
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :name, :password, :password_confirmation, :remember_me
  
  has_one :board
  has_many :themes,	:dependent => :destroy
  
  # Constant variable storing roles in the system
  ROLES_MASK = %w[admin moderator user]
  
  #implement in future
  def feed
   
  end


end
