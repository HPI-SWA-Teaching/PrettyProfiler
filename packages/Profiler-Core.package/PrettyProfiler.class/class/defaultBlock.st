as yet unclassified
defaultBlock 
	^ [[Sensor peekPosition y>0 and: self isTallyRunning] whileTrue: [World doOneCycle]]