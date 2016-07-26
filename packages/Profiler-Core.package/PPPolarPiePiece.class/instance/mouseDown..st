event handling
mouseDown: evt
	self clickCommand ifNotNil: [self clickCommand value].