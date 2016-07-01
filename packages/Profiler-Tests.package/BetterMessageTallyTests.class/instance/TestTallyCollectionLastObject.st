as yet unclassified
TestTallyCollectionLastObject

	BetterMessageTally spyOn: PrettyProfiler testBlock.
	self
		assert: BetterMessageTally tallyObjectCollection last tallyChildren isEmpty
		equals: true
		description: 'The last tallyObject in collection has children, so it is not really the last object'.