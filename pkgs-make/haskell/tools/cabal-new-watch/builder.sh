source "$stdenv/setup"


BIN="cabal-new-watch"


mkdir -p "$out/bin"
cp "$src/$BIN" "$out/bin/$BIN"
chmod u+x "$out/bin/$BIN"
wrapProgram "$out/bin/$BIN" \
    --prefix PATH : "${coreutils}/bin" \
    --prefix PATH : "${fswatch}/bin" \
    --prefix PATH : "${gnugrep}/bin"
