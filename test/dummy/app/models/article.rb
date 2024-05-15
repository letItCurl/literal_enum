class Article < ApplicationRecord
  literal_enum :status, ["pending", "accepted"]
end
