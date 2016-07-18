as yet unclassified
makeRunButton
	^ (SimpleButtonMorph newWithLabel: 'Start Profiling')
		vResizing: #spaceFill;
		color: Color white;
		actWhen: #buttonDown;
		target: self;
		actionSelector: #toggleProfiling;
		name: 'runButton'.