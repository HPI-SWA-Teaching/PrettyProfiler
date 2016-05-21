spying
showReport: node
	"Open a string holder with the reports from the given node"
	
	| wrapperCol |
	
	(StringHolder new contents: 
		(String streamContents: [:s | node report: s ])).
		"openLabel: 'Spy Results'." "Don't show the standard messageTally window."
	
	wrapperCol := OrderedCollection new.
	TallyObjectCollection do: [:t | (t tallyParent) ifNil: [wrapperCol add: (TallyObjectItemWrapper with: t)]].
	
	(SimpleHierarchicalListMorph
			on: [ wrapperCol ]
			list: #value
			selected: nil
			changeSelected: nil
			menu: nil
			keystroke: nil)
	openInWindow.