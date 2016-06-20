as yet unclassified
buildLevel: level forCollection: tallyChildren offset: paramOffset

	| offset |
	offset := paramOffset.

	tallyChildren do: [ :wrapper |
		| portion |
		portion := (wrapper item percentage) / 100.
		self addBlockAtLevel: level portion: portion offset: offset itemWrapper: wrapper.
		self buildLevel: (level+1) forCollection: (wrapper contents) offset: offset.
		offset := offset + portion.
	]