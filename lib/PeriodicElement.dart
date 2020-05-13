class PeriodicElement {
  String name;
  String symbol;
  int number;
  int period;
  String category;
  double atomicMass;
  Null color;
  String appearance;
  String phase;
  double melt;
  double boil;
  double density;
  String discoveredBy;
  double molarHeat;
  String source;
  String namedBy;
  String spectralImg;
  String summary;
  int ypos;
  int xpos;
  List<int> shells;
  String electronConfiguration;
  double electronAffinity;
  double electronegativityPauling;
  List<int> ionizationEnergies;

  PeriodicElement(
      {this.name,
        this.symbol,
        this.number,
        this.period,
        this.category,
        this.atomicMass,
        this.color,
        this.appearance,
        this.phase,
        this.melt,
        this.boil,
        this.density,
        this.discoveredBy,
        this.molarHeat,
        this.source,
        this.namedBy,
        this.spectralImg,
        this.summary,
        this.ypos,
        this.xpos,
        this.shells,
        this.electronConfiguration,
        this.electronAffinity,
        this.electronegativityPauling,
        this.ionizationEnergies});

  PeriodicElement.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
    number = json['number'];
    period = json['period'];
    category = json['category'];
    atomicMass = json['atomic_mass'] is int ? json['atomic_mass'].toDouble():json['atomic_mass'];
//    color = json['color'];
    appearance = json['appearance'];
    phase = json['phase'];
//    melt = json['melt'];
//    boil = json['boil'];
    density = json['density'] is int ? json['density'].toDouble() : json['density'] ;
    discoveredBy = json['discovered_by'];
    molarHeat = json['molar_heat'];
    source = json['source'];
    namedBy = json['named_by'];
    spectralImg = json['spectral_img'];
    summary = json['summary'];
    ypos = json['ypos'];
    xpos = json['xpos'];
    shells = json['shells'].cast<int>();
    electronConfiguration = json['electron_configuration'];
//    electronAffinity = json['electron_affinity'];
    electronegativityPauling = json['electronegativity_pauling'];
    ionizationEnergies = json['ionization_energies'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['number'] = this.number;
    data['period'] = this.period;
    data['category'] = this.category;
    data['atomic_mass'] = this.atomicMass;
    data['color'] = this.color;
    data['appearance'] = this.appearance;
    data['phase'] = this.phase;
    data['melt'] = this.melt;
    data['boil'] = this.boil;
    data['density'] = this.density;
    data['discovered_by'] = this.discoveredBy;
    data['molar_heat'] = this.molarHeat;
    data['source'] = this.source;
    data['named_by'] = this.namedBy;
    data['spectral_img'] = this.spectralImg;
    data['summary'] = this.summary;
    data['ypos'] = this.ypos;
    data['xpos'] = this.xpos;
    data['shells'] = this.shells;
    data['electron_configuration'] = this.electronConfiguration;
    data['electron_affinity'] = this.electronAffinity;
    data['electronegativity_pauling'] = this.electronegativityPauling;
    data['ionization_energies'] = this.ionizationEnergies;
    return data;
  }
}
