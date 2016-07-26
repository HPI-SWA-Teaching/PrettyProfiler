level handling
on: newTallyCollection

	tallyCollection := newTallyCollection.
	self submorphs do: [:m | m delete].
	self buildLevel: 0 forCollection: tallyCollection offset: 0