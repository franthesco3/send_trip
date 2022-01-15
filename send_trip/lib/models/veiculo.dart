class Veiculo {
  String nome;
  String image;
  int idVei;

  Veiculo({
    this.nome,
    this.image,
    this.idVei,
  });

  static List<Veiculo> getVeiculo() {
    return <Veiculo>[
      Veiculo(image: "assets/images/ic_car.png", nome: "carro", idVei: 0),
      Veiculo(image: "assets/images/ic_aviao.png", nome: "avião", idVei: 1),
      Veiculo(
          image: "assets/images/ic_caminhao.png", nome: "caminhão", idVei: 2),
      Veiculo(image: "assets/images/ic_van.png", nome: "van", idVei: 3),
      Veiculo(image: "assets/images/ic_moto.png", nome: "moto", idVei: 4),
      Veiculo(image: "assets/images/ic_bike.png", nome: "bike", idVei: 5),
      Veiculo(image: "assets/images/ic_trem.png", nome: "trem", idVei: 6),
      Veiculo(image: "assets/images/ic_bus.png", nome: "ônibus", idVei: 7),
      Veiculo(image: "assets/images/ic_barco.png", nome: "barco", idVei: 8)
    ];
  }
}
