cat instructor_scores | awk  'BEGIN{FS="\t"; OFS="\t"}{print $3,$2,$NF}' | sort -k1,1 -k2,2 | cut -d: -f2
