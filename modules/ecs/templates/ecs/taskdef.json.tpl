[
  {
    "name": "${app_name}",
    "image": "${app_image}",
    "cpu": ${fargate_cpu},
    "memory": ${fargate_memory},
    "networkMode": "awsvpc",
    "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "${log_group_name}",
          "awslogs-region": "${aws_region}",
          "awslogs-stream-prefix": "ecs"
        }
    },
    "portMappings": [
      {
        "containerPort": ${app_port},
        "hostPort": ${app_port}
      }
    ],
    "environment": [
      {
        "name": "NODE_ENV",
        "value": "${node_env}"
      },
      {
        "name": "APP_PORT",
        "value": "${app_port}"
      },
      {
        "name": "APP_VERSION",
        "value": "${app_version}"
      },     
      {
        "name": "APP_NAME",
        "value": "${app_name}"
      },     
      {
        "name": "APP_ENV",
        "value": "${app_env}"
      }
    ]
  }
]