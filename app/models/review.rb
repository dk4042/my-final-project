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
# class Review < ApplicationRecord
# belongs_to(:reviewer, class_name: "User", foreign_key: "reviewer_id")
# end
