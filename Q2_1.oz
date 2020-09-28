local ZipWith in
   fun {ZipWith BinOp Xs Ys}
      case Xs
      of nil then nil
      [] A|B then
	 case Ys
	 of  nil then nil
	 []C|D then
	    {BinOp A C}|{ZipWith BinOp B D}
	 end
      end
   end
   {Browse {ZipWith Max [1 2 3] [1 4]}}
   {Browse {ZipWith fun {$ A B} A*B end [2 5] [4 2 1]} }

end
