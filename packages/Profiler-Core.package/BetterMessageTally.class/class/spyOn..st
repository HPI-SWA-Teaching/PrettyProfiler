spying
spyOn: aBlock
	
	TallyObjectCollection removeAll.
	
	^ self spyOn: aBlock reportOtherProcesses: ShowProcesses