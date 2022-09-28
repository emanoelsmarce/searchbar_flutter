# SearchBar - Buscar 

Searchbar, como o nome já diz, é uma propriedade do Flutter onde é possível utilizar para realizar buscas em determinada List. 

Nesta aplicação, iremos entender e conhecer alguns recursos muito importantes e que são utilizados em diversos aplicativos atualmente. 
Primeiro, criamos um appbar, com o nome da nossa aplicação. 

![image](https://user-images.githubusercontent.com/50625916/192671914-022a76c5-eff0-4be2-b30c-6c62b8417a92.png)

Destacando aqui o código para poder implementar a barra de buscas. 

- Avançando mais um pouco, temos as funções que são utilizadas para realizar a busca e principalmente, algo novo aqui, que é a nossa aplicação identificar a entrada de dados por meio de uma função que valida a entrada. 

![image](https://user-images.githubusercontent.com/50625916/192672166-774c397d-6e27-4c31-b425-f9a91235dfb9.png)

- Temos também uma List onde foi colocado os dados dos usuários para serem exibidos na tela. OBS: Foi colocado diretamente no código do nosso usuario_lista.dart, simplesmente para economizar tempo, porém poderíamos criar uma pasta DATA dentro de lib > dados.dart ou lista_usuarios.dart. Ficaria bem mais clean. Fica a dica pra uma melhoria inclusive. 

![image](https://user-images.githubusercontent.com/50625916/192672457-696dbc16-ac93-425b-8d64-529ad4ae907f.png)

E finalmente utilizamos um Expanded() para poder realizar o layout e a forma como seria exibida os Cards com os dados da nossa lista. Lembrando que foram utilizados _listausuarios pra nos retornar os dados da list. 

![image](https://user-images.githubusercontent.com/50625916/192672683-4aa14eb1-0be5-4418-bb83-68b0e18fde17.png)

E assim ficou nosso aplicativo: 

- Seu estado inicial já exibe todos os registros da list.

![image](https://user-images.githubusercontent.com/50625916/192672753-a7d4c020-25c5-4b7a-91e2-42a717ea6769.png)

- Em seguida, quando eu digito na Searchbar as iniciais da minha pesquisa, o nosso app já filtra e mostra os resultados com as letras inseridas.

![image](https://user-images.githubusercontent.com/50625916/192672872-487aab24-e61a-4005-be7d-3119a56c9bbb.png)

E por fim, quando eu apago os dados de digitação, ele retorna ao estado inicial. 

Lembrando que o SetState é um método utilizado para informar a nossa aplicação que determinada ação irá resultar em uma alteração no seu estado. Nesse caso, se eu digitar as iniciais, o método entenderá que estou alterando meu status de um exibir list para uma busca específica, alterando o que é demonstrado na tela. 
