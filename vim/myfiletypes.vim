" Put in ~/.vim/
" my filetypefile
augroup filetypedetect
  au! BufRead,BufNewFile *.plt,*.plot,*.gp              setf gnuplot
  au! BufRead,BufNewFile in.*,data.*,*.lmp,*.lammpstrj  setf lammps
augroup END
