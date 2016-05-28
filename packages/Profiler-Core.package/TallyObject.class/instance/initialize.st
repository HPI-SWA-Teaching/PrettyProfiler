initialization
initialize

	super initialize.
	
	self tallyChildren: OrderedCollection new;
		tallyParent: nil;
		totalParents: 0;
		isBottleneck: false.