as yet unclassified
initialize
	| tempBar optionBar hListSelector pieSelector tabControls tabbedView resultArea content |
	super initialize.

	runButton := (SimpleButtonMorph newWithLabel: '	    Start    ')
		vResizing: #spaceFill;
		color: Color white;
		actWhen: #buttonDown;
		target: self;
		actionSelector: #toggleMessageTally.

	blockInput := (TextMorph new)
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		contents: 'Block'.
	
	timeoutInput := (TextMorph new)
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		contents: 'Timeout'.

	tempBar := (Morph new)
		hResizing: #spaceFill;
		color: Color white;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellInset: 5;
		extent: 720@60;
		clipSubmorphs: true;
		addMorph: blockInput;
		addMorph: runButton.

	optionBar := (Morph new)
		hResizing: #spaceFill;
		color: Color white;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellInset: 5;
		extent: 720@20;
		clipSubmorphs: true;
		addMorph: timeoutInput.

	hListSelector := (SimpleButtonMorph newWithLabel: 'HList')
		actWhen: #buttonDown;
		extent:720@25;
		hResizing: #spaceFill.

	pieSelector := (SimpleButtonMorph newWithLabel: 'PolarPie')
		actWhen: #buttonDown;
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

	tabbedView := (Morph new)
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		addMorph: resultList;
		addMorph: tabControls.

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
		cellInset: 20;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		addMorph: resultArea;
		addMorph: optionBar;
		addMorph: tempBar.

	self extent: 1280@600;
		layoutPolicy: ProportionalLayout new;
		listDirection: #bottomToTop;
		clipSubmorphs: true;
		setLabel: 'PrettyProfiler';
		addMorph: content fullFrame: (LayoutFrame fractions: (0@0.05 corner: 1@1)).

	self isTallyRunning: false.