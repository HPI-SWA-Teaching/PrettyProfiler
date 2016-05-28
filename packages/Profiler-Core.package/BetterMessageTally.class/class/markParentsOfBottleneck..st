as yet unclassified
markParentsOfBottleneck: aTallyObject

	(aTallyObject tallyParent notNil)
		ifTrue: [aTallyObject tallyParent isBottleneck: true.
			self markParentsOfBottleneck: aTallyObject tallyParent]