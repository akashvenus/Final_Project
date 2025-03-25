READ this before executing the files:

- create a virtual environment for Python 3.10
- pip install the requirements.txt

Main code for running models are under:

/sets1
/sets2

Synthetic data generation code and stratified data splitting code is present in the home directory

- Dataset Visualization & synthetic data generation (notebook)
- split_dataset (notebook)

Synthetic data is present in the home directory:

- data.csv

If you wish to rerun the Data visualization and synthetic data generation you can do so but please place the train and test for the sets accordingly.

-  5% split for sets1 folder (both train and test)
- 10% split for sets2 folder (both train and test)

Before executing the main files, setup the environment for the online learning:

-> Download docker if you are not using it
-> if you are using windows execute docker_script.bat 
-> Linux/Mac run docker_script.sh
-> Once you open your docker it should create two contains under setup_docs
-> Keep the docker running for executing the producer code
-> Only run the producer once for each set (i.e set 1 or set 2), as the same producer is used in both phases

Execution of the files is of this order for each set:

train_baselines_models_phase1 -> GNN_DNN_phase1 -> RL_phase1 ->  Producer_dynamic -> Dynamic_model_{model_names}_phase 1 

where {model_names} are for each model. File is suffixed by phase1 to indicate which are the dynamic models used.

Repeat the above step for phase 2:

ie. train_baseline_phase2 -> GNN_DNN_phase2 -> RL_phase2 -> Producer(if already running neglect) -> Dynamic_model_{model_names}_phase2


Note:

-> Make sure all the pickled models are stored inside the models folder

-> All the weights and pickled scalers are stored inside the respective set folder