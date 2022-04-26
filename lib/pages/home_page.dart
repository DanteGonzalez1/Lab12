import 'package:about_me/pages/estudiante.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Estudiante> _estudiantes = [
    Estudiante("18760609", "Dante Gonzalez ", "Ingenieria en Sistemas", "8",
        "+6461234567", "al18760609@ite.edu.mx"),
    Estudiante("18151319", "Carlos Israel", "Ingenieria en Sistemas", "4",
        "+6467654321", "al18151319@ite.edu.mx"),
    Estudiante("10240247","Vicky Soriano","Ingenieria Empresarial","9","+5259204618","al10240247@ite.edu.mx"),
    Estudiante("19402450","Isidro Carillo","DUAL","8","+4148294014","al19402450@ite.edu.mx")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Estudiantes'),
          backgroundColor: const Color.fromARGB(255, 29, 58, 105),
        ),
        body: ListView.builder(
            itemCount: _estudiantes.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>StudentInfo(
                          numControl: _estudiantes[index].matricula,
                          nombre: _estudiantes[index].nombreCompleto,
                          carrera: _estudiantes[index].carrera,
                          semestre: _estudiantes[index].semestre,
                          telefono: _estudiantes[index].telefono,
                          correo: _estudiantes[index].correo)));
                },
                title: Text(_estudiantes[index].nombreCompleto),
                subtitle: Text(_estudiantes[index].carrera),
                leading: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 29, 58, 105),
                    child: Text(
                        _estudiantes[index].nombreCompleto.substring(0, 1))),
                trailing: const Icon(Icons.arrow_forward_ios),
              );
            }));
  }
}

class Estudiante {
  String matricula;
  String nombreCompleto;
  String carrera;
  String semestre;
  String telefono;
  String correo;

  Estudiante(this.matricula, this.nombreCompleto, this.carrera, this.semestre,
      this.telefono, this.correo);
}
