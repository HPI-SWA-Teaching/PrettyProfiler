state
toggleProfiling

	self isTallyRunning
		ifTrue: [self stopProfiling]
		ifFalse: [self startProfiling]