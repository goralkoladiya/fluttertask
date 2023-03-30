class event {
  String? equipEventTypeCode;
  String? equipEventId;
  String? eventCreatedDatetime;
  String? eventClassifierCode;
  String? eventDatetime;
  String? transportCall;
  String? equipReference;
  String? isoEquipCode;
  String? emptyIndicatorCode;
  String? eventType;
  String? eventDescription;
  String? locode;
  String? locationName;
  String? country;
  String? timezone;
  String? latitude;
  String? longitude;
  String? eventLocation;

  event(
      {this.equipEventTypeCode,
        this.equipEventId,
        this.eventCreatedDatetime,
        this.eventClassifierCode,
        this.eventDatetime,
        this.transportCall,
        this.equipReference,
        this.isoEquipCode,
        this.emptyIndicatorCode,
        this.eventType,
        this.eventDescription,
        this.locode,
        this.locationName,
        this.country,
        this.timezone,
        this.latitude,
        this.longitude,
        this.eventLocation});

  event.fromJson(Map<String, dynamic> json) {
    equipEventTypeCode = json['equip_event_type_code'];
    equipEventId = json['equip_event_id'];
    eventCreatedDatetime = json['event_created_datetime'];
    eventClassifierCode = json['event_classifier_code'];
    eventDatetime = json['event_datetime'];
    transportCall = json['transport_call'];
    equipReference = json['equip_reference'];
    isoEquipCode = json['iso_equip_code'];
    emptyIndicatorCode = json['empty_indicator_code'];
    eventType = json['event_type'];
    eventDescription = json['event_description'];
    locode = json['locode'];
    locationName = json['location_name'];
    country = json['country'];
    timezone = json['timezone'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    eventLocation = json['event_location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['equip_event_type_code'] = this.equipEventTypeCode;
    data['equip_event_id'] = this.equipEventId;
    data['event_created_datetime'] = this.eventCreatedDatetime;
    data['event_classifier_code'] = this.eventClassifierCode;
    data['event_datetime'] = this.eventDatetime;
    data['transport_call'] = this.transportCall;
    data['equip_reference'] = this.equipReference;
    data['iso_equip_code'] = this.isoEquipCode;
    data['empty_indicator_code'] = this.emptyIndicatorCode;
    data['event_type'] = this.eventType;
    data['event_description'] = this.eventDescription;
    data['locode'] = this.locode;
    data['location_name'] = this.locationName;
    data['country'] = this.country;
    data['timezone'] = this.timezone;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['event_location'] = this.eventLocation;
    return data;
  }
}