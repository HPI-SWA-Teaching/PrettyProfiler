as yet unclassified
testStartStop

	self assert: self profiler class isTallyRunning
		equals: false
		description: 'PrettyProfiler should be stoped after init.'.
	
	self profiler toggleProfiling.
	
	self assert: self profiler class isTallyRunning
		equals: true
		description: 'PrettyProfiler should be running after calling toggleProfiling once.'.
	
	self profiler toggleProfiling.
	
	self assert: self profiler class isTallyRunning
		equals: false
		description: 'PrettyProfiler should be stopped after calling toggleProfiling twice.'.