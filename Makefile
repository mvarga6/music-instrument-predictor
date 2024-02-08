
jupyter:
	@docker run \
		-it --rm \
		-p 8888:8888 \
		--privileged \
		-v "${PWD}/workspace":/home/jovyan/workspace \
		quay.io/jupyter/datascience-notebook:2024-01-15 \
		start-notebook.py --ServerApp.root_dir=/home/jovyan/workspace

download-train-data:
	wget http://download.magenta.tensorflow.org/datasets/nsynth/nsynth-train.jsonwav.tar.gz -O workspace/train.tar.gz
	tar -xf workspace/train.tar.gz -C workspace && rm -f workspace/train.tar.gz

download-validation-data:
	wget http://download.magenta.tensorflow.org/datasets/nsynth/nsynth-valid.jsonwav.tar.gz -O workspace/valid.tar.gz
	tar -xf workspace/valid.tar.gz -C workspace && rm -f workspace/valid.tar.gz

download-test-data:
	wget http://download.magenta.tensorflow.org/datasets/nsynth/nsynth-test.jsonwav.tar.gz -O workspace/test.tar.gz
	tar -xf workspace/test.tar.gz -C workspace && rm -f workspace/test.tar.gz