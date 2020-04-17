class Comment < ApplicationRecord
    belongs_to :article #articleテーブルとのアソシエーション
    belongs_to :user #userテーブルとのアソシエーション
end
