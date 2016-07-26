event handling
mouseEnter: evt
	
	(self polarPie selectedPiece = self)
		ifFalse: [self color: self color twiceLighter]