# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  image      :string
#  name       :string
#  rate       :integer
#  region     :string
#  review     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Review < ApplicationRecord
end
