class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role

  has_many :points

  before_save :asig_role_id

  def asig_role_id
    self.role_id ||= 1
    #definir los roles
  end

  def admin?
    self.role.name == "Admin"
  end

  def juez?
    self.role.name == "Juez"
  end

  def comun?
    self.role.name == "Comun"
  end
  def name_with_initial
    "#{nombre} #{apellido}"
  end
end