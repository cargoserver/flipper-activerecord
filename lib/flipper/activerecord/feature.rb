module Flipper
  module ActiveRecord
    class Feature < ::ActiveRecord::Base
      self.table_name = "flipper_features"

      attr_accessible :name

      has_many :gates, foreign_key: "flipper_feature_id", :dependent => :destroy
    end
  end
end
