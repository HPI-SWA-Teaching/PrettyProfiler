state
toggleProfiling

	self class isTallyRunning
		ifTrue: [self stopProfiling]
		ifFalse: [self startProfiling]