(define
	(domain world-of-blocks)
	(:requirements :adl)
	(:predicates
		(on-top ?x ?y)
		(on-floor ?x)
		(clear ?x)
		(holding ?x)
	)
	; przesuń paczkę na podłogę
	(:action opusc-na-podloge
		:parameters (?x)
		:precondition
		(and
		    (holding ?x)
		)
		:effect
		(and
			(not (holding ?x))
			(on-floor ?x)
		)
	)
	; przesuń paczkę na inną paczkę
	(:action opusc-na-paczke
		:parameters (?y ?x)
		:precondition
		(and
			(holding ?x)
			(clear ?y)
		)
		:effect
		(and
			(on-top ?x ?y)
			(not (clear ?y))
			(not (on-floor ?x))
		)
	)
	
	(:action podnies-z-podlogi
	    :parameters (?x)
	    :precondition
	    (and
	        (on-floor ?x)
	        (clear ?x)
	        (forall (?xs) (not (holding ?xs)))
	    )
	    :effect
	    (and
	        (not (on-floor ?x))
	        (holding ?x)
	    )
	)
	
	(:action podnies-z-paczki
	    :parameters (?x ?y)
	    :precondition
	    (and
	        (clear ?x)
	        (forall (?xs) (not (holding ?xs)))
	        (on-top ?x ?y)
	    )
	    :effect
	    (and
	        (not (on-top ?x ?y))
	        (holding ?x)
	        (clear ?y)
	    )
	)
)