(define
	(domain world-of-blocks)
	(:requirements :adl)
	(:types ring rod)
	(:predicates
		(greater ?k0 ?k1 - ring)
		(on ?k - ring ?x - rod)
	)
	; przesuń paczkę na podłogę
	(:action przesun-na-pusty
		:parameters (
		    ?x ?y - rod
		    ?k - ring
		)
		:precondition
		(and
		    (on ?k ?x)
		    
		    (not (exists (?ks - ring) (and
		    	(greater ?k ?ks)
		    	(on ?ks ?x)
		    )))
		    
		    (forall (?ks - ring) (not (on ?ks ?y)))
		)
		:effect
		(and
		    (not (on ?k ?x))
			(on ?k ?y)
		)
	)
	
	(:action przesun
		:parameters (
		    ?x ?y - rod
		    ?k1 ?k2 - ring
		)
		:precondition
		(and
		    (on ?k1 ?x)
		    (on ?k2 ?y)
		    (greater ?k2 ?k1)
		
		    (not (exists (?ks - ring) (and
		    	(greater ?k1 ?ks)
		    	(on ?ks ?x)
		    )))
		    
		    (not (exists (?ks - ring) (and
		        (greater ?k2 ?ks)
		    	(on ?ks ?y)
		    )))
		)
		:effect
		(and
		    (not (on ?k1 ?x))
			(on ?k1 ?y)
		)
	)
)