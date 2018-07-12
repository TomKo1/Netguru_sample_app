class Quote < ActiveRecord::Base 
    validates :quotation, presence: true, length: { in: 5..255 }

end