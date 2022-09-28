import 'package:flutter/material.dart';

class TelaListaUsuario extends StatefulWidget {
  const TelaListaUsuario({Key? key}) : super(key: key);

  @override
  State<TelaListaUsuario> createState() => _TelaListaUsuarioState();
}

class _TelaListaUsuarioState extends State<TelaListaUsuario> {
  final List<Map<String, dynamic>> _listaUsuarios = [
    {
      "image":
          "https://im.rediff.com/300-300/movies/2019/oct/14neeraj-madhav2.jpg",
      "id": 1,
      "name": "Lucas ",
      "des": "Desenvolvedor Java ",
    },
    {
      "id": 2,
      "name": "Rafael",
      "des": "Desenvolvedor Java ",
      "image":
          "https://upload.wikimedia.org/wikipedia/en/4/47/Iron_Man_%28circa_2018%29.png",
    },
    {
      "id": 3,
      "name": "Rubens",
      "des": "Desenvolvedor FullStack ",
      "image":
          "https://sa1s3optim.patientpop.com/assets/images/provider/photos/1888657.jpg",
    },
    {
      "id": 4,
      "name": "Gabriel",
      "des": "Desenvolvedor Back-End",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_LmG47_W3RM0QBVGI23-vodL_oOOJxLIBrg&usqp=CAU",
    },
    {
      "id": 5,
      "name": "Cesar",
      "des": "Desenvolvedor Front-End",
      "image":
          "https://img.freepik.com/free-photo/black-man-city_1157-17027.jpg?w=2000",
    },
    {
      "id": 6,
      "name": "Jader",
      "des": "Desenvolvedor Front-End",
      "image":
          "https://media.gettyimages.com/photos/portrait-of-smiling-mid-adult-man-wearing-tshirt-picture-id985138674?s=612x612",
    },
    {
      "id": 7,
      "name": "Thiago",
      "des": "Desenvolvedor Front-End",
      "image":
          "https://image.shutterstock.com/image-photo/handsome-young-man-running-across-260nw-587931092.jpg",
    },
    {
      "id": 8,
      "name": "Antonio",
      "des": "Desenvolvedor Front-End ",
      "image":
          "https://media.istockphoto.com/photos/portrait-of-young-happy-indian-business-man-executive-looking-at-picture-id1309489745?b=1&k=20&m=1309489745&s=170667a&w=0&h=Wo_7nESC_ePyEYfEsnOm-rP6ElkxbWqIB3Ga4W3nw8M=",
    },
    {
      "id": 9,
      "name": "William",
      "des": "Desenvolvedor Front-End ",
      "image":
          "https://media.istockphoto.com/photos/young-man-looking-at-digital-tablet-picture-id1184382530?k=20&m=1184382530&s=612x612&w=0&h=-G67wR9BU2-XqLTR70purl0vb2PFbu3OAg0T7O_ZpiI=",
    },
    {
      "id": 10,
      "name": "David",
      "des": "Desenvolvedor Front-End ",
      "image":
          "https://e0.365dm.com/22/06/2048x1152/skysports-erling-haaland-man-city_5803257.jpg",
    }
  ];
//Aqui listamos todos os usuários e definimos que ao iniciar, todos serão exibidos.
  List<Map<String, dynamic>> _pesquisar = [];
  @override
  void initState() {
    _pesquisar = _listaUsuarios;
    super.initState();
  }

  //Função para chamar os resultados no campo texto
  void _pesquisarFiltros(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _listaUsuarios;
    } else {
      results = _listaUsuarios
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _pesquisar = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //para o Título ficar no centro
        title: Text('Lista de Usuários'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0), //Distancia entre o cabeçalho
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _pesquisarFiltros(value),
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                  hintText: "Buscar",
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(),
                  )),
            ),
            const SizedBox(
              // Tamanho das grid que aparecerão os nomes.
              height: 20,
            ),
            Expanded(
                child: _pesquisar.isNotEmpty
                    ? ListView.builder(
                        itemCount: _pesquisar.length,
                        itemBuilder: (context, index) => Card(
                          elevation: 1,
                          margin: EdgeInsets.symmetric(vertical: 2),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage(_pesquisar[index]['image']),
                              backgroundColor: Colors.transparent,
                            ),
                            title: Text(_listaUsuarios[index]['name']),
                            subtitle: Text('${_listaUsuarios[index]["des"]}'),
                          ),
                        ),
                      )
                    : Text(
                        'Resultado não encontrado. Por favor, utilize buscas diferentes',
                        style: TextStyle(fontSize: 24),
                      )),
          ],
        ),
      ),
    );
  }
}
