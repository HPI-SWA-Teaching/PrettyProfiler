as yet unclassified
preferredColor
	| colors counter |
	
	(item isBottleneck) 
		ifTrue: [^ Color red].
	
	counter := (PackageInfo allPackages) size.
	colors := Color wheel:counter.
	^ colors at: ((item tallyClass) category asPacked \\ counter)