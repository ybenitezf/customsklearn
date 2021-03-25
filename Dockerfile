FROM 141502667606.dkr.ecr.eu-west-1.amazonaws.com/sagemaker-scikit-learn:0.23-1-cpu-py3

RUN python -m pip install -U --no-cache-dir pip && \
    python -m pip install --no-cache-dir Flask
