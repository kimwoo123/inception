all : up

up : 
	@mkdir -p /home/wooseoki/data
	@docker-compose -f ./srcs/docker-compose.yml up -d

build :
	@mkdir -p /home/wooseoki/data
	@docker-compose -f ./srcs/docker-compose.yml up --build -d

down : 
	@docker-compose -f ./srcs/docker-compose.yml down
