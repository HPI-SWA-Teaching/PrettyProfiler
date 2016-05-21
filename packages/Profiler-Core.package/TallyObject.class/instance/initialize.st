initialization
initialize

	super initialize.
	
	self tallyChildren: OrderedCollection new.
	self tallyParent: nil.