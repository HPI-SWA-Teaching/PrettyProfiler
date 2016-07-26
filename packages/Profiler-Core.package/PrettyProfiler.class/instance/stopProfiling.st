as yet unclassified
stopProfiling

	BetterMessageTally terminateTimerProcess.
	tallyResult := (BetterMessageTally makeTallyCollection: self).
	self updateResults: tallyResult. 
	runButton label: self class startText.