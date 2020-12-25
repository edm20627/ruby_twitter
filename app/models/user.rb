class User < ApplicationRecord

    has_secure_password # gem 'bcrypt' 暗号化のgem passwordとpassword_digestが繋がる

    validates :name, {presence: true}
    validates :email, {presence: true, uniqueness: true}

    def posts
        return Post.where(user_id: self.id)
    end

end
