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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

local Map FoldR in
   fun {FoldR Xs F N}
      case Xs
      of nil then N
      [] A|B then {F A {FoldR B F N}}
      end
   end

   fun {Map Xs F}
      case Xs
      of nil then nil
      else
	 {FoldR Xs fun {$ A B} {F A}|B end nil}
      end
   end

   {Browse{Map [1 2 3] fun {$ X} 2*X end}}
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
local FoldL in
   fun {FoldL Xs F N}
      case Xs
      of nil then N
      [] A|B then {FoldL B F {F N A}}
      end
   end
   
   {Browse{FoldL [1 4 5] fun{$ X Y} X*Y end 1}}

end