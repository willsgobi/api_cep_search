# api_cep_search

Package para consulta de endereço via apiCEP.

## Getting Started

Insira a última versão em seu pubspec.yaml (and run `dart pub get`);

```yaml
depencencies:
  api_cep_search: ^1.0.5
```

## Example

Consulta de CEP via apiCEP.

Você pode passar um valor fixo ou variável para a função e ela retornará os dados do endereço:

```dart
    /// basta passar um CEP válido sem p ' - ' para realizar a consulta
    SearchCep.getInstance("15370496")
```

<hr>

```dart
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: FutureBuilder<SearchCep>(
              future: SearchCep.getInstance("15370496"),
              builder: (context, snapshot) {
                if (snapshot.data == null) return Container();

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      snapshot.data.code,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(snapshot.data.state, style: TextStyle(fontSize: 20)),
                    Text(snapshot.data.city, style: TextStyle(fontSize: 20)),
                    Text(snapshot.data.district,
                        style: TextStyle(fontSize: 20)),
                    Text(snapshot.data.address, style: TextStyle(fontSize: 20)),
                  ],
                );
              })),
    );
  }
}
```
