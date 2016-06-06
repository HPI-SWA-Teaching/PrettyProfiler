as yet unclassified
defaultBlock 
	^ [[Sensor peekPosition y>0] whileTrue: [World doOneCycle]]