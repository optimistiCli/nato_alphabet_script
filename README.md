# NATO Alphabet Script

Spells a string in the [NATO phonetic alphabet](https://en.wikipedia.org/wiki/NATO_phonetic_alphabet): Alpha Bravo Charlie …

## Description

Written while hanging on an airline hotline 🙃

Takes an input string from any reasonable direction and replaces every letter with a word that your hotline operator will have hard time misunderstanding. Anything sans the letters of the English alphabet and numbers is quietly ignored

## Examples

### From copy/paste buffer

⚠️ Only on macOS

Copy some text and then just run the script with no arguments.

```bash
$ echo 'N0 f9' | pbcopy # That's me copying text
$ nato.sh
November Zero Foxtrot Niner
```

### Pass text as an argument


```bash
$ nato.sh 'N0 f9'
November Zero Foxtrot Niner
```

### Pipe text to the script

```bash
$ echo 'N0 f9' | nato.sh
November Zero Foxtrot Niner
```

### Type text interactively

If the copy/paste buffer contains no text or if you are just not on a mac the script
attempts to read input interactively.

```bash
$ nato.sh 
Type it here; Ctrl+D to finish
N0 f9^D
November Zero Foxtrot Niner
```

### Docker image

Just kidding 🤪

## Enjoy

Hope this helps.
