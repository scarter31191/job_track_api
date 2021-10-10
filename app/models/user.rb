class User < ApplicationRecord
    has_many :goals
    has_many :job_opportunities
    
    has_secure_password

    validates_presence_of :email
    validates_uniqueness_of :email
end
