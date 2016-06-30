as yet unclassified
testStartButtonInitialization

	self
		assert: self profiler runButton label
		equals: 'Start Profiling'
		description: 'The label of the run button is initialized wrong.'		