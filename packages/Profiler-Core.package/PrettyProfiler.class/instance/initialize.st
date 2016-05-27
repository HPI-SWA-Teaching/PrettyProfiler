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
		actionSelector: #startMessageTally).

	buttonbar := (RectangleMorph new)
		color: Color gray;
		layoutPolicy: ProportionalLayout new;
		addMorph: self stspbutton fullFrame: (LayoutFrame fractions:(0@0 corner:0.2@1)).
	
	self resultArea: (SimpleHierarchicalListMorph
		on: nil
		list: nil
		selected: nil
		changeSelected: nil
		menu: nil
		keystroke: nil).
	
	self detailArea: (RectangleMorph new
		color: Color white;
		clipSubmorphs: true;
		addMorph: ((StringMorph new)
		color: Color black;
		contents: 'EMPTY')).

	resulttitle := (StringMorph new)
		color: Color white;
		contents: 'Results:'.
	self 
		extent: 1280@600;
		clipSubmorphs: true;
		layoutPolicy: ProportionalLayout new;
		setLabel: 'PrettyProfiler';
		addMorph: buttonbar fullFrame: (LayoutFrame fractions: (0@0 corner: 1@0.1));
		addMorph: resulttitle fullFrame: (LayoutFrame fractions: (0@0.1 corner: 1@0.15));
		addMorph: self resultArea fullFrame: (LayoutFrame fractions: (0@0.15 corner: 0.8@1));
		addMorph: self detailArea fullFrame: (LayoutFrame fractions: (0.8@0.15 corner: 1@1)).

