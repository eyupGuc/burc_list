class Burc{
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResin;
  get burcAdi=>this._burcAdi;
  get burcTarihi=>this._burcTarihi;
  get burcDetayi=>this._burcDetayi;
  get burcKucukResim=>this._burcKucukResim;
  get burcBuyukResin=>this._burcBuyukResin;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucukResim, this._burcBuyukResin);


  String toString(){
return '$_burcAdi - $_burcBuyukResin';
  }
}