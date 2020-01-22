all:
	happy -gca ParLispKit.y
	alex -g LexLispKit.x
	ghc -dynamic --make TestLispKit.hs -o TestLispKit

clean:
	-rm -f *.log *.aux *.hi *.o *.dvi

distclean: clean
	-rm -f DocLispKit.* LexLispKit.* ParLispKit.* LayoutLispKit.* SkelLispKit.* PrintLispKit.* TestLispKit.* AbsLispKit.* TestLispKit ErrM.* SharedString.* ComposOp.* LispKit.dtd XMLLispKit.* Makefile*
	
