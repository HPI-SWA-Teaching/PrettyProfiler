geometry
addArcTo: vertices radius: radius portion: portion offset: offset

	| step steps |

	step := 0.
	steps := (self verticesPerAngle: ((portion * Float pi * 2.0) abs) withRadius: radius) + 1.

	steps timesRepeat: [ 
		| angle |
		angle := ((step / (steps-1)) * portion + offset) * Float pi * 2.0.
		step := step + 1.
		vertices add: ((angle sin) @ (angle cos)) * radius. ].