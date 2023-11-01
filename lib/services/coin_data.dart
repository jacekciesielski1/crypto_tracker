
import 'network.dart';

const String apiKey = "AD3CBBDF-ABB5-420F-AE48-AE20DA84C875";
const String coinApiUrl = "https://rest.coinapi.io/v1/exchangerate";

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future<String> getCoinData(String coin, String currency) async {
    NetworkHelper networkHelper = NetworkHelper(
        "https://rest.coinapi.io/v1/exchangerate/$coin/$currency?apikey=$apiKey");
    var coinData = await networkHelper.getData();
    if (coinData == null){
      return "connection error";
    } else {
      return coinData["rate"].toStringAsFixed(0);
    }

  }
}
