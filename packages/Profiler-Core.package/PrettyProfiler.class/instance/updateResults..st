as yet unclassified
updateResults: tallyResult

	| delta |
	resultList on: tallyResult list: #value selected: nil changeSelected: #showDetails: menu: nil keystroke: nil.
	
	(BetterMessageTally tallyObjectCollection size) timesRepeat: 
  		[resultList scroller submorphs
  			do: [:each |
     				(each canExpand and: [each isExpanded not])
       	 		ifTrue: [each toggleExpandedState]].
 			resultList adjustSubmorphPositions].
	resultPie on: tallyResult. 
	
	delta := (resultPieHolder extent - (tabHolder pages at: 2) extent)/2.
	
	resultPieScrollPane vScrollBar value: delta y.
	resultPieScrollPane hScrollBar value: delta x.
	resultPieScrollPane vScrollBarValue: delta y.
	resultPieScrollPane hScrollBarValue: delta x.