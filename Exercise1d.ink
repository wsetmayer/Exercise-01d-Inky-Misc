/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach. 

It is {advance_time()}

{ time == 0:  It is the perfect time to go fishing.}
* { time == 0 } [Go fishing] -> fishing

 

+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

It is {advance_time()}

{ time == 0:  It is the perfect time to go fishing.}
* { time == 0 } [Go fishing] -> fishing

* { time == 1 } [Pick up some seashells] -> shells

+ [Move back up the beach] -> seashore

== shells ==
You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time

== fishing ==
    
You go fishing. You caught 5 fish congrats!

+ [Move to the start of the beach] -> seashore
+ [Move to the second beach] -> beach2
+ [Swim down seaside] -> downtheocean

== downtheocean ==

You swam down the ocean, you see a circle of sharks and swam back to the orignal beach. This took a lot of time.

~ time = time + 1

-> seashore

    
    
