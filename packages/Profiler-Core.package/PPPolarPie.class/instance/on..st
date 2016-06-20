as yet unclassified
on: newTallyCollection 
	
	tallyCollection := newTallyCollection.
	
	tallyCollection ifNotNil: [
		(tallyCollection isEmpty) ifFalse: [
		self addBlockAtLevel: 0 portion: 0.3 offset: 0 itemWrapper: (tallyCollection anyOne)]]
	