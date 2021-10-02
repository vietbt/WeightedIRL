python collect_demo.py --env_id PointMazeLeft-v0 --buffer_size 1000000 --std 0.01 --p_rand 0.0 --weight logs/PointMazeLeft-v0/sac/seed2212/model/step1000000/actor.pth
python train_imitation.py --env_id PointMazeLeft-v0 --test_env_id PointMazeRight-v0 --buffer buffers/PointMazeLeft-v0/size1000000_std0.01_prand0.0.pth --num_steps 100000 --rollout_length 2000 --eval_interval 5000 --algo gail
python train_imitation.py --env_id PointMazeLeft-v0 --test_env_id PointMazeRight-v0 --buffer buffers/PointMazeLeft-v0/size1000000_std0.01_prand0.0.pth --num_steps 100000 --rollout_length 2000 --eval_interval 5000 --algo gail --weighted
python train_imitation.py --env_id PointMazeLeft-v0 --test_env_id PointMazeRight-v0 --buffer buffers/PointMazeLeft-v0/size1000000_std0.01_prand0.0.pth --num_steps 100000 --rollout_length 200 --eval_interval 500 --algo airl
python train_imitation.py --env_id PointMazeLeft-v0 --test_env_id PointMazeRight-v0 --buffer buffers/PointMazeLeft-v0/size1000000_std0.01_prand0.0.pth --num_steps 200000 --rollout_length 2000 --eval_interval 5000 --algo airl --weighted
python train_imitation.py --env_id PointMazeLeft-v0 --test_env_id PointMazeRight-v0 --buffer buffers/PointMazeLeft-v0/size1000000_std0.01_prand0.0.pth --num_steps 100000 --rollout_length 200 --eval_interval 500 --algo airl --state_only
python train_imitation.py --env_id PointMazeLeft-v0 --test_env_id PointMazeRight-v0 --buffer buffers/PointMazeLeft-v0/size1000000_std0.01_prand0.0.pth --num_steps 200000 --rollout_length 2000 --eval_interval 5000 --algo airl --weighted --state_only