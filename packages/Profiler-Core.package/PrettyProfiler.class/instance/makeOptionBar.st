as yet unclassified
makeOptionBar 
	| timeOutInputLabel |
	timeoutInput := (TextMorph new)
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		contents: '0';
		name: 'timeoutInput'.
	
	timeOutInputLabel := (StringMorph new)
		hResizing: #shrinkWrap;
		vResizing: #spaceFill;
		contents: 'Timeout (s):'.
		
	^ (Morph new)
		hResizing: #spaceFill;
		color: Color white;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellInset: 5;
		extent: 720@20;
		clipSubmorphs: true;
		addMorph: timeoutInput;
		addMorph: timeOutInputLabel.