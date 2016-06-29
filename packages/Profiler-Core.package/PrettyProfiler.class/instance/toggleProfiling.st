as yet unclassified
toggleProfiling

	self isTallyRunning
	ifTrue: [self stopProfiling]
	ifFalse: [self startProfiling]