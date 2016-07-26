as yet unclassified
testInitialState

	self assert: self profiler isTallyRunning
		equals: false
		description: 'PrettyProfiler should be stoped after init.'.
