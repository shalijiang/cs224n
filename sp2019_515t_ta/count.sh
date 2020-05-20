cat instructor_scores | awk  '
BEGIN{FS="\t"; OFS="\t"}
{
    print $3,$2,$NF
}' | sort -k1,1 -k2,2 | cut -d: -f2 | awk '
BEGIN{FS="\t"; OFS="\t"}
{
    count[$1]++; 
    score[$1]+=$3;
}END{
    for (team in count) {
        print team, score[team], count[team], score[team]/count[team]
    }
}'
