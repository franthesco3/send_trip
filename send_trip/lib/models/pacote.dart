class Pacote {
  String nome;
  String image;
  String tamanho;
  String peso;
  Pacote({this.nome, this.image, this.tamanho, this.peso});

  static List<Pacote> getPacote() {
    return <Pacote>[
      Pacote(
          image: "assets/images/ic_email.png", nome: "Envelope", peso: "Até 1"),
      Pacote(image: "assets/images/ic_book.png", nome: "Livro", peso: "Até 5"),
      Pacote(
          image: "assets/images/ic_box.png",
          nome: "Caixa de Sapato",
          peso: "Até 10"),
      Pacote(
          image: "assets/images/ic_backpack.png",
          nome: "Mochila",
          peso: "Até 15"),
      Pacote(
          image: "assets/images/ic_mala.png",
          nome: "Mala grande",
          peso: "Até 20"),
      Pacote(
          image: "assets/images/ic_email@2x.png",
          nome: "Caixa Grande",
          peso: "Outro"),
    ];
  }
}
