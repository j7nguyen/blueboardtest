class User < ActiveRecord::Base

  attr_accessor :password

  validates :email, :session_token, presence: true, uniqueness: true
  validates :password_digest, uniqueness: true
  validates :first_name, :last_name, presence: true
  validates :password, length: { minimum: 6 }, :allow_nil => true

  before_validation :ensure_session_token
  
  has_many :favorites
  has_many :activities, through: :favorites, source: :activity
  
  def name
    return "#{self.first_name} #{self.last_name}"
  end
  
  def favorited?(activity_id)
    favorite = (Favorite.find_by activity_id: activity_id, user_id: self.id)
    return !favorite.nil?
  end
  
  def toggle_favorite(activity_id)
    favorite = (Favorite.find_by activity_id: activity_id, user_id: self.id)
    if favorite.nil?
      Favorite.create({user_id: self.id, activity_id: activity_id})
    else
      favorite.destroy
    end
  end
  
  def find_favorite(activity_id)
    return (Favorite.find_by user_id: self.id, activity_id: activity_id)
  end
  
  def self.find_by_credentials(email, password)
    @user = User.find_by_email(email)
    @user.try(:is_password?, password) ? @user : nil
  end

  def password=(given_password)
    @password = given_password
    self.password_digest = BCrypt::Password.create(given_password)
  end

  def is_password?(given_password)
    BCrypt::Password.new(self.password_digest).is_password?(given_password)
  end

  def self.generate_session_token
    SecureRandom.urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
    self.session_token
  end
  
  private

  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end
end
