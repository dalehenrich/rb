instance creation
onEnvironment: anEnvironment packageNames: aCollection
	^ self onEnvironment: anEnvironment packages: (aCollection collect: [ :each | PackageInfo named: each ])