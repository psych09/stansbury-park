class Bulletin < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
end
