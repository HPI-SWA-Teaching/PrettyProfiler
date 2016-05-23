spying
showReport: node
	"hacky stuff is probably very hacky"
	
	(StringHolder new contents: 
		(String streamContents: [:s | node report: s ])).