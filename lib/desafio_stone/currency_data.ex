defmodule DesafioStone.CurrencyData do
  @moduledoc """
    Módulo de base para uso de Currency. Possui uma lista de moedas e suas especificações de acordo com a ISO 4217. Dos dados incluídos estão:
      Nome, Símbolo, Expoente e Código
  """
  
  @currencies %{
    AED: %{name: "UAE Dirham",                                             code: 784, symbol: "د.إ",    exponent: 2},
    AFN: %{name: "Afghani",                                                code: 971, symbol: "؋",    exponent: 2},
    ALL: %{name: "Lek",                                                    code: 008, symbol: "Lek",  exponent: 2},
    AMD: %{name: "Armenian Dram",                                          code: 051, symbol: "AMD",    exponent: 2},
    ANG: %{name: "Netherlands Antillian Guilder",                          code: 532, symbol: "ƒ",    exponent: 2},
    AOA: %{name: "Kwanza",                                                 code: 973, symbol: "Kz",    exponent: 2},
    ARS: %{name: "Argentine Peso",                                         code: 032, symbol: "$",    exponent: 2},
    AUD: %{name: "Australian Dollar",                                      code: 036, symbol: "$",    exponent: 2},
    AWG: %{name: "Aruban Guilder",                                         code: 533, symbol: "ƒ",    exponent: 2},
    AZN: %{name: "Azerbaijanian Manat",                                    code: 944, symbol: "ман",  exponent: 2},
    BAM: %{name: "Convertible Marks",                                      code: 977, symbol: "KM",   exponent: 2},
    BBD: %{name: "Barbados Dollar",                                        code: 052, symbol: "$",    exponent: 2},
    BDT: %{name: "Taka",                                                   code: 050, symbol: "৳",    exponent: 2},
    BGN: %{name: "Bulgarian Lev",                                          code: 975, symbol: "лв",   exponent: 2},
    BHD: %{name: "Bahraini Dinar",                                         code: 048, symbol: ".د.ب",    exponent: 3},
    BIF: %{name: "Burundi Franc",                                          code: 108, symbol: "FBu",    exponent: 0},
    BMD: %{name: "Bermudian Dollar (customarily known as Bermuda Dollar)", code: 060, symbol: "$",    exponent: 2},
    BND: %{name: "Brunei Dollar",                                          code: 096, symbol: "$",    exponent: 2},
    BOB: %{name: "Boliviano Mvdol",                                        code: 068, symbol: "$b",   exponent: 2},
    BOV: %{name: "Boliviano Mvdol",                                        code: 984, symbol: "$b",   exponent: 2},
    BRL: %{name: "Brazilian Real",                                         code: 986, symbol: "R$",   exponent: 2},
    BSD: %{name: "Bahamian Dollar",                                        code: 044, symbol: "$",    exponent: 2},
    BTN: %{name: "Indian Rupee Ngultrum",                                  code: 064, symbol: "Nu.",    exponent: 2},
    BWP: %{name: "Pula",                                                   code: 072, symbol: "P",    exponent: 2},
    BYR: %{name: "Belarussian Ruble",                                      code: 933, symbol: "p.",   exponent: 0},
    BZD: %{name: "Belize Dollar",                                          code: 084, symbol: "BZ$",  exponent: 2},
    CAD: %{name: "Canadian Dollar",                                        code: 124, symbol: "$",    exponent: 2},
    CDF: %{name: "Congolese Franc",                                        code: 976, symbol: "CF",    exponent: 2},
    CHF: %{name: "Swiss Franc",                                            code: 756, symbol: "CHF",  exponent: 2},
    CLF: %{name: "Chilean Peso Unidades de fomento",                       code: 990, symbol: "$",    exponent: 4},
    CLP: %{name: "Chilean Peso Unidades de fomento",                       code: 152, symbol: "$",    exponent: 0},
    CNY: %{name: "Yuan Renminbi",                                          code: 156, symbol: "¥",    exponent: 2},
    COP: %{name: "Colombian Peso",                                         code: 170, symbol: "$",    exponent: 2},
    COU: %{name: "Colombian Peso Unidad de Valor Real",                    code: 970, symbol: "$",    exponent: 2},
    CRC: %{name: "Costa Rican Colon",                                      code: 188, symbol: "₡",    exponent: 2},
    CUC: %{name: "Cuban Peso Peso Convertible",                            code: 931, symbol: "₱",    exponent: 2},
    CUP: %{name: "Cuban Peso Peso Convertible",                            code: 192, symbol: "₱",    exponent: 2},
    CVE: %{name: "Cape Verde Escudo",                                      code: 132, symbol: "$",    exponent: 0},
    CZK: %{name: "Czech Koruna",                                           code: 203, symbol: "Kč",   exponent: 2},
    DJF: %{name: "Djibouti Franc",                                         code: 262, symbol: "Fdj",    exponent: 0},
    DKK: %{name: "Danish Krone",                                           code: 208, symbol: "kr",   exponent: 2},
    DOP: %{name: "Dominican Peso",                                         code: 214, symbol: "RD$",  exponent: 2},
    DZD: %{name: "Algerian Dinar",                                         code: 012, symbol: "دج",    exponent: 2},
    EEK: %{name: "Kroon",                                                  code: 233, symbol: "KR",    exponent: 2},
    EGP: %{name: "Egyptian Pound",                                         code: 818, symbol: "£",    exponent: 2},
    ERN: %{name: "Nakfa",                                                  code: 232, symbol: "Nfk",    exponent: 2},
    ETB: %{name: "Ethiopian Birr",                                         code: 230, symbol: "Br",    exponent: 2},
    EUR: %{name: "Euro",                                                   code: 978, symbol: "€",    exponent: 2},
    FJD: %{name: "Fiji Dollar",                                            code: 242, symbol: "$",    exponent: 2},
    FKP: %{name: "Falkland Islands Pound",                                 code: 238, symbol: "£",    exponent: 2},
    GBP: %{name: "Pound Sterling",                                         code: 826, symbol: "£",    exponent: 2},
    GEL: %{name: "Lari",                                                   code: 981, symbol: "₾",    exponent: 2},
    GHS: %{name: "Cedi",                                                   code: 936, symbol: "GH₵",    exponent: 2},
    GIP: %{name: "Gibraltar Pound",                                        code: 292, symbol: "£",    exponent: 2},
    GMD: %{name: "Dalasi",                                                 code: 270, symbol: "D",    exponent: 2},
    GNF: %{name: "Guinea Franc",                                           code: 324, symbol: "FG",    exponent: 0},
    GTQ: %{name: "Quetzal",                                                code: 320, symbol: "Q",    exponent: 2},
    GYD: %{name: "Guyana Dollar",                                          code: 328, symbol: "$",    exponent: 2},
    HKD: %{name: "Hong Kong Dollar",                                       code: 344, symbol: "$",    exponent: 2},
    HNL: %{name: "Lempira",                                                code: 340, symbol: "L",    exponent: 2},
    HRK: %{name: "Croatian Kuna",                                          code: 191, symbol: "kn",   exponent: 2},
    HTG: %{name: "Gourde US Dollar",                                       code: 332, symbol: " ",    exponent: 2},
    HUF: %{name: "Forint",                                                 code: 348, symbol: "Ft",   exponent: 2},
    IDR: %{name: "Rupiah",                                                 code: 360, symbol: "Rp",   exponent: 2},
    ILS: %{name: "New Israeli Sheqel",                                     code: 376, symbol: "₪",    exponent: 2},
    INR: %{name: "Indian Rupee",                                           code: 356, symbol: "₹",    exponent: 2},
    IQD: %{name: "Iraqi Dinar",                                            code: 368, symbol: "‎ع.د",    exponent: 3},
    IRR: %{name: "Iranian Rial",                                           code: 364, symbol: "﷼",    exponent: 2},
    ISK: %{name: "Iceland Krona",                                          code: 352, symbol: "kr",   exponent: 0},
    JMD: %{name: "Jamaican Dollar",                                        code: 388, symbol: "J$",   exponent: 2},
    JOD: %{name: "Jordanian Dinar",                                        code: 400, symbol: "JOD",    exponent: 3},
    JPY: %{name: "Yen",                                                    code: 392, symbol: "¥",    exponent: 0},
    KES: %{name: "Kenyan Shilling",                                        code: 404, symbol: "KSh",    exponent: 2},
    KGS: %{name: "Som",                                                    code: 417, symbol: "лв",   exponent: 2},
    KHR: %{name: "Riel",                                                   code: 116, symbol: "៛",    exponent: 2},
    KMF: %{name: "Comoro Franc",                                           code: 174, symbol: "CF",    exponent: 0},
    KPW: %{name: "North Korean Won",                                       code: 408, symbol: "₩",    exponent: 2},
    KRW: %{name: "Won",                                                    code: 410, symbol: "₩",    exponent: 0},
    KWD: %{name: "Kuwaiti Dinar",                                          code: 414, symbol: "د.ك",    exponent: 3},
    KYD: %{name: "Cayman Islands Dollar",                                  code: 136, symbol: "$",    exponent: 2},
    KZT: %{name: "Tenge",                                                  code: 398, symbol: "лв",   exponent: 2},
    LAK: %{name: "Kip",                                                    code: 418, symbol: "₭",    exponent: 2},
    LBP: %{name: "Lebanese Pound",                                         code: 422, symbol: "£",    exponent: 2},
    LKR: %{name: "Sri Lanka Rupee",                                        code: 144, symbol: "₨",    exponent: 2},
    LRD: %{name: "Liberian Dollar",                                        code: 430, symbol: "$",    exponent: 2},
    LSL: %{name: "Rand Loti",                                              code: 426, symbol: " ",    exponent: 2},
    LTL: %{name: "Lithuanian Litas",                                       code: 440, symbol: "Lt",   exponent: 2},
    LVL: %{name: "Latvian Lats",                                           code: 428, symbol: "Ls",   exponent: 2},
    LYD: %{name: "Libyan Dinar",                                           code: 434, symbol: "ل.د",    exponent: 3},
    MAD: %{name: "Moroccan Dirham",                                        code: 504, symbol: "د.م.",    exponent: 2},
    MDL: %{name: "Moldovan Leu",                                           code: 498, symbol: "MDL",    exponent: 2},
    MGA: %{name: "Malagasy Ariary",                                        code: 969, symbol: "Ar",    exponent: 2},
    MKD: %{name: "Denar",                                                  code: 807, symbol: "ден",  exponent: 2},
    MMK: %{name: "Kyat",                                                   code: 104, symbol: "K",    exponent: 2},
    MNT: %{name: "Tugrik",                                                 code: 496, symbol: "₮",    exponent: 2},
    MOP: %{name: "Pataca",                                                 code: 446, symbol: "MOP$",    exponent: 2},
    MRO: %{name: "Ouguiya",                                                code: 478, symbol: "UM",    exponent: 2},
    MUR: %{name: "Mauritius Rupee",                                        code: 480, symbol: "₨",    exponent: 2},
    MVR: %{name: "Rufiyaa",                                                code: 462, symbol: "Rf",    exponent: 2},
    MWK: %{name: "Kwacha",                                                 code: 454, symbol: "MK",    exponent: 2},
    MXN: %{name: "Mexican Peso",                                           code: 484, symbol: "$",    exponent: 2},
    MXV: %{name: "Mexican Peso Mexican Unidad de Inversion (UDI)",         code: 979, symbol: "UDI",  exponent: 2},
    MYR: %{name: "Malaysian Ringgit",                                      code: 458, symbol: "RM",   exponent: 2},
    MZN: %{name: "Metical",                                                code: 943, symbol: "MT",   exponent: 2},
    NAD: %{name: "Rand Namibia Dollar",                                    code: 516, symbol: "$",    exponent: 2},
    NGN: %{name: "Naira",                                                  code: 566, symbol: "₦",    exponent: 2},
    NIO: %{name: "Cordoba Oro",                                            code: 558, symbol: "C$",   exponent: 2},
    NOK: %{name: "Norwegian Krone",                                        code: 578, symbol: "kr",   exponent: 2},
    NPR: %{name: "Nepalese Rupee",                                         code: 524, symbol: "₨",    exponent: 2},
    NZD: %{name: "New Zealand Dollar",                                     code: 554, symbol: "$",    exponent: 2},
    OMR: %{name: "Rial Omani",                                             code: 512, symbol: "﷼",    exponent: 3},
    PAB: %{name: "Balboa US Dollar",                                       code: 590, symbol: "B/.",  exponent: 2},
    PEN: %{name: "Nuevo Sol",                                              code: 604, symbol: "S/.",  exponent: 2},
    PGK: %{name: "Kina",                                                   code: 598, symbol: "K",    exponent: 2},
    PHP: %{name: "Philippine Peso",                                        code: 608, symbol: "Php",  exponent: 2},
    PKR: %{name: "Pakistan Rupee",                                         code: 586, symbol: "₨",    exponent: 2},
    PLN: %{name: "Zloty",                                                  code: 985, symbol: "zł",   exponent: 2},
    PYG: %{name: "Guarani",                                                code: 600, symbol: "Gs",   exponent: 0},
    QAR: %{name: "Qatari Rial",                                            code: 634, symbol: "﷼",    exponent: 2},
    RON: %{name: "New Leu",                                                code: 946, symbol: "lei",  exponent: 2},
    RSD: %{name: "Serbian Dinar",                                          code: 941, symbol: "Дин.", exponent: 2},
    RUB: %{name: "Russian Ruble",                                          code: 643, symbol: "₽",    exponent: 2},
    RWF: %{name: "Rwanda Franc",                                           code: 646, symbol: " ",    exponent: 0},
    SAR: %{name: "Saudi Riyal",                                            code: 682, symbol: "﷼",    exponent: 2},
    SBD: %{name: "Solomon Islands Dollar",                                 code: 090, symbol: "$",    exponent: 2},
    SCR: %{name: "Seychelles Rupee",                                       code: 690, symbol: "₨",    exponent: 2},
    SDG: %{name: "Sudanese Pound",                                         code: 938, symbol: "SDG",    exponent: 2},
    SEK: %{name: "Swedish Krona",                                          code: 752, symbol: "kr",   exponent: 2},
    SGD: %{name: "Singapore Dollar",                                       code: 702, symbol: "$",    exponent: 2},
    SHP: %{name: "Saint Helena Pound",                                     code: 654, symbol: "£",    exponent: 2},
    SLL: %{name: "Leone",                                                  code: 694, symbol: "Le",    exponent: 2},
    SOS: %{name: "Somali Shilling",                                        code: 706, symbol: "S",    exponent: 2},
    SRD: %{name: "Surinam Dollar",                                         code: 968, symbol: "$",    exponent: 2},
    STD: %{name: "Dobra",                                                  code: 678, symbol: "Db",    exponent: 2},
    SVC: %{name: "El Salvador Colon US Dollar",                            code: 222, symbol: "$",    exponent: 2},
    SYP: %{name: "Syrian Pound",                                           code: 760, symbol: "£",    exponent: 2},
    SZL: %{name: "Lilangeni",                                              code: 748, symbol: "E",    exponent: 2},
    THB: %{name: "Baht",                                                   code: 764, symbol: "฿",    exponent: 2},
    TJS: %{name: "Somoni",                                                 code: 972, symbol: " ",    exponent: 2},
    TMT: %{name: "Manat",                                                  code: 934, symbol: "₼",    exponent: 2},
    TND: %{name: "Tunisian Dinar",                                         code: 788, symbol: "د.ت",    exponent: 2},
    TOP: %{name: "Pa'anga",                                                code: 776, symbol: "T$",    exponent: 2},
    TRY: %{name: "Turkish Lira",                                           code: 949, symbol: "TL",   exponent: 2},
    TTD: %{name: "Trinidad and Tobago Dollar",                             code: 780, symbol: "TT$",  exponent: 2},
    TWD: %{name: "New Taiwan Dollar",                                      code: 901, symbol: "NT$",  exponent: 2},
    TZS: %{name: "Tanzanian Shilling",                                     code: 834, symbol: "Tsh",    exponent: 2},
    UAH: %{name: "Hryvnia",                                                code: 980, symbol: "₴",    exponent: 2},
    UGX: %{name: "Uganda Shilling",                                        code: 800, symbol: "Ush",    exponent: 0},
    USD: %{name: "US Dollar",                                              code: 840, symbol: "$",    exponent: 2},
    UYI: %{name: "Peso Uruguayo Uruguay Peso en Unidades Indexadas",       code: 940, symbol: "$U",   exponent: 0},
    UYU: %{name: "Peso Uruguayo Uruguay Peso en Unidades Indexadas",       code: 858, symbol: "$U",   exponent: 2},
    UZS: %{name: "Uzbekistan Sum",                                         code: 860, symbol: "лв",   exponent: 2},
    VEF: %{name: "Bolivar Fuerte",                                         code: 937, symbol: "Bs",   exponent: 2},
    VND: %{name: "Dong",                                                   code: 704, symbol: "₫",    exponent: 0},
    VUV: %{name: "Vatu",                                                   code: 548, symbol: "VT",    exponent: 0},
    WST: %{name: "Tala",                                                   code: 882, symbol: "WS$",    exponent: 2},
    XAF: %{name: "CFA Franc BEAC",                                         code: 950, symbol: "FCFA",    exponent: 0},
    XAG: %{name: "Silver",                                                 code: 961, symbol: " ",    exponent: 2},
    XAU: %{name: "Gold",                                                   code: 959, symbol: " ",    exponent: 2},
    XBA: %{name: "Bond Markets Units European Composite Unit (EURCO)",     code: 955, symbol: " ",    exponent: 2},
    XBB: %{name: "European Monetary Unit (E.M.U.-6)",                      code: 956, symbol: " ",    exponent: 2},
    XBC: %{name: "European Unit of Account 9(E.U.A.-9)",                   code: 957, symbol: " ",    exponent: 2},
    XBD: %{name: "European Unit of Account 17(E.U.A.-17)",                 code: 958, symbol: " ",    exponent: 2},
    XCD: %{name: "East Caribbean Dollar",                                  code: 951, symbol: "$",    exponent: 2},
    XDR: %{name: "SDR",                                                    code: 960, symbol: " ",    exponent: 2},
    XFU: %{name: "UIC-Franc",                                              code: nil, symbol: " ",    exponent: 2},
    XOF: %{name: "CFA Franc BCEAO",                                        code: 952, symbol: " ",    exponent: 0},
    XPD: %{name: "Palladium",                                              code: 964, symbol: " ",    exponent: 2},
    XPF: %{name: "CFP Franc",                                              code: 953, symbol: " ",    exponent: 0},
    XPT: %{name: "Platinum",                                               code: 962, symbol: " ",    exponent: 2},
    XTS: %{name: "Codes specifically reserved for testing purposes",       code: 963, symbol: " ",    exponent: 2},
    YER: %{name: "Yemeni Rial",                                            code: 886, symbol: "﷼",    exponent: 2},
    ZAR: %{name: "Rand",                                                   code: 710, symbol: "R",    exponent: 2},
    ZMK: %{name: "Zambian Kwacha",                                         code: 894, symbol: "ZK",    exponent: 2},
    ZWL: %{name: "Zimbabwe Dollar",                                        code: 932, symbol: "$",    exponent: 2}
  }

  alias DesafioStone.Currency


  @spec to_atom(Currency.t | String.t | atom) :: atom
  @doc """
  Retorna o atom da string, ou da struct Currency dada.
  Um ArgumentError é retornado caso a moeda não exista.
  ## Example:
      iex> DesafioStone.CurrencyData.to_atom("brl")
      :BRL
      iex> DesafioStone.CurrencyData.to_atom(:WRONG)
      ** (ArgumentError) currency WRONG doesn’t exist
  """
  def to_atom(%Currency{currency: currency}),
    do: to_atom(currency)
  def to_atom(currency) do
    currency = binary_currency_to_atom(currency)
    get!(currency)
    currency
  end

  @spec get(Currency.t | String.t | atom) :: map | nil
  @doc """
  Retorna um map com o nome e o símbolo da moeda ou nil, caso não exista.
  ## Example:
      iex> DesafioStone.CurrencyData.get(:BRL)
      %{name: "Brazilian Real", symbol: "R$", exponent: 2}
      iex> DesafioStone.CurrencyData.get(:WRONG)
      nil
  """
  def get(%Currency{currency: currency}),
    do: get(currency)
  def get(currency),
    do: @currencies[binary_currency_to_atom(currency)]

  @spec get!(Currency.t | String.t | atom) :: map
  @doc """
  Retorna um map com o nome e o símbolo da moeda.
  Além disso, retorna um ArgumentError se o moeda não existir.
  ## Example:
      iex> DesafioStone.CurrencyData.get!(:BRL)
      %{name: "Brazilian Real", symbol: "R$", exponent: 2}
      iex> DesafioStone.CurrencyData.get!(:WRONG)
      ** (ArgumentError) currency WRONG doesn’t exist
  """
  def get!(currency),
    do: get(currency) || currency_doesnt_exist_error(currency)
    
  defp binary_currency_to_atom(currency) when is_binary(currency) do
    try do
      currency |> String.upcase() |> String.to_existing_atom() |> binary_currency_to_atom()
    rescue
      _ -> nil
    end
  end

  defp binary_currency_to_atom(currency), do: currency
  defp currency_doesnt_exist_error(currency),
    do: raise ArgumentError, "currency #{currency} doesn’t exist"
end