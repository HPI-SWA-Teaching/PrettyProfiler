initialize
initialize 
	"setup me"
	super initialize.
	self	
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	self on: nil
		text: nil
		accept: nil
		readSelection: nil
		menu: nil