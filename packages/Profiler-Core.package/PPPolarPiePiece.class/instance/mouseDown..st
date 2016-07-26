event handling
mouseDown: evt
	| selectedPieceInChart |
	
	selectedPieceInChart := self polarPie selectedPiece.
	(selectedPieceInChart notNil and: selectedPieceInChart ~= self)
		ifTrue: [selectedPieceInChart color: selectedPieceInChart color twiceDarker].

	self polarPie selectedPiece: self.
	self clickCommand ifNotNil: [self clickCommand value]