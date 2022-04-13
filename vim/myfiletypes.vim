" my filetypefile
augroup filetypedetect
  au! BufRead,BufNewFile *.plt,*.plot,*.gp                       setf gnuplot
  au! BufRead,BufNewFile in.*,data.*,*.lmp,*.lammpstrj,*.lammps  setf lammps
augroup END
