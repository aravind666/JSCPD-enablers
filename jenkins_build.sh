# Run JSCPD commandline tool on your sourcecode path '.' ( dot ) in the command below means current path 
jscpd . -min-tokens 50 --min-lines 5 --reporters 'json,html,verbose' --blame true --output . 

# Gather number of duplicate lines currently
CurrentDuplicateCount=`jq '.statistics | .total | .duplicatedLines' < jscpd-report.json`

# Get previous duplicate count, for the first run it will be null so we can treat it as Zero 
PreviousDuplicatCount=`cat \your_path_jenkins_host\count_of_duplicates.txt`

# Compare previous count with current count offcourse for the first run Shell type casts nil to 0 
if [[ $PreviousDuplicatCount > $CurrentDuplicateCount ]] 
then
   
    echo "Number of duplicate Lines have increased"
    # Break the build it its increased by returning exit status to 1
    exit 1
else 
    echo "No new duplicate Lines"
fi