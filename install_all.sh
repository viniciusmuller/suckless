for d in */ ; do
  (cd $d && sudo make install clean)
done
