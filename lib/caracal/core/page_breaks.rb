require 'caracal/core/models/page_break_model'
require 'caracal/core/models/section_break_model'


module Caracal
  module Core
    
    # This module encapsulates all the functionality related to adding page
    # breaks to the document.
    #
    module PageBreaks
      def self.included(base)
        base.class_eval do
          
          #-------------------------------------------------------------
          # Public Methods
          #-------------------------------------------------------------
          
          def page
            model     = Caracal::Core::Models::PageBreakModel.new()
            contents << model
            model
          end

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