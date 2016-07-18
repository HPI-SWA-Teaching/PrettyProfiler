as yet unclassified
makeBlockInput
	|input| 
	input := PPTextInput new;
		on: self
		text: blockInputText 
		accept: nil.
	input balloonText: 'Enter block to profile here, profile World otherwise...'.
	^ input