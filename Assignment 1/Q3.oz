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

local Approximate in
   fun lazy {Approximate S Epsilon}
      local App in
	 fun {App Xs Ep Prev}
	  if {Abs (Xs.1 - Prev)} < Epsilon then Xs.1 | nil
	    else
	      Xs.1 | {App Xs.2 Xs.1}
	    end
	 end
	 S.1 | {App S.2 Ep S.1}
      end
   end
   
   {Browse {Approximate {Sin 0.5} 0.01}}
end

   