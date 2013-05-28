class Post < ActiveRecord::Base
  validates_presence_of :content
  validates_presence_of :title
  # TODO Implement Post associations. See post_spec.rb for specification.

  # TODO Implement Post validations. See post_spec.rb for specification.
  belongs_to :user
  has_many :comments

end
