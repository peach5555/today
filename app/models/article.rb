class Article < ApplicationRecord
    belongs_to :user #userテーブルとのアソシエーション
    has_many :comments #commentsテーブルとのアソシエーション
end
