@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCICIT_DT_LIB_055055'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_CIT_DT_LIB_055055
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_CIT_DT_LIB_055055
  association [1..1] to ZZCIR_CIT_DT_LIB_055055 as _BaseEntity on $projection.BOOKID = _BaseEntity.BOOKID
{
  key BookID,
  BookName,
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
