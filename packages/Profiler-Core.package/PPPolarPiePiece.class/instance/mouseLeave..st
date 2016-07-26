event handling
mouseLeave: evt
	
	(self polarPie selectedPiece = self)
		ifFalse: [self color: self color twiceDarker]