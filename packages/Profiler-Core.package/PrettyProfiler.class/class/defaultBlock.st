block
defaultBlock

	^ [[self isTallyRunning] whileTrue: [World doOneCycle]]