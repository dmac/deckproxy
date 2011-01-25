class User < ActiveRecord::Base
  validates_presence_of :email, :password, :password_confirmation, :salt
  validates_uniqueness_of :email
  validates_confirmation_of :password
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Invalid email"

  attr_protected :id, :salt
  attr_accessor :password, :password_confirmation

  def set_password(password)
    @password=password
    self.salt = User.random_string(10) if !self.salt?
    self.password = User.encrypt(@password, self.salt)
  end

  def send_new_password
    #new_pass = User.random_string(10)
    #self.password = self.password_confirmation = new_pass
    #self.save
    # TODO: email new password
  end

  def self.authenticate(email, password)
    user = User.find(:first, :conditions => { :email => email })
    return nil if user.nil?
    return user if User.encrypt(password, user.salt) == user.password
    nil
  end

  private

  def self.encrypt(password, salt)
    Digest::SHA1.hexdigest(password + salt)
  end

  def self.random_string(len = 10)
    chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
    string = ""
    1.upto(len) { |i| string << chars[rand(chars.size-1)] }
    return string
  end

end
