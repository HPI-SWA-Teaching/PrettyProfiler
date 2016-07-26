as yet unclassified
testProfileThis

	BetterMessageTally tallyObjectCollection removeAll.
	
	PrettyProfiler profileThis: '[10000 timesRepeat:[10 timesRepeat:[#(1 4 2 2 6 8) sort]]]'.
	
	Transcript show: (BetterMessageTally tallyObjectCollection size) > 0.
	self assert: BetterMessageTally tallyObjectCollection size > 0
		equals: true
		description: 'After calling profileThis nothing is profiled.'
	