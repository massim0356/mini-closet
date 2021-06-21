class Clothing < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  SIZES = %w[XXS XS S M L XL XXL XXXL XXXXL]
  KINDS = %w[T-Shirts Pants Jackets Hoodies Socks Hats Shoes]
end
