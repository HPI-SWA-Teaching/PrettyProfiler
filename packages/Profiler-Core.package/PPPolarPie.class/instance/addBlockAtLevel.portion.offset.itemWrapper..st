level handling
addBlockAtLevel: level portion: portion offset: offset itemWrapper: wrapper
	| vertices innerRadius outerRadius block |
	
	vertices := OrderedCollection new.
	innerRadius := self class startRadius + (self class radiusStepSize * level).
	outerRadius := innerRadius + self class radiusStepSize + (self class lineLength / 2).

	self class addArcTo: vertices radius: innerRadius portion: portion offset: offset.
	self class addArcTo: vertices radius: outerRadius portion: (portion negated) offset: (offset+portion).
	
	block := (PPPolarPiePiece vertices: vertices color: (wrapper preferredColor) borderWidth: 1.0 borderColor: (Color black)).
	block clickCommand: [tallyCollection profiler updateDetailArea: wrapper].
	block polarPie: self.
	self addMorph: block.
	block position: 5000@5000