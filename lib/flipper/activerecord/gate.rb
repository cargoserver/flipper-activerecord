module Flipper
  module ActiveRecord
    class Gate < ::ActiveRecord::Base
      self.table_name = "flipper_gates"

      attr_accessible :name, :value

      belongs_to :feature, foreign_key: "flipper_feature_id"
    end
  end
end
