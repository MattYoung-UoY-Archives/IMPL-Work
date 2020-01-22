all:
	happy -gca ParGrammarB.y
	alex -g LexGrammarB.x
	ghc -dynamic --make TestGrammarB.hs -o TestGrammarB

clean:
	-rm -f *.log *.aux *.hi *.o *.dvi

distclean: clean
	-rm -f DocGrammarB.* LexGrammarB.* ParGrammarB.* LayoutGrammarB.* SkelGrammarB.* PrintGrammarB.* TestGrammarB.* AbsGrammarB.* TestGrammarB ErrM.* SharedString.* ComposOp.* GrammarB.dtd XMLGrammarB.* Makefile*
	
