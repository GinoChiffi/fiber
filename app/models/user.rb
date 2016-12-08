class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable,
  :omniauthable, omniauth_providers: [:facebook]

  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
                                  foreign_key: "followed_id",
                                  dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  has_many :orders
  has_many :item_likes
  has_many :items


  validates :user_name, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :gender, presence: true
  validates :birth_date, presence: true
  # validates :shoe_size, presence: true, on: :update
  # validates :top_size, presence: true, on: :update
  # validates :bottom_size, presence: true, on: :update

  def liked_items
    item_likes.map(&:item)
  end

  def female?
    gender == 'Female'
  end

  def uptodate?
    if gender == 'Female'
      ![shoe_size, top_size, bottom_size,
      jacket_size, underwear_size, accessoire_size,
      jewelry_size, dress_size, swimsuit_size]
      .map(&:present?).include?(false)
    else
      ![shoe_size, top_size, bottom_size,
      jacket_size, underwear_size, accessoire_size,
      jewelry_size, swimsuit_size]
      .map(&:present?).include?(false)
    end
  end
def self.find_for_facebook_oauth(auth)
    user_params = auth.to_h.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]
      user.save
    end

    return user
  end


  def sizes
    [shoe_size, jacket_size, bottom_size, underwear_size, accessoire_size, jewelry_size, top_size, swimsuit_size, dress_size].compact.reject(&:empty?)
  end

end
