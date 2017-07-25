module Fastlane
	module Actions
		class RWPodRepoUpdate < Actions
			def self.run(praams)
				Actions.sh "pod repo update #{praams[:name]}"
			end

			def self.description
				"update the choice repo"
			end

			def self.is_supported?(platform)
        		platform == :ios
      		end
		end
	end
end