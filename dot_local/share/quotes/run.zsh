#!/bin/zsh

quote_raw=$(shuf -n 1 ~/.local/share/quotes/quotes.txt)
IFS='|' read -rA quote_array <<< $quote_raw

[[ -z "$ZSHQUOTE_HIGHLIGHT_1" ]] && export ZSHQUOTE_HIGHLIGHT_1="\033[48:2:238:189:53m"
[[ -z "$ZSHQUOTE_TEXT_1" ]] && export ZSHQUOTE_TEXT_1="\033[30m"
[[ -z "$ZSHQUOTE_HIGHLIGHT_2" ]] && export ZSHQUOTE_HIGHLIGHT_2="\033[48:2:214:93:14m"
[[ -z "$ZSHQUOTE_TEXT_2" ]] && export ZSHQUOTE_TEXT_2="\033[30m"

quote_string="\033[0m$ZSHQUOTE_HIGHLIGHT_1$ZSHQUOTE_TEXT_1 \"$quote_array[1]\" \033[0m\n$ZSHQUOTE_HIGHLIGHT_2$ZSHQUOTE_TEXT_2 $quote_array[2] \033[0m"
echo $quote_string

