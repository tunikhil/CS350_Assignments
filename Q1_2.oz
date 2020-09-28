local Last Len Rem A in
   fun {Len Xs L}
      case Xs
      of nil then L
      []_|Nxt then
	 {Len Nxt L+1}
      end
   end
   fun {Rem Xs N}
      if N=<0 then Xs
      else
	 case Xs
	 of nil then nil
	 []_|Nxt then {Rem Nxt N-1}
	 end
      end
   end
   fun {Last Xs N}
      if N=<0 then nil
      else
	 {Rem Xs ({Len Xs 0}-N) }
      end
   end
   A = [1 2 3 4 5]
   {Browse {Last A 5}}
end

	       
      