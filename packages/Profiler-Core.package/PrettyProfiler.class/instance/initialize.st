initialization
initialize
	| tabbedView content |
	
	super initialize.

	self addContextMenu.

	self makeResultContainers.
	tabbedView := self makeTabbedView: (self makeTabControls).
	self makeSplitView: tabbedView.
	
	content := (Morph new)
		clipSubmorphs: true;
		color: (Color lightGray);
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellInset: 5;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		addMorph: resultArea;
		addMorph: (self makeOptionBar);
		addMorph: (self makeStartBar).

	self extent: 900@600;
		layoutPolicy: ProportionalLayout new;
		clipSubmorphs: true;
		setLabel: 'PrettyProfiler';
		addMorph: content fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1))
