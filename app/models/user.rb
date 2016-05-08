class User < ActiveRecord::Base
  has_secure_password
  has_many :session_tokens

  def generate_token
      SessionToken.create(user_id: id, token: SecureRandom.urlsafe_base64.to_s)
  end
end
