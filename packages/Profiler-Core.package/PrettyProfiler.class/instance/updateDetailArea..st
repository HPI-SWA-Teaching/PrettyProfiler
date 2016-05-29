as yet unclassified
updateDetailArea: aPluggableListMorph

	self detailArea delete.
	self detailArea: aPluggableListMorph.
	self addMorph: self detailArea
		fullFrame: (LayoutFrame fractions: (0.8@0.15 corner: 1@1)).