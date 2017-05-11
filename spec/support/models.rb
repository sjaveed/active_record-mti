require 'active_record'
require 'pry'

class Comment < ::ActiveRecord::Base
  belongs_to :user
  belongs_to :post

end

class Post < ::ActiveRecord::Base
  belongs_to :user
  has_many :comments
end

class User < ::ActiveRecord::Base
  uses_mti

  has_many :posts
  has_many :comments

end

class Admin < User
  self.table_name = 'admins'
end

module Transportation
  class Vehicle < ::ActiveRecord::Base
    uses_mti
  end

  class Truck < Vehicle
    self.table_name = 'vehicles/trucks'
  end
end
