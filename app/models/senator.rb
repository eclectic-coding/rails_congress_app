class Senator < ApplicationRecord
  default_scope { order({ last_name: :asc }) }

end
