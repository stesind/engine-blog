module Blog
  class Comment < ActiveRecord::Base
    attr_accessible :post_id, :text
  end
end
