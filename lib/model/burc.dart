class Burc {
  final String _burcAdi,
      _burcTarihi,
      _burcDetayi,
      burcKucukResim,
      _burcBuyukResim;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this.burcKucukResim,
      this._burcBuyukResim);
  @override
  String toString() {
    // TODO: implement toString
    return '$_burcAdi $_burcDetayi $_burcTarihi';
  }
}
