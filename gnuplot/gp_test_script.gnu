# takes argument to run the script directly from CL, not via the gnuplot prompt
# from https://stackoverflow.com/questions/41795979/use-gnuplot-command-without-prompt

filename=(ARGC>0 ? ARG1 : 'test.data' )  # By default filename=DataFile.txt
                                            # If called with one argument (ARGC=1)
                                            # then `filename=ARG1`

if(ARGC>1){
  # if called with two arguments (ARGC=2), then configure a png output
  set terminal png
  set output ARG2
}
set title filename noenhanced
#set title filename
#set xlabel "Time"
#set ylabel "Packets"
#set datafile separator ","

# the plot command ALWAYS at the end of the script after the settings
#plot filename with vector
#plot filename w vec
#plot filename using ($1+$3):($2+$4) 
plot filename using ($1+$3):($2+$4) w lines, \
filename using ($2+$4):($1+$3) w lines

# by itself will print vertical lines
#plot filename using ($2+$4):($1+$3) w lines
#plot filename using ($1+$3):($2+$4) w linespoints 
