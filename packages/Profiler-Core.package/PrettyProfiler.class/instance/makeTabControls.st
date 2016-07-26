as yet unclassified
makeTabControls
	| hListSelector pieSelector |
	
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

	^ (Morph new)
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		extent:720@25;
		addMorph: pieSelector;
		addMorph: hListSelector