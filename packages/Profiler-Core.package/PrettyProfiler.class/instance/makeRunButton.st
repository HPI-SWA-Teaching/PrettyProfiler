make
makeRunButton

	^ (PluggableButtonMorph on: self getState: nil action: #toggleProfiling label: #runButtonLabel)
		vResizing: #spaceFill