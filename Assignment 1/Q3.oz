local Take Sin in
   fun {Sin X}
     local Term in
	 fun lazy {Term N Exp}
	    Exp|{Term N+1.0 (~1.0*Exp*X*X)/((2.0*N)*(2.0*N + 1.0))}
	 end

	 {Term 1.0 X}
      end
   end
   fun {Take Xs N}
      if N=<0 then nil
      else (Xs.1) | {Take Xs.2 N-1}
      end
   end	 
   
   {Browse {Take {Sin 0.1} 5}}
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

local Approximate Sin in
   fun lazy {Sin X}
     local Term in
	 fun lazy {Term N Exp}
	    Exp|{Term N+1.0 (~1.0*Exp*X*X)/((2.0*N)*(2.0*N + 1.0))}
	 end

	 {Term 1.0 X}
      end
   end
   fun {Approximate S X Epsilon}
      local App Xs={S X} in
	 fun {App Xs Prev}
	  if {Abs (Xs.1 - Prev)} < Epsilon then Xs.1
	    else
	      Xs.1 + {App Xs.2 Xs.1}
	    end
	 end
	 Xs.1 + {App Xs.2 Xs.1}
      end
   end
   
   {Browse {Approximate Sin 0.5 0.01}}
end

   
