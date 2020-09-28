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

   {Browse {Take A 0}}
end   