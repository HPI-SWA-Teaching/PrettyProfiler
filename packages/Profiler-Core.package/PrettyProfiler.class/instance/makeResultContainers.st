as yet unclassified
makeResultContainers
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
	resultPieHolder := (PasteUpMorph new) 
		extent: 10000@10000.
	resultPieScrollPane := ScrollPane new.
	resultPieScrollPane	scroller addMorph: resultPieHolder.
	resultPieHolder addMorph: resultPie.