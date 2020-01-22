all:
	happy -gca ParTrivialLang.y
	alex -g LexTrivialLang.x
	ghc -dynamic --make TestTrivialLang.hs -o TestTrivialLang

clean:
	-rm -f *.log *.aux *.hi *.o *.dvi

distclean: clean
	-rm -f DocTrivialLang.* LexTrivialLang.* ParTrivialLang.* LayoutTrivialLang.* SkelTrivialLang.* PrintTrivialLang.* TestTrivialLang.* AbsTrivialLang.* TestTrivialLang ErrM.* SharedString.* ComposOp.* TrivialLang.dtd XMLTrivialLang.* Makefile*
	
