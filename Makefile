.PHONY: ansible start stop clean

ansible:
	ansible-playbook -s install.yml -i hosts

start:
	sudo docker-compose up -d --build

stop:
	sudo docker-compose down

clean:
	sudo rm -rf ${DB_DATA}
	sudo docker-compose rm postgres pgweb postgrest
