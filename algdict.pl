test( 
[
%%**
	[[[n,function1],2,1],[[v,a],[v,b],[v,c]],":-", %% Modes=2 inputs, 1 output
	[
		[[n,+],[[v,a],[v,b],[v,c]]]
	]
	],
%%*** 2,1 in above is removed in code
	
	     [[[n,function2],2,1],[[v,a],[v,b],[v,c]],":-",
        [
                [[n,+],[[v,a],[v,b],[v,d]]],
                [[n,+],[[v,d],1,[v,c]]]
        ]
        ],
        
        [[[n,function3],2,1],[[v,a],[v,b],[v,c]],":-",
        [
                [[n,function4],[[v,d],[v,f]]],
                [[n,+],[[v,a],[v,b],[v,e]]],
                [[n,+],[[v,e],[v,f],[v,g]]],
                [[n,+],[[v,g],[v,d],[v,c]]]
        ]
        ],
        
        [[[n,function4],0,2],[[v,a],[v,f]],":-",
        [
                [[n,is],[[v,a],2]],
                [[n,is],[[v,f],1]]
        ]
        ],
%%***

		  [[[n,grammar1],1,0],[[v,s]],":-",
		  [
		  			 [[n,noun],[[v,s],""]] 
		  ]
		  ],
		  
		  [[[n,noun],2,0],"->",["apple"]],

%%**
		  [[[n,grammar2],1,0],[[v,s]],":-",
		  [
		  			 [[n,noun1],[[v,s],""]] 
		  ]
		  ],
		  
		  [[[n,noun1],2,0],"->",[""]],
		  [[[n,noun1],2,0],"->",["a",[[n,noun1]]]]
		  %%**/
]).
