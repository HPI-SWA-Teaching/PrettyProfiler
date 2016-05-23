as yet unclassified
initialize
	"alpha hacky stuff"
	| buttonbar resulttitle |
	super initialize.
	self isTallyRunning: false.
	self stspbutton: ((SimpleButtonMorph newWithLabel: PrettyProfiler startText)
		color: Color white;
		actWhen: #buttonDown;
		target: self;
		actionSelector:  #startMessageTally).

	buttonbar := (RectangleMorph new)
		color: Color gray;
		layoutPolicy: ProportionalLayout new;
		addMorph:  self stspbutton fullFrame: (LayoutFrame fractions:(0@0 corner:0.2@1)).
	
	self resultarea: (SimpleHierarchicalListMorph
			on: []
			list: #value
			selected: nil
			changeSelected: nil
			menu: nil
			keystroke: nil).

	resulttitle := (TextMorph new)
		color: Color white;
		contents: 'Results:'.
	self 
		extent: 1280@600;
		clipSubmorphs: true;
		layoutPolicy: ProportionalLayout new;
		setLabel: 'PrettyProfiler';
		addMorph: buttonbar fullFrame: (LayoutFrame fractions: (0@0 corner: 1@0.1));
		addMorph: resulttitle fullFrame: (LayoutFrame fractions: (0@0.1 corner: 1@0.15));
		addMorph: self resultarea fullFrame: (LayoutFrame fractions: (0@0.15 corner: 1@1)).
