# usage: gnuplot -p -c gp_input.gnu '../tmp/outgp_cyl.data' 

# takes 1 argument to run the script directly from CL, not via the gnuplot prompt
# from https://stackoverflow.com/questions/41795979/use-gnuplot-command-without-prompt

filename=(ARGC>0 ? ARG1 : 'test.data' )  # By default filename=DataFile.txt
                                            # If called with one argument (ARGC=1)
                                            # then `filename=ARG1`

set title filename noenhanced
#set title filename
#set xlabel "Time"
#set ylabel "Packets"
#set datafile separator ","

# the plot command ALWAYS at the end of the script after the settings
plot filename with vector
#plot filename w vec
