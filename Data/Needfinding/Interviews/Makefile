INTERVIEWEES = Agnesi Bernoulli Cantor Dirichlet Euler Fermat Germain Hodgkin Ibuka Jemison Klein Lagrange McClintock Noether

all: $(INTERVIEWEES:%=%.pdf)

%.pdf: %-summary.pdf %-transcript-en.pdf 
	pdfunite $^ $@

%-summary.pdf: %-summary.md
	pandoc $< -o $@

%-transcript-en.pdf: %-transcript-en.md
	pandoc $< -o $@

clean:
	rm -f $(INTERVIEWEES:%=%.pdf) $(INTERVIEWEES:%=%-summary.pdf) $(INTERVIEWEES:%=%-transcript-en.pdf)
