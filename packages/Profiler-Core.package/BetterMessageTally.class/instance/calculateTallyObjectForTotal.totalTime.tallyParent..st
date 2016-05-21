printing
calculateTallyObjectForTotal: total totalTime: totalTime tallyParent: tallyParent
"Answers a new TallyObject based on the given data"

| percentage newTallyObject|

	percentage := tally asFloat / total * 100.0.
	
	newTallyObject := (TallyObject new
							percentage: percentage;
							time: ((percentage * totalTime / 100) rounded);
							blockNesting: blockNesting;
							tallyParentClass: method methodClass;
							tallyClass: class;
							tallyMethod: method selector;
							primitive: (receivers = nil);
							tallyParent: tallyParent).
	
	tallyParent tallyChildren add: newTallyObject.
	
	^ newTallyObject.