require 'caracal/core/models/section_break_model'


module Caracal
  module Core

    # This module encapsulates all the functionality related to adding page
    # breaks to the document.
    #
    module SectionBreaks
      def self.included(base)
        base.class_eval do

          #-------------------------------------------------------------
          # Public Methods
          #-------------------------------------------------------------

          def section_break
            model     = Caracal::Core::Models::SectionBreakModel.new()
            contents << model
            model
          end

        end
      end
    end

  end
end