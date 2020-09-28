local Take A in
   fun {Take Xs N}
      if N=<0 then nil
      else
	 case Xs
	 of nil then nil
	 []B|C then B|{Take C N-1}
	 end
      end
   end
   A=[1 2 3 4]

   %{Browse {Take A 0}}
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
   %{Browse {Last A 5}}
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

local Merge A B in
   fun {Merge Xs Ys}
      case Xs
      of nil then Ys
      []A|N1 then
	 case Ys
	 of nil then Xs
	 []B|N2 then
	    if A>B then B|{Merge Xs N2}
	    else
	       A|{Merge N1 Ys}
	    end
	 end
      end
   end
   A = [1 2 5 6]
   B = [3 4 7 8]
   %{Browse {Merge A B}}
end
