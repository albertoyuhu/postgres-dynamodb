FROM public.ecr.aws/lambda/python:3.12

COPY ./ /postgres-dynamodb
WORKDIR /postgres-dynamodb

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["lambda_function.lambda_handler"]