(define (problem problem_Bookmarked_Drones_GS4_D4_G4_S1) (:domain Drones_Bookmarked)
  (:objects 
	c0 c1 c2 c3  - coord
)
  (:init
	(plus_one c0 c1) (plus_one c1 c2) (plus_one c2 c3) 
(plus_three c0 c3) 


		(launch_point c0 c0 c0)	(at_drone s0 outC outC outC)
	(at_drone s1 outC outC outC)
	(at_drone s2 outC outC outC)
	(at_drone s3 outC outC outC)
)
(:goal (and
	(at_drone s0 c1 c0 c2)
	(at_drone s1 c0 c3 c3)
	(at_drone s2 c3 c3 c1)
	(at_drone s3 c0 c3 c0)
))
)
