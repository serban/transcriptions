all: \
	bop-for-bebo \
	funk-in-deep-freeze \
	put-it-in-your-pocket \
	saxophone-exercises \
	stan-getz-four \
	#

clean:
	rm -v *.pdf

bop-for-bebo := \
	bop-for-bebo-alto.pdf \
	bop-for-bebo-concert.pdf \
	bop-for-bebo-tenor.pdf \
	#
bop-for-bebo: ${bop-for-bebo}
${bop-for-bebo} &: bop-for-bebo.ly settings.ily
	lilypond bop-for-bebo.ly

funk-in-deep-freeze := \
	funk-in-deep-freeze-alto.pdf \
	funk-in-deep-freeze-concert.pdf \
	funk-in-deep-freeze-tenor.pdf \
	#
funk-in-deep-freeze: ${funk-in-deep-freeze}
${funk-in-deep-freeze} &: funk-in-deep-freeze.ly settings.ily
	lilypond funk-in-deep-freeze.ly

put-it-in-your-pocket := \
	put-it-in-your-pocket-alto.pdf \
	put-it-in-your-pocket-concert.pdf \
	put-it-in-your-pocket-tenor.pdf \
	#
put-it-in-your-pocket: ${put-it-in-your-pocket}
${put-it-in-your-pocket} &: put-it-in-your-pocket.ly settings.ily
	lilypond put-it-in-your-pocket.ly

saxophone-exercises := saxophone-exercises.pdf
saxophone-exercises: ${saxophone-exercises}
${saxophone-exercises} &: saxophone-exercises.ly settings.ily
	lilypond saxophone-exercises.ly

stan-getz-four := \
	stan-getz-four-alto.pdf \
	stan-getz-four-concert.pdf \
	stan-getz-four-tenor.pdf \
	#
stan-getz-four: ${stan-getz-four}
${stan-getz-four} &: stan-getz-four.ly settings.ily
	lilypond stan-getz-four.ly
