accessing
tallyParent: aTallyObject
"Sets aTallyObject as parent of this tallyObject, adds this to the children collection of aTallyObject and counts totalParents one up"

	tallyParent := aTallyObject.
	
	aTallyObject ifNotNil: [aTallyObject tallyChildren add: self.
		self totalParents: (aTallyObject totalParents) + 1.]
	
	