for layer in $(cat image-file-pass/manifest.json | jq -c '.[0].Layers[]' | sed s/\"//g); 
do
    layer_dir=image-file-pass/blobs/sha256/layer-$(eval echo ${layer} | awk '{sub("blobs/sha256/", "");print $0;}') ;
    mkdir ${layer_dir} ;
    tar xvf image-file-pass/${layer} -C ${layer_dir}  ; 
done