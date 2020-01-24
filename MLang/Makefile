all:
	happy -gca ParMLang.y
	alex -g LexMLang.x
	ghc -dynamic --make TestMLang.hs -o TestMLang

clean:
	-rm -f *.log *.aux *.hi *.o *.dvi

distclean: clean
	-rm -f DocMLang.* LexMLang.* ParMLang.* LayoutMLang.* SkelMLang.* PrintMLang.* TestMLang.* AbsMLang.* TestMLang ErrM.* SharedString.* ComposOp.* MLang.dtd XMLMLang.* Makefile*
	
