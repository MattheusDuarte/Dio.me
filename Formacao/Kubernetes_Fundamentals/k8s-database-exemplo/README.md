Para esssa prática utilizamos os seguintes passos:
1. subimos um dockerfile do banco de dados em **./database/dockefile** e mandamos para o hub
2. subimos os deployments do banco de dados **./database/db-deployment**
3. 1. subimos um dockerfile do backend em **./backend/dockefile** e mandamos para o hub
4. subimos os deployments do backend **./backend/php-deployment**
5. com todos os serviços já esecutados precisamos do frontend 