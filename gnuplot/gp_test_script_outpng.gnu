# takes argument to run the script directly from CL, not via the gnuplot prompt
# will always output to a png with filename same as input filename.data
# modified from https://stackoverflow.com/questions/41795979/use-gnuplot-command-without-prompt

# usage example:  
#   gnuplot -c gp_test_script_outpng.gnu ../tmp/outgp_ana_deg6.data

filename=ARG1 

myvar=filename[1:strstrt(filename, ".") - 1]
#set terminal png
set terminal pngcairo size 1440,900
set output myvar.'.png'
# don't show the key (= legend)
#set key off
# show a grid as reference
set grid
set title filename noenhanced
#set title filename
set xlabel "U"
set ylabel "V"


# plot command ALWAYS at the end of the script after the settings
plot filename with vector \
    title "distortion vector"
