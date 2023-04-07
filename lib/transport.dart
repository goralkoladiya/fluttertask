class transport {
  String? transportEventTypeCode;
  String? transportEventId;
  String? eventCreatedDatetime;
  String? eventClassifierCode;
  String? eventDatetime;
  dynamic delayReason;
  bool? changeRemark;
  String? transportCallId;
  bool? carrierServiceCode;
  String? carrierVoyageNumber;
  String? unLocationCode;
  String? modeOfTransportCode;
  String? vesselImoNumber;
  String? vesselName;
  String? vesselOperatorCarrierCode;
  String? vesselOperatorCarrierCodeListProvider;
  String? containerId;
  String? eventType;
  String? eventDescription;
  String? locode;
  String? locationName;
  String? country;
  String? timezone;
  String? latitude;
  String? longitude;
  String? location;

  transport(
      {this.transportEventTypeCode,
        this.transportEventId,
        this.eventCreatedDatetime,
        this.eventClassifierCode,
        this.eventDatetime,
        this.delayReason,
        this.changeRemark,
        this.transportCallId,
        this.carrierServiceCode,
        this.carrierVoyageNumber,
        this.unLocationCode,
        this.modeOfTransportCode,
        this.vesselImoNumber,
        this.vesselName,
        this.vesselOperatorCarrierCode,
        this.vesselOperatorCarrierCodeListProvider,
        this.containerId,
        this.eventType,
        this.eventDescription,
        this.locode,
        this.locationName,
        this.country,
        this.timezone,
        this.latitude,
        this.longitude,
        this.location});

  transport.fromJson(Map<String, dynamic> json) {
    transportEventTypeCode = json['transport_event_type_code'];
    transportEventId = json['transport_event_id'];
    eventCreatedDatetime = json['event_created_datetime'];
    eventClassifierCode = json['event_classifier_code'];
    eventDatetime = json['event_datetime'];
    delayReason = json['delay_reason'];
    changeRemark = json['change_remark'];
    transportCallId = json['transport_call_id'];
    carrierServiceCode = json['carrier_service_code'];
    carrierVoyageNumber = json['carrier_voyage_number'];
    unLocationCode = json['un_location_code'];
    modeOfTransportCode = json['mode_of_transport_code'];
    vesselImoNumber = json['vessel_imo_number'];
    vesselName = json['vessel_name'];
    vesselOperatorCarrierCode = json['vessel_operator_carrier_code'];
    vesselOperatorCarrierCodeListProvider =
    json['vessel_operator_carrier_code_list_provider'];
    containerId = json['container_id'];
    eventType = json['event_type'];
    eventDescription = json['event_description'];
    locode = json['locode'];
    locationName = json['location_name'];
    country = json['country'];
    timezone = json['timezone'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['transport_event_type_code'] = this.transportEventTypeCode;
    data['transport_event_id'] = this.transportEventId;
    data['event_created_datetime'] = this.eventCreatedDatetime;
    data['event_classifier_code'] = this.eventClassifierCode;
    data['event_datetime'] = this.eventDatetime;
    data['delay_reason'] = this.delayReason;
    data['change_remark'] = this.changeRemark;
    data['transport_call_id'] = this.transportCallId;
    data['carrier_service_code'] = this.carrierServiceCode;
    data['carrier_voyage_number'] = this.carrierVoyageNumber;
    data['un_location_code'] = this.unLocationCode;
    data['mode_of_transport_code'] = this.modeOfTransportCode;
    data['vessel_imo_number'] = this.vesselImoNumber;
    data['vessel_name'] = this.vesselName;
    data['vessel_operator_carrier_code'] = this.vesselOperatorCarrierCode;
    data['vessel_operator_carrier_code_list_provider'] =
        this.vesselOperatorCarrierCodeListProvider;
    data['container_id'] = this.containerId;
    data['event_type'] = this.eventType;
    data['event_description'] = this.eventDescription;
    data['locode'] = this.locode;
    data['location_name'] = this.locationName;
    data['country'] = this.country;
    data['timezone'] = this.timezone;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['location'] = this.location;
    return data;
  }

  @override
  String toString() {
    return 'transport{transportEventTypeCode: $transportEventTypeCode, transportEventId: $transportEventId, eventCreatedDatetime: $eventCreatedDatetime, eventClassifierCode: $eventClassifierCode, eventDatetime: $eventDatetime, delayReason: $delayReason, changeRemark: $changeRemark, transportCallId: $transportCallId, carrierServiceCode: $carrierServiceCode, carrierVoyageNumber: $carrierVoyageNumber, unLocationCode: $unLocationCode, modeOfTransportCode: $modeOfTransportCode, vesselImoNumber: $vesselImoNumber, vesselName: $vesselName, vesselOperatorCarrierCode: $vesselOperatorCarrierCode, vesselOperatorCarrierCodeListProvider: $vesselOperatorCarrierCodeListProvider, containerId: $containerId, eventType: $eventType, eventDescription: $eventDescription, locode: $locode, locationName: $locationName, country: $country, timezone: $timezone, latitude: $latitude, longitude: $longitude, location: $location}';
  }
}