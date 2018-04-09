private
corePackages: spec
	spec for: #'common' do: [
		spec
			package: #'Expertise-PharoChanges-Calculator';
			package: #'Expertise-PharoChanges-DiscordBot' with: [
				spec requires: #( #'DiscordSt' #'Expertise-PharoChanges-Reader' ). ];

			package: #'Expertise-PharoChanges-Reader' with: [
				spec requires: #( #'NeoJSON' #'ExternalVolatileStore' ). ];
			package: #'Expertise-PharoChanges-ReaderTests' with: [
				spec requires: #( #'Expertise-PharoChanges-Reader' ). ]
	].