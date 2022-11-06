(define (problem p1)
	(:domain merry)
	(:objects 
	    A B C D E F G H I - pokoj
	    n1 n2 n3 n4 n5
	    p1 p2
	    c1 c2
	    z1 z2 z3 z4
	    r1 - kulka_id
	    ni po cz zo ro - kolor
	    pol1 pol2 pol3
	    pol4 pol5 pol6
	    pol7 pol8 pol9 - pole
	    jeden dwa trzy cztery piec szesc siedem osiem - numer
	)
	(:init
	    (przejscie A B po)
	    (przejscie A C cz)
	    (przejscie C A cz)
	    (przejscie B D po)
	    (przejscie C E zo)
	    (przejscie E C zo)
	    (przejscie D F zo)
	    (przejscie F D zo)
	    (przejscie E F ni)
	    (przejscie F E ni)
	    (przejscie E H cz)
	    (przejscie H E cz)
	    (przejscie F I ni)
	    (przejscie I F ni)
	    (przejscie H I ni)
	    (przejscie I H ni)
	    (przejscie F G ro)
	    
	    (kulka n1 ni C)
	    (kulka n2 ni E)
	    (kulka n3 ni F)
	    (kulka n4 ni F)
	    (kulka n5 ni I)
	    (kulka p1 po C)
	    (kulka p2 po I)
	    (kulka c1 cz D)
	    (kulka c2 cz H)
	    (kulka z1 zo A)
	    (kulka z2 zo D)
	    (kulka z3 zo E)
	    (kulka z4 zo H)
	    (kulka r1 ro B)
	    
	    (jest_w F)
	    
	    (numer_na_polu piec pol1)
	    (numer_na_polu cztery pol2)
	    (numer_na_polu jeden pol3)
	    (numer_na_polu osiem pol4)
	    (numer_na_polu trzy pol6)
	    (numer_na_polu siedem pol7)
	    (numer_na_polu dwa pol8)
	    (numer_na_polu szesc pol9)
	    
	    (klocki_w A)
	    
	    (sasiad pol1 pol2)
	    (sasiad pol1 pol4)
	    (sasiad pol2 pol1)
	    (sasiad pol2 pol3)
	    (sasiad pol2 pol5)
	    (sasiad pol3 pol2)
	    (sasiad pol3 pol6)
	    (sasiad pol4 pol1)
	    (sasiad pol4 pol5)
	    (sasiad pol4 pol7)
	    (sasiad pol5 pol2)
	    (sasiad pol5 pol4)
	    (sasiad pol5 pol6)
	    (sasiad pol5 pol8)
	    (sasiad pol6 pol3)
	    (sasiad pol6 pol5)
	    (sasiad pol6 pol9)
	    (sasiad pol7 pol4)
	    (sasiad pol7 pol8)
	    (sasiad pol8 pol5)
	    (sasiad pol8 pol7)
	    (sasiad pol8 pol9)
	    (sasiad pol9 pol6)
	    (sasiad pol9 pol8)
	    
	    (pole_puste pol5)
	    
	)
	(:goal
		(and
		    (numer_na_polu jeden pol1)
    	    (numer_na_polu dwa pol2)
    	    (numer_na_polu trzy pol3)
    	    (numer_na_polu cztery pol4)
    	    (numer_na_polu piec pol5)
    	    (numer_na_polu szesc pol6)
    	    (numer_na_polu siedem pol7)
    	    (numer_na_polu osiem pol8)
			(jest_w G)
		)
	)
)