#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

readonly SCORE="${SCORE:?SCORE unspecified}"

/Applications/LilyPond.app/Contents/Resources/bin/lilypond "${SCORE}"
open "${SCORE/\.ly/.pdf}"
