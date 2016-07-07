as yet unclassified
mouseDown: evt
	self clickCommand ifNotNil: [self clickCommand value].