as yet unclassified
on: newTallyCollection

	| offset |
	
	tallyCollection := newTallyCollection.
	offset := 0.
	
	tallyCollection ifNotNil: [
		self buildLevel: 0 forCollection: tallyCollection offset: 0]