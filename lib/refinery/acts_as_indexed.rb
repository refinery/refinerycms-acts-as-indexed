module Refinery
  module ActsAsIndexed
    class << self
      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end
    end
  end
end

require 'refinery/acts_as_indexed/engine'
