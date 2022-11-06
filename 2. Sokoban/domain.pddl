(define
	(domain p)
	(:requirements :adl)
	(:predicates
		(robot ?f)
		(poziomo ?f0 ?f1)
		(pionowo ?f0 ?f1)
		(paczka ?f)
		(cel ?f)
	)
	; przesuń paczkę na podłogę
	(:action idz
		:parameters (
		    ?f0 ?f1
		)
		:precondition
		(and
		    (robot ?f0)
		    (or
		        (poziomo ?f0 ?f1)
		        (pionowo ?f0 ?f1)
		    )
		    (not (paczka ?f1))
		)
		:effect
		(and
		    (not (robot ?f0))
		    (robot ?f1)
		)
	)
	
	(:action pchaj
		:parameters (
		    ?f0 ?f1 ?f2
		)
		:precondition
		(and
		    (robot ?f0)
		    (or
		        (and
		            (poziomo ?f0 ?f1)
		            (poziomo ?f1 ?f2)
		        )
		        (and
		            (pionowo ?f0 ?f1)
		            (pionowo ?f1 ?f2)
		        )
		    )
		    (paczka ?f1)
		    (not (paczka ?f2))
		    (not (robot ?f2))
		)
		:effect
		(and
		    (not (paczka ?f1))
			(paczka ?f2)
			(not (robot ?f0))
		    (robot ?f1)
		)
	)
)