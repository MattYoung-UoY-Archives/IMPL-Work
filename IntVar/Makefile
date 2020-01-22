all:
	happy -gca ParIntExpV.y
	alex -g LexIntExpV.x
	ghc -dynamic --make TestIntExpV.hs -o TestIntExpV

clean:
	-rm -f *.log *.aux *.hi *.o *.dvi

distclean: clean
	-rm -f DocIntExpV.* LexIntExpV.* ParIntExpV.* LayoutIntExpV.* SkelIntExpV.* PrintIntExpV.* TestIntExpV.* AbsIntExpV.* TestIntExpV ErrM.* SharedString.* ComposOp.* IntExpV.dtd XMLIntExpV.* Makefile*
	
