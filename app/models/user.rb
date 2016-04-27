class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts, inverse_of: :user
  has_many :comments do
    def compressed_comments
      select(:id)
    end
  end

  def self.find_or_create_from_auth_hash(auth)
    if !(user = User.find_by(provider: auth.provider, uid: auth.uid))
      case auth.provider
      when 'twitter'
        self.create_twiiter_user(auth)
      else
      
      end
    end
    user
  end

  private
  def self.create_twiiter_user(auth)
    user = User.new()
    user.name = auth.info.name
    user.email =  auth.info.email ? auth.info.email : "#{auth.info.screen_name}.name@twitter.com"
    user.provider = auth.provider
    user.uid = auth.uid
    user.password = SecureRandom.urlsafe_base64
    user.save
  end
end
