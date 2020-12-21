all:
	mpost vojta-cone.mp
	mpost vojta-cones.mp
	pdflatex pazuki-heights
	pdflatex pazuki-heights

clean:
	rm -f *.aux *.log *.mps *.mpx *.out *.toc *~
