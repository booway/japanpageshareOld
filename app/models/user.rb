# == Schema Information
#
# Table name: users
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  
  # has_many :friendships
  # has_many :friends, :through => :friendships
  # has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  # has_many :inverse_friends, :through => :inverse_friendships, :source => :user
#   
  # attr_accessor :password
  # attr_accessible :id ,:name, :email, :password, :password_confirmation
  # scope :admin, where(:admin => true)
#   
  # has_many :microposts, :dependent => :destroy
  # has_many :relationships, :foreign_key => "follower_id",
                           # :dependent => :destroy
  # has_many :following, :through => :relationships, :source => :followed
#   
  # has_many :reverse_relationships, :foreign_key => "followed_id",
                                   # :class_name => "Relationship",
                                   # :dependent => :destroy
  # has_many :followers, :through => :reverse_relationships, :source => :follower
#   
  # email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
#   
  # validates :name,  :presence => true,
                    # :length => {:maximum => 50}
  # validates :email, :presence => true,
                    # :uniqueness => {:case_sensitive => false},
                    # :format => {:with => email_regex }
  # validates :password, :presence     => true,
                       # :confirmation => true,
                       # :length       => { :within => 6..40 }
#   
  # before_save :encrypt_password
# 
  # def has_password?(submitted_password)
    # encrypted_password == encrypt(submitted_password)
  # end
#   
  # def self.authenticate(email, submitted_password)
    # user = find_by_email(email)
    # return nil  if user.nil?
    # return user if user.has_password?(submitted_password)
    # return nil
  # end
#   
  # def self.authenticate_with_salt(id, cookie_salt)
     # user = find_by_id(id)
    # (user && user.salt == cookie_salt) ? user : nil
  # end
#   
  # def feed
    # Micropost.from_users_followed_by(self)
  # end
#   
  # def following?(followed)
    # relationships.find_by_followed_id(followed)
  # end
# 
  # def unfollow!(followed)
    # relationships.find_by_followed_id(followed).destroy
  # end
# 
  # def follow!(followed)
    # relationships.create!(:followed_id => followed.id)
  # end
#   
  # private
# 
    # def encrypt_password
      # self.salt = make_salt unless has_password?(password)
      # self.encrypted_password = encrypt(password)
    # end
# 
    # def encrypt(string)
      # secure_hash("#{salt}--#{string}")
    # end
# 
    # def make_salt
      # secure_hash("#{Time.now.utc}--#{password}")
    # end
# 
    # def secure_hash(string)
      # Digest::SHA2.hexdigest(string)
    # end
end
