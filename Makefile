LILYPOND := lilypond --silent
TIMIDITY := timidity --quiet --quiet --output-mode w

all: \
	bop-for-bebo \
	funk-in-deep-freeze \
	put-it-in-your-pocket \
	saxophone-exercises \
	song-for-my-father \
	stan-getz-four \
	#
	@printf '━━━━━━  %s  ━━━━━━\n' "$(shell date '+%Y-%m-%d %H:%M:%S')"

clean:
	rm -v *.midi *.pdf *.wav

bop-for-bebo := \
	bop-for-bebo-alto.pdf \
	bop-for-bebo-concert.pdf \
	bop-for-bebo-tenor.pdf \
	#
bop-for-bebo: ${bop-for-bebo}
${bop-for-bebo} &: bop-for-bebo.ly settings.ily books.ily
	$(LILYPOND) bop-for-bebo.ly

funk-in-deep-freeze := \
	funk-in-deep-freeze-alto.pdf \
	funk-in-deep-freeze-concert.pdf \
	funk-in-deep-freeze-tenor.pdf \
	#
funk-in-deep-freeze: ${funk-in-deep-freeze}
${funk-in-deep-freeze} &: funk-in-deep-freeze.ly settings.ily books.ily
	$(LILYPOND) funk-in-deep-freeze.ly

put-it-in-your-pocket := \
	put-it-in-your-pocket-alto.pdf \
	put-it-in-your-pocket-concert.pdf \
	put-it-in-your-pocket-tenor.pdf \
	#
put-it-in-your-pocket: ${put-it-in-your-pocket}
${put-it-in-your-pocket} &: put-it-in-your-pocket.ly settings.ily
	$(LILYPOND) put-it-in-your-pocket.ly

saxophone-exercises := saxophone-exercises.pdf
saxophone-exercises: ${saxophone-exercises}
${saxophone-exercises} &: saxophone-exercises.ly settings.ily
	$(LILYPOND) saxophone-exercises.ly

song-for-my-father := \
	song-for-my-father.midi \
	song-for-my-father.pdf \
	#
song-for-my-father: ${song-for-my-father} song-for-my-father.wav
${song-for-my-father} &: song-for-my-father.ly settings.ily
	$(LILYPOND) song-for-my-father.ly
song-for-my-father.wav: song-for-my-father.midi
	$(TIMIDITY) song-for-my-father.midi

stan-getz-four := \
	stan-getz-four-alto.pdf \
	stan-getz-four-concert.pdf \
	stan-getz-four-tenor.pdf \
	#
stan-getz-four: ${stan-getz-four}
${stan-getz-four} &: stan-getz-four.ly settings.ily
	$(LILYPOND) stan-getz-four.ly
