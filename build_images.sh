rm fastDeploy.py
wget https://raw.githubusercontent.com/notAI-tech/fastDeploy/master/cli/fastDeploy.py

python3 fastDeploy.py --build temp --source_dir classifier --verbose --base base-v0.1 --port 1238
docker commit temp notaitech/nudenet:classifier
docker push notaitech/nudenet:classifier

rm fastDeploy.py

