export method=L2_margin
export eps=0.5
export targeted_K=1
export dataset=pet
export seed=1
export total_iter=100
export data_path="/Results/if_manipulation/pre_processing"
for (( data_id=0; data_id<=49; data_id+=1 )); do
    export data_id=$data_id
    envsubst < run_job.yaml | kubectl delete -f -
done
