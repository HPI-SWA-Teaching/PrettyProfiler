layout
makeTabbedView: tabControls
	tabHolder := (BookMorph new)
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		hidePageControls;
		insertPageSilentlyAtEnd;
		layoutPolicy: ProportionalLayout new.
	tabHolder setProperty: #transitionSpec toValue: (Array with: 'silence' with: #none with: #none).
		
	(tabHolder pages first)
		layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@1));
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutPolicy: ProportionalLayout new;
		addMorph: resultList fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1)).
	
	(tabHolder pages at: 2)
		layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@1));
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutPolicy: ProportionalLayout new;
		addMorph: resultPieScrollPane fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1)).

	^ (Morph new)
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		addMorph: tabHolder;
		addMorph: tabControls