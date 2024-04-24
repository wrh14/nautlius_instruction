# nautlius_instruction
## Apply for an interactive pod
1. cpu pod: ```kubectl apply -f interactive_pod.yaml```
2. A6000 gpu pod: ```kubectl apply -f interactive_pod_a6000.yaml```

## Submit and delete a batch of jobs
```bash submit_batch_job.sh```
Comments:
1. Variables from `submit_batch_job.sh` to `run_job.yaml` are passed by `export` argument, e.g. `data_id`
2. Commands for each job are specified by `args` in `run_job.yaml`, include copy the necessary code and data to the machine from persistent memory, create and apply environment, run code, save the results back to the persistent memory.
Don't forget to delete the job once they are done.
```bach delete_batch_job.sh```


## Some helpful commands
1. Copy from local to persistent memory. ```kubectl cp -n ucsd-kamalikalab [local/path] [active pod name]:[mounted/persistent/memory/path/at/this/pod]```
2. Check all pods.   ```kubectl get pods```
3. Force delete a pod. ```kubectl delete -f interactive_pod.yaml --grace-period=0 --force```
4. Check the logs from a specific job. ```kubectl logs -f [pod name]```
