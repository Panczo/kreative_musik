class Song < ActiveRecord::Base
  belongs_to :team
  belongs_to :user
end
