as yet unclassified
addBlockAtLevel: level portion: portion offset: offset itemWrapper: item
	
	| vertices innerRadius outerRadius block |
	
	vertices := OrderedCollection new.
	innerRadius := self class startRadius + (self class radiusStepSize * level).
	outerRadius := innerRadius + self class radiusStepSize.

	self class addArcTo: vertices radius: innerRadius portion: portion offset: offset.
	self class addArcTo: vertices radius: outerRadius portion: (portion negated) offset: (offset+portion).
	
	block := (PPPolygonMorph vertices: vertices color: (item preferredColor) borderWidth: 1.0 borderColor: (Color transparent)).
	block clickCommand: [tallyCollection profiler updateDetailArea: item].
	self addMorph: block.
	block position: 400@400.