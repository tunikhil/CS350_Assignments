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
   {Browse {Merge A B}}
end
