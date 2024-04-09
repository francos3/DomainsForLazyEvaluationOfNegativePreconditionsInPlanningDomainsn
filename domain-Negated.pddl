(define (domain Drones_Negation)
	(:requirements :adl :typing)
	(:types coord - object drone - object)
	(:constants outC - coord s0 s1 s2 s3 - drone)

	(:predicates
		(at_drone ?r - drone ?x ?y ?z - coord)
		(launch_point ?x ?y ?z - coord)
		(plus_four ?c1 ?c2 - coord)
		(plus_one ?c1 ?c2 - coord)
		(plus_three ?c1 ?c2 - coord)
	)
(:action lift-off
	:parameters (?rmov - drone ?x2 ?y2 ?z2 - coord)
	:precondition (and
		(at_drone ?rmov outC outC outC)
		(not (= ?x2 outC))
		(not (= ?y2 outC))
		(not (= ?z2 outC))
		;;drone has to be outside for insert
		;;aperture exists
		(launch_point ?x2 ?y2 ?z2)
			(not (at_drone s0 ?x2 ?y2 ?z2))
			(not (at_drone s1 ?x2 ?y2 ?z2))
			(not (at_drone s2 ?x2 ?y2 ?z2))
			(not (at_drone s3 ?x2 ?y2 ?z2))
	)
	:effect (and
			(not (at_drone ?rmov outC outC outC))
			(at_drone ?rmov ?x2 ?y2 ?z2)
	)
)

	(:action fly_plusX
	:parameters (?rmov - drone ?x1 ?y1 ?z1 ?x2 ?y2 ?z2 - coord)
	:precondition (and
		(at_drone ?rmov ?x1 ?y1 ?z1)
			(not (at_drone s0 ?x2 ?y2 ?z2))
			(not (at_drone s1 ?x2 ?y2 ?z2))
			(not (at_drone s2 ?x2 ?y2 ?z2))
			(not (at_drone s3 ?x2 ?y2 ?z2))
		(= ?y2 ?y1)
		(= ?z2 ?z1)
		(plus_one ?x1 ?x2)
		)
	:effect (and
			(not (at_drone ?rmov ?x1 ?y1 ?z1))
			(at_drone ?rmov ?x2 ?y2 ?z2)
	)	
)

	(:action fly_minusX
	:parameters (?rmov - drone ?x1 ?y1 ?z1 ?x2 ?y2 ?z2 - coord)
	:precondition (and
		(at_drone ?rmov ?x1 ?y1 ?z1)
			(not (at_drone s0 ?x2 ?y2 ?z2))
			(not (at_drone s1 ?x2 ?y2 ?z2))
			(not (at_drone s2 ?x2 ?y2 ?z2))
			(not (at_drone s3 ?x2 ?y2 ?z2))
		(= ?y2 ?y1)
		(= ?z2 ?z1)
		(plus_one ?x2 ?x1)
		)
	:effect (and
			(not (at_drone ?rmov ?x1 ?y1 ?z1))
			(at_drone ?rmov ?x2 ?y2 ?z2)
	)	
)

	(:action fly_plusY
	:parameters (?rmov - drone ?x1 ?y1 ?z1 ?x2 ?y2 ?z2 - coord)
	:precondition (and
		(at_drone ?rmov ?x1 ?y1 ?z1)
			(not (at_drone s0 ?x2 ?y2 ?z2))
			(not (at_drone s1 ?x2 ?y2 ?z2))
			(not (at_drone s2 ?x2 ?y2 ?z2))
			(not (at_drone s3 ?x2 ?y2 ?z2))
		(= ?x2 ?x1)
		(= ?z2 ?z1)
		(plus_one ?y1 ?y2)
		)
	:effect (and
			(not (at_drone ?rmov ?x1 ?y1 ?z1))
			(at_drone ?rmov ?x2 ?y2 ?z2)
	)	
)

	(:action fly_minusY
	:parameters (?rmov - drone ?x1 ?y1 ?z1 ?x2 ?y2 ?z2 - coord)
	:precondition (and
		(at_drone ?rmov ?x1 ?y1 ?z1)
			(not (at_drone s0 ?x2 ?y2 ?z2))
			(not (at_drone s1 ?x2 ?y2 ?z2))
			(not (at_drone s2 ?x2 ?y2 ?z2))
			(not (at_drone s3 ?x2 ?y2 ?z2))
		(= ?x2 ?x1)
		(= ?z2 ?z1)
		(plus_one ?y2 ?y1)
		)
	:effect (and
			(not (at_drone ?rmov ?x1 ?y1 ?z1))
			(at_drone ?rmov ?x2 ?y2 ?z2)
	)	
)

	(:action fly_plusZ
	:parameters (?rmov - drone ?x1 ?y1 ?z1 ?x2 ?y2 ?z2 - coord)
	:precondition (and
		(at_drone ?rmov ?x1 ?y1 ?z1)
			(not (at_drone s0 ?x2 ?y2 ?z2))
			(not (at_drone s1 ?x2 ?y2 ?z2))
			(not (at_drone s2 ?x2 ?y2 ?z2))
			(not (at_drone s3 ?x2 ?y2 ?z2))
		(= ?x2 ?x1)
		(= ?y2 ?y1)
		(plus_one ?z1 ?z2)
		)
	:effect (and
			(not (at_drone ?rmov ?x1 ?y1 ?z1))
			(at_drone ?rmov ?x2 ?y2 ?z2)
	)	
)

	(:action fly_minusZ
	:parameters (?rmov - drone ?x1 ?y1 ?z1 ?x2 ?y2 ?z2 - coord)
	:precondition (and
		(at_drone ?rmov ?x1 ?y1 ?z1)
			(not (at_drone s0 ?x2 ?y2 ?z2))
			(not (at_drone s1 ?x2 ?y2 ?z2))
			(not (at_drone s2 ?x2 ?y2 ?z2))
			(not (at_drone s3 ?x2 ?y2 ?z2))
		(= ?x2 ?x1)
		(= ?y2 ?y1)
		(plus_one ?z2 ?z1)
		)
	:effect (and
			(not (at_drone ?rmov ?x1 ?y1 ?z1))
			(at_drone ?rmov ?x2 ?y2 ?z2)
	)	
)

)
