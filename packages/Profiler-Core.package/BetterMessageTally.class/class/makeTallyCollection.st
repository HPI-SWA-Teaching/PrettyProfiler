spying
makeTallyCollection
	| wrapperCol |
		
	wrapperCol := OrderedCollection new.
	
	TallyObjectCollection do: [:t | (t tallyParent) ifNil: [wrapperCol add: (TallyObjectItemWrapper with: t)]].
	
	^ wrapperCol