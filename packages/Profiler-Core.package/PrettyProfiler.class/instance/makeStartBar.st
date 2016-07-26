make
makeStartBar 
	runButton := self makeRunButton.
	blockInput := self makeBlockInput.
	^ (Morph new)
		hResizing: #spaceFill;
		color: Color white;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellInset: 5;
		extent: 720@60;
		clipSubmorphs: true;
		addMorph: runButton;
		addMorph: blockInput