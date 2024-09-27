for layer in $(cat <path>/manifest.json | jq -c '.[0].Layers[]' | sed s/\"//g); 
do
    layer_dir=<path>/blobs/sha256/layer-$(eval echo ${layer} | awk '{sub("blobs/sha256/", "");print $0;}') ;
    mkdir ${layer_dir} ;
    tar xvf <path>/${layer} -C ${layer_dir}  ; 
done