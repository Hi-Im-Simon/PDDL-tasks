(define
	(domain merry)
	(:requirements :adl)
	(:types pokoj kolor kulka_id pole numer)
	(:predicates
		(przejscie
		    ?z - pokoj
		    ?do - pokoj
		    ?k - kolor
	    )
		(kulka
		    ?id - kulka_id
		    ?k - kolor
		    ?p - pokoj
	    )
	    (jest_w ?p - pokoj)
	    (klocki_w ?p - pokoj)
	    (ma_kulke ?id - kulka_id ?k - kolor)
	    (numer_na_polu ?nr - numer ?p - pole)
	    (sasiad ?p1 - pole ?p2 - pole)
	    (pole_puste ?p - pole)
	)
	
	(:action wez
		:parameters (?k - kolor ?id - kulka_id ?p - pokoj)
		:precondition
		(and
		    (jest_w ?p)
		    (kulka ?id ?k ?p)
		)
		:effect
		(and
			(not (kulka ?id ?k ?p))
			(ma_kulke ?id ?k)
		)
	)
	
	(:action idz
		:parameters (?p1 - pokoj ?p0 - pokoj ?k - kolor ?id - kulka_id)
		:precondition
		(and
		    (jest_w ?p0)
		    (przejscie ?p0 ?p1 ?k)
		    (ma_kulke ?id ?k)
		)
		:effect
		(and
		    (not (jest_w ?p0))
		    (jest_w ?p1)
			(not (ma_kulke ?id ?k))
		)
	)
	
	(:action przesun
		:parameters (?n - numer ?p - pokoj ?z - pole ?do - pole)
		:precondition
		(and
		    (sasiad ?z ?do)
		    (jest_w ?p)
		    (klocki_w ?p)
		    (numer_na_polu ?n ?z)
		    (pole_puste ?do)
		)
		:effect
		(and
		    (not (pole_puste ?do))
		    (pole_puste ?z)
		    (not (numer_na_polu ?n ?z))
		    (numer_na_polu ?n ?do)
		)
	)
)