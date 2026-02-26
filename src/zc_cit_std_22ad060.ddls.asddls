@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCIT_STD_22AD060'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_CIT_STD_22AD060
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_CIT_STD_22AD060
  association [1..1] to ZR_CIT_STD_22AD060 as _BaseEntity on $projection.STUDID = _BaseEntity.STUDID
{
  key StudID,
  Name,
  Gender,
  Dob,
  Phone,
  Email,
  Course,
  Department,
  RegDate,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
