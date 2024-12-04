# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  image      :string
#  name       :string
#  region     :string
#  review     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Review < ApplicationRecord
end
