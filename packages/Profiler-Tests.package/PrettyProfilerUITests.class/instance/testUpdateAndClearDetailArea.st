as yet unclassified
testUpdateAndClearDetailArea
	| tallyObject tallyObjectItemWrapper |
	
	tallyObject := TallyObject new
		percentage: 20;
		time: 10;
		blockNesting: 1;
		tallyClass: 'abc';
		tallyMethod: 'abc';
		isPrimitive: true.
		
	tallyObjectItemWrapper := TallyObjectItemWrapper with: tallyObject.
	
	self profiler updateDetailArea: tallyObjectItemWrapper.
	self
		assert: (self profiler detailArea getList second)
		equals: 'Percentage: 20.00%'
		description: 'The content of the detail area does not fit the given ItemWrapper.'.
	
	self profiler clearDetailArea.
	self
		assert: (self profiler detailArea getList)
		equals: #()
		description: 'The detail area is cleared but still has content.'