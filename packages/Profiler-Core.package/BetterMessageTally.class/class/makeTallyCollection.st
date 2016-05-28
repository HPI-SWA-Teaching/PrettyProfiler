spying
makeTallyCollection
	| wrapperCol |
		
	wrapperCol := OrderedCollection new.
	
	self markBottlenecks.
	
	TallyObjectCollection do: [:t | (t tallyParent) ifNil: [wrapperCol add: (TallyObjectItemWrapper with: t)]].
	
	^ wrapperCol