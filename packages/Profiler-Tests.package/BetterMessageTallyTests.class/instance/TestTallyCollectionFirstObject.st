as yet unclassified
TestTallyCollectionFirstObject

	BetterMessageTally spyOn: PrettyProfiler testBlock.
	self
		assert: BetterMessageTally tallyObjectCollection first totalParents
		equals: 0
		description: 'The first tallyObject in collection has parents, so it is not really the first object.'