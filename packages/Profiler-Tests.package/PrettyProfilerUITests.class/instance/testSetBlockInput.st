as yet unclassified
testSetBlockInput
	
	self profiler setBlockInputContentTo: '[1+1]'.
	
	self assert: self profiler block value
		equals: 2
		description: 'The block in blockInput does not equal the block set with setBlockInputContentTo.'
