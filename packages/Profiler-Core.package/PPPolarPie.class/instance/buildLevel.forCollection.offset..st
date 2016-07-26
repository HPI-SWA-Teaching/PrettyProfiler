level handling
buildLevel: level forCollection: tallyChildren offset: paramOffset
	| offset firstChild |
	
	offset := paramOffset.
	
	((tallyChildren isNil) or: [tallyChildren isEmpty]) ifTrue:  [^ self].
	firstChild := tallyChildren first.

	((tallyChildren size = 1) and: [firstChild contents isEmpty not]) ifTrue: [
		| portion |
		portion := (firstChild item percentage) / 100.
		self buildLevel: level forCollection: (firstChild contents) offset: offset.
		^ self].

	tallyChildren do: [ :wrapper |
		| portion |
		portion := (wrapper item percentage) / 100.
		self addBlockAtLevel: level portion: portion offset: offset itemWrapper: wrapper.
		self buildLevel: (level+1) forCollection: (wrapper contents) offset: offset.
		offset := offset + portion.
	].

	self bounds: owner bounds.
	self color: (Color veryVeryLightGray)