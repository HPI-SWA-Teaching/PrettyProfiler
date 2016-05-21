printing
calculateTallyObjectForTotal: total totalTime: totalTime
"Answers a new TallyObject based on the given data"

| percentage |

	percentage := tally asFloat / total * 100.0.
	
	^ (TallyObject new
		percentage: percentage;
		time: ((percentage * totalTime / 100) rounded);
		blockNesting: blockNesting;
		tallyParentClass: method methodClass;
		tallyClass: class;
		tallyMethod: method selector;
		primitive: (receivers = nil)).