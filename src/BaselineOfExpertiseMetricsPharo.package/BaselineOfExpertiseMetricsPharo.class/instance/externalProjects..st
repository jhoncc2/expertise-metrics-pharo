private
externalProjects: spec
	spec for: #'common' do: [
		spec
			baseline: 'DiscordSt' with: [ 
				spec
					repository: 'github://JurajKubelka/DiscordSt/src';
					loads: #default ];
			configuration: 'NeoJSON' with: [ 
				spec
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main';
					loads: #default ].
	].