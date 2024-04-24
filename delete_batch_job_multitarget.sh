export method=L2_margin
export eps=0.5
export targeted_K=1
export dataset=pet
#export seed=1
export total_iter=100
export data_path="/cystore/if_manipulation/pre_processing"
for data_id in 5 10 20 35 50 75 100; do
    export data_id=$data_id
    envsubst < run_job_multitarget.yaml | kubectl delete -f -
done
