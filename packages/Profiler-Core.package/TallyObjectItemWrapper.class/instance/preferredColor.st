as yet unclassified
preferredColor
	| colors counter |
	counter := (PackageInfo allPackages) size.
	colors := Color wheel:counter.
	^ colors at: ((item tallyClass) category asPacked \\ counter)