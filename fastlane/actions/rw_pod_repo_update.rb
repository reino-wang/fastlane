module Fastlane
  module Actions
    # module SharedValues
    #   RW_POD_REPO_UPDATE_CUSTOM_VALUE = :RW_POD_REPO_UPDATE_CUSTOM_VALUE
    # end

    class RwPodRepoUpdateAction < Action
      def self.run(params)
        target_repo = params[:repo]
        result = Actions.sh "pod repo update";
        UI.message "Successfully pod repo update"
        return result;
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "pod repo update"
      end

      # def self.details
      #   # Optional:
      #   # this is your chance to provide a more detailed description of this action
      # end

      # def self.available_options
      #   # Define all options your action supports. 
        
      #   # Below a few examples
      #   [

      #   ]
      # end

      # def self.output
      #   # Define the shared values you are going to provide
      #   # Example
      #   [
      #     ['RW_POD_REPO_UPDATE_CUSTOM_VALUE', 'A description of what this value contains']
      #   ]
      # end

      # def self.return_value
      #   # If your method provides a return value, you can describe here what it does
      # end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["Reino"]
      end

      def self.is_supported?(platform)
        platform == :ios
      end
    end
  end
end
