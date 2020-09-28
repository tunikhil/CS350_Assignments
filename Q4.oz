local IsDiagonal Diagonal Check M in
   fun {Check A I R}
      case A
      of nil then true
      []E|F then
	 if I==R then
	    {Check F I+1 R}
	 else
	    if E\=0 then false
	    else
	       {Check F I+1 R}
	    end
	 end
       end
   end
  
	 
   fun {Diagonal M R}
      case M
      of nil then true
      []A|B then
	 if {Check A 0 R}==true then
	    {Diagonal B R+1}
	 else
	    false
	 end
      end
   end
   fun {IsDiagonal M}
      case M
      of nil then true
      []W|X then
	 {Diagonal M 0}
      end
   end
   
   M= [[1 0 0 0] [0 0 1 0] [0 0 1 0] [0 0 0 1]]
   {Browse {IsDiagonal M}}

end

   