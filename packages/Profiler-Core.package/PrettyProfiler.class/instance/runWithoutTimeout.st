as yet unclassified
runWithoutTimeout

	BetterMessageTally spyOn: [
		Transcript show: '<runWithoutTimeout>'.
		self block.
		self isTallyRunning: false]