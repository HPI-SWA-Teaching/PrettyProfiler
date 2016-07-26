initialization
initialize
	| tempBar optionBar hListSelector pieSelector tabControls tabbedView content |
	super initialize.
	
	tempBar := self makeStartBar.
	optionBar := self makeOptionBar.

	hListSelector := (SimpleButtonMorph newWithLabel: 'Hierarchical List')
		color: Color white;
		actWhen: #buttonDown;
		target: [tabHolder goToPage: 1];
		actionSelector: #value;
		extent:720@25;
		hResizing: #spaceFill.

	pieSelector := (SimpleButtonMorph newWithLabel: 'Polar Pie Chart')
		color: Color white;
		actWhen: #buttonDown;
		target: [tabHolder goToPage: 2];
		actionSelector: #value;
		extent:720@25;
		hResizing: #spaceFill.

	tabControls := (Morph new)
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		extent:720@25;
		addMorph: pieSelector;
		addMorph: hListSelector.

	resultList := (SimpleHierarchicalListMorph
		on: nil
		list: nil
		selected: nil
		changeSelected: nil
		menu: nil
		keystroke: nil)
		hResizing: #spaceFill;
		vResizing: #spaceFill.
		
	resultPie := (PPPolarPie new).
	
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
	
	resultPieHolder := (PasteUpMorph new) 
		extent: 10000@10000.
	
	resultPieScrollPane := ScrollPane new.
	resultPieScrollPane	scroller addMorph: resultPieHolder.
	resultPieHolder addMorph: resultPie.
	
	(tabHolder pages at: 2)
		layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@1));
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutPolicy: ProportionalLayout new;
		addMorph: resultPieScrollPane fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1)).

	tabbedView := (Morph new)
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		addMorph: tabHolder;
		addMorph: tabControls
	.
	
	detailArea :=  (PluggableListMorph
		on: nil
		list: nil
		selected: nil
		changeSelected: nil
		menu: nil).

	resultArea := (Morph new)
		layoutPolicy: ProportionalLayout new;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		addMorph: detailArea fullFrame: (LayoutFrame fractions: (0.75@0 corner: 1@1));
		addMorph: tabbedView fullFrame: (LayoutFrame fractions: (0@0 corner: 0.75@1)).
	
	content := (Morph new)
		clipSubmorphs: true;
		color: (Color lightGray);
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellInset: 5;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		addMorph: resultArea;
		addMorph: optionBar;
		addMorph: tempBar.

	self
		extent: 900@600;
		layoutPolicy: ProportionalLayout new;
		clipSubmorphs: true;
		setLabel: 'PrettyProfiler';
		addMorph: content fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1)).
		
	


