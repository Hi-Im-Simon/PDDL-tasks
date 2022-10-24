(define (problem p1)
	(:domain world-of-blocks)
	(:objects 
	    k1 k2 k3 k4 k5 - ring
	    x y z - rod
	)
	(:init
	    (on k1 x)
	    (on k2 x)
	    (on k3 x)
	    (on k4 x)
	    (on k5 x)
	    (greater k2 k1)
	    (greater k3 k1)
	    (greater k4 k1)
	    (greater k5 k1)
	    (greater k3 k2)
	    (greater k4 k2)
	    (greater k5 k2)
	    (greater k4 k3)
	    (greater k5 k3)
	    (greater k5 k4)
	)
	(:goal
		(and
			(on k1 z)
    	    (on k2 z)
    	    (on k3 z)
    	    (on k4 z)
    	    (on k5 z)
		)
	)
)