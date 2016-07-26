as yet unclassified
testDisplayResults
	
	| item wrapper tallyResult |
	
	item := TallyObject new.
	item percentage: 100.
	item time: 10.
	item blockNesting: 0.
	item isPrimitive: false.
	item tallyClass: self class.
	item tallyMethod: self.
	
	wrapper := TallyObjectItemWrapper with: item.

	tallyResult := TallyCollection with: wrapper.
	tallyResult profiler: self profiler.
	self profiler updateResults: tallyResult.
