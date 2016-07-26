layout
makeSplitView: tabbedView

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
		addMorph: tabbedView fullFrame: (LayoutFrame fractions: (0@0 corner: 0.75@1))