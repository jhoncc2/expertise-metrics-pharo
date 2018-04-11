private
groups: spec
	spec for: #'common' do: [
		spec		
			"default"
			group: #'code' with: #( 
				#'Expertise-PharoChanges-Calculator'
				#'Expertise-PharoChanges-DiscordBot'
				#'Expertise-PharoChanges-Reader' );
			group: #'tests' with: #( #'Expertise-PharoChanges-ReaderTests' );
			group: #'default' with: #( #'code' #'tests' )
	].