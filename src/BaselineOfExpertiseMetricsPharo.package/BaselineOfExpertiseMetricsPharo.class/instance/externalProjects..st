private
externalProjects: spec
	spec for: #'common' do: [
		spec
			configuration: 'DiscordSt' with: [ 
				spec
					repository: 'github://JurajKubelka/DiscordSt/src';
					loads: #default ]
	].