import 'dart:convert';

class tblmedicalhistory {
  String id;
  String patientId;
  String bloodPressure;
  String bloodSugar;
  String weight;
  String temperature;
  String medicalPres;
  DateTime creationDate;

  tblmedicalhistory({
    this.id,
    this.patientId,
    this.bloodPressure,
    this.bloodSugar,
    this.weight,
    this.temperature,
    this.medicalPres,
    this.creationDate,
  });

  factory tblmedicalhistory.fromJson(Map<String, dynamic> json) {
    return tblmedicalhistory(
      id: json["ID"],
      patientId: json["PatientID"],
      bloodPressure: json["BloodPressure"],
      bloodSugar: json["BloodSugar"],
      weight: json["Weight"],
      temperature: json["Temperature"],
      medicalPres: json["MedicalPres"],
      creationDate: DateTime.parse(json["CreationDate"]),
    );
  }
}
