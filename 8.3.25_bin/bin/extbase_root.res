  �'      ResB             p:     �   �:  �:           IDS_EXTBASE_ERROR_WRONG_NODES IDS_EXTBASE_ERROR_WRONG_RELS IDS_EXTBASE_ERROR_WRONG_SYS IDS_EXTBASE_ERROR_WRONG_EQ_RELS_COL IDS_EXTBASE_ERROR_WRONG_VAR_RELS_COL IDS_EXTBASE_ERROR_WRONG_EQ_NODES_COL IDS_EXTBASE_ERROR_WRONG_FACT_RELS_COL IDS_EXTBASE_ERROR_WRONG_FACT_NODES_COL IDS_EXTBASE_ERROR_WRONG_ROOT_INDEX IDS_EXTBASE_CONNECTEDCOMPONENTSTYPE_WEAKLY IDS_EXTBASE_CONNECTEDCOMPONENTSTYPE_STRONGLY IDS_EXTBASE_CONNECTEDCOMPONENTSTYPE_SPECIAL IDS_TYPE_PRESENTATION_ANALYTICSSYSTEMMANAGER IDS_TYPE_PRESENTATION_ANALYTICSSYSTEMSERVERCONNECTION IDS_TYPE_PRESENTATION_ANALYTICSSYSTEMSCHEMA IDS_ANS_SERVER_COMMUNICATION_ERROR IDS_ANS_SERVER_COMMUNICATION_NOT_SUPPORTED_FILE ans.bsl �  A n a l y t i c s   s y s t e m   s c h e m a   L o w   c o h e s i o n   c o m p o n e n t s   H i g h   c o h e s i o n   c o m p o n e n t s   A n a l y t i c s   s y s t e m   m a n a g e r   C a n n o t   r e a c h   t h e   a n a l y t i c s   s e r v e r .   +�C o n n e c t i o n   w i t h   t h e   a n a l y t i c s   s y s t e m   s e r v e r   6�C a n n o t   c o n n e c t   t o   a n a l y t i c s   s y s t e m   s e r v e r   i n   f i l e   m o d e   9�I n v a l i d   r o o t   v e r t e x   n u m b e r   w h e n   t r y i n g   t o   g e t   g r a p h   d e p t h   H�H i g h   c o h e s i o n   c o m p o n e n t s   t h a t   d o   n o t   r e q u i r e   c o h e s i o n s   w i t h i n   c o m p o n e n t s   ]�N o   d e s c r i p t i o n   o f   t h e   s y s t e m   o f   l i n e a r   e q u a t i o n s   w a s   a d d e d   d u r i n g   t h e   a t t e m p t   t o   c a l c u l a t e   i t   e�I n c o r r e c t   c o l u m n   o f   e q u a t i o n s   i n   n o d e s   d u r i n g   t h e   a t t e m p t   t o   c a l c u l a t e   t h e   s y s t e m   o f   l i n e a r   e q u a t i o n s   e�I n c o r r e c t   c o l u m n   o f   v a r i a b l e s   i n   n o d e s   d u r i n g   t h e   a t t e m p t   t o   c a l c u l a t e   t h e   s y s t e m   o f   l i n e a r   e q u a t i o n s   h�N o d e   d a t a   s o u r c e   i s   s p e c i f i e d   i n c o r r e c t l y   d u r i n g   t h e   a t t e m p t   t o   c a l c u l a t e   t h e   s y s t e m   o f   l i n e a r   e q u a t i o n s   h�I n c o r r e c t   c o l u m n   o f   c o e f f i c i e n t s   i n   n o d e s   d u r i n g   t h e   a t t e m p t   t o   c a l c u l a t e   t h e   s y s t e m   o f   l i n e a r   e q u a t i o n s   i�I n c o r r e c t   c o l u m n   o f   e q u a t i o n s   i n   r e l a t i o n s   d u r i n g   t h e   a t t e m p t   t o   c a l c u l a t e   t h e   s y s t e m   o f   l i n e a r   e q u a t i o n s   l�R e l a t i o n   d a t a   s o u r c e   i s   s p e c i f i e d   i n c o r r e c t l y   d u r i n g   t h e   a t t e m p t   t o   c a l c u l a t e   t h e   s y s t e m   o f   l i n e a r   e q u a t i o n s   l�I n c o r r e c t   c o l u m n   o f   c o e f f i c i e n t s   i n   r e l a t i o n s   d u r i n g   t h e   a t t e m p t   t o   c a l c u l a t e   t h e   s y s t e m   o f   l i n e a r   e q u a t i o n s   ��������}�  ﻿Procedure BackgroundJobEntry(action, respAddress, jsonText) Export
	Var res;
	res = RunAction(action, jsonText);
	if res = Undefined Then
	  Raise "Unknown action: " + action;
	EndIf;
	PutToTempStorage(res, respAddress);
  EndProcedure

  Procedure SendReference(reference)Export
	  currentUserUUID = String(InfoBaseUsers.CurrentUser().UUID);
	  currentUserName = String(InfoBaseUsers.CurrentUser().Name);

	  try
		  Conversation = CollaborationSystem.CreateConversation();
		  Conversation.Displayed = True;
		  Conversation.Key = "AnsMessagesFor" + currentUserUUID;
		  Conversation.Title = "Сообщения от системы аналитики";
		  Conversation.Members.Add(CollaborationSystem.CurrentUserID());
		   Conversation.Write();
	  except // Если было вызвано исключение, значит обсуждение с таким тайтлом уже существовало до этого, поэтому нет смысла показывать сообщение об ошибке.
	  endtry;

	  Conversation = CollaborationSystem.GetConversation("AnsMessagesFor" + currentUserUUID);

	  try // Если юзер вышел из обсуждения -- добавляем его опять
		  Conversation.Members.Add(CollaborationSystem.CurrentUserID());
		   Conversation.Write();
	  except
	  endtry;

	  Message = CollaborationSystem.CreateMessage(Conversation.ID);
	  Message.Text = reference;
	  Message.Write();
  EndProcedure

  Function RunAction(action, jsonText) Export
	Var jsonReader, jsonWriter, inObj, res;

	jsonReader = New JSONReader;
	jsonReader.SetString(jsonText);
	inObj = ReadJSON(jsonReader);
	jsonWriter =  New JSONWriter;
	jsonWriter.SetString(New JSONWriterSettings(, Chars.Tab));

	If action = "query" Then
	  jsonWriter.WriteStartObject();
	  Query(jsonWriter, inObj);
	  jsonWriter.WriteEndObject();
	ElsIf action = "sendref" Then
	  SendReference(inObj.reference);
	ElsIf action = "metainfo" Then
	  res = GetMetaInfo();
	  WriteJSON(jsonWriter, res);
	ElsIf action = "metaobjects" Then
	  jsonWriter.WriteStartObject();
	  GetMetaObjects(jsonWriter, inObj);
	  jsonWriter.WriteEndObject();
	ElsIf action = "depth" Then
	  res = GetObjectDepth(inObj);
	  WriteJSON(jsonWriter, res);
	ElsIf action = "data" Then
	  jsonWriter.WriteStartObject();
	  GetData(jsonWriter, inObj);
	  jsonWriter.WriteEndObject();
	ElsIf action = "rights" Then
	  res = CheckRights(inObj);
	  WriteJSON(jsonWriter, res);
	ElsIf action = "user" Then
	  res = GetUser(inObj);
	  WriteJSON(jsonWriter, res);
	ElsIf action = "version" Then
      res = GetVersions();
	  WriteJSON(jsonWriter, res);
	Else
	  Return Undefined;
  EndIf;
	jsonReader.Close();
	return jsonWriter.Close();
  EndFunction

  Function CheckRights(inObj)
	Var res, accessRightsToCheck, right;

	res = New Structure;
	res.Insert("accessRights", new Array);
	If inObj.Property("accessRights", accessRightsToCheck) Then
	  For Each right in accessRightsToCheck Do
		If AccessRight(right, Metadata) Then
		  res.accessRights.Add(right);
		EndIf;
	  EndDo;
	EndIf;
	return res;
  EndFunction

  Function GetUser(inObj)
	Var res;

	res = New Structure;
	res.Insert("username", InfoBaseUsers.CurrentUser().Name);
	res.Insert("fullName", InfoBaseUsers.CurrentUser().FullName);
	res.Insert("osUser", InfoBaseUsers.CurrentUser().OSUser);
	Попытка
		Выполнить("res.Insert(""email"", InfoBaseUsers.CurrentUser().Email);");
	Исключение
	КонецПопытки;
	Попытка
		Выполнить("res.Insert(""matchingKey"", InfoBaseUsers.CurrentUser().UserMatchingKeys);");
	Исключение
	КонецПопытки;
	res.Insert("id", String(InfoBaseUsers.CurrentUser().UUID));
	return res;
  EndFunction

  Function GetObjectDepth(inObj)
	Var objName, tempTables, q, selection, depth, res;
	objName = inObj.objectName;

	tempTables = New TempTablesManager;
	q = New Query;
	q.TempTablesManager = tempTables;
	q.Text = "SELECT DISTINCT Ref.Parent AS Ancestor INTO Level0 From "+objName+" WHERE NOT Ref.Parent = VALUE("+objName+".EmptyRef); SELECT True FROM Level0";
	selection = q.Execute().Select();

	depth = 0;

	While selection.Next() Do
	  depth = depth + 1;
	  q = New Query;
	  q.TempTablesManager = tempTables;
	  q.Text = "SELECT DISTINCT Ancestor.Parent AS Ancestor INTO Level"+depth+" FROM Level"+(depth - 1)+" WHERE NOT Ancestor.Parent = Value("+objName+".EmptyRef); SELECT True From Level"+depth;
	  selection = q.Execute().Select();
	  If Depth > 50 Then
		  Break;
	  EndIf;
	EndDo;

	res = New Structure;
	res.Insert("depth", depth+1);
	return res;
  EndFunction

  Function GetMetaInfo() Export
	Var res, conf, metadataName, count, locale;
	res = new Structure;
	res.Insert("version", "0.1");
	conf = new Structure;
	res.Insert("configuration", conf);
	conf.Insert("name", Metadata.Name);
	conf.Insert("synonym", Metadata.Synonym);
	conf.Insert("version", Metadata.Version);
	locale = ?(String(Metadata.ScriptVariant) = "English", "en", "ru");
	conf.Insert("locale", locale);
	count = 0;
	For Each metadataName In metadataNames() Do
	  count = count + MetadataCollectionByName(metadataName).Count();
	EndDo;
	res.Insert("count", count);
	return res;
  EndFunction

  Function GetVersions()
	  Var versions;
	  versions = new Structure;

	  sysInfo = New SystemInfo;
	  versions.Insert("platformVersion", sysInfo.AppVersion);

	  // Должна совпадать с версией адаптера
	  versions.Insert("adapterVersion", "1.0");

	  versions.Insert("configurationName", Metadata.Name);
	  versions.Insert("configurationVersion", Metadata.Version);
	  versions.Insert("isECSRegistered", CollaborationSystem.CanUse());

	  return versions;
  EndFunction

  Procedure GetMetaObjects(json, inObj) Export
	Var metadataName, oneMetadata, start, end, count;

	// query
	start = inObj.start;
	end = inObj.end;

	count = -1;
	For Each metadataName In metadataNames() Do
	  json.WritePropertyName(metadataName);
	  json.WriteStartArray();
	  For Each oneMetadata In MetadataCollectionByName(metadataName) Do
		count = count + 1;
		If count < start Then
		  Continue;
		EndIf;
		if count >= end Then
		  Break;
		EndIf;
		json.WriteStartObject();
		WriteCommonMetadataInfo(json, oneMetadata);
		WriteHighLevelObject(json, oneMetadata, metadataName);
		json.WriteEndObject();
	  EndDo;
	  json.WriteEndArray();
	EndDo;
  EndProcedure

  Function metadataNames()
	Return StrSplit(
	"AccountingRegisters,AccumulationRegisters,InformationRegisters,CalculationRegisters,Catalogs,Documents,ChartsOfAccounts,ChartsOfCalculationTypes,ChartsOfCharacteristicTypes,BusinessProcesses,ExternalDataSources,DocumentJournals,Tasks,Enums,ExchangePlans,CommonAttributes",
	",");
  EndFunction

  Function MetadataCollectionByName(MetadataTypeName)
	If MetadataTypeName = "AccountingRegisters" Then
	  Return Metadata.AccountingRegisters;
	ElsIf MetadataTypeName = "AccumulationRegisters" Then
	  Return Metadata.AccumulationRegisters;
	ElsIf MetadataTypeName = "InformationRegisters" Then
	  Return Metadata.InformationRegisters;
	ElsIf MetadataTypeName = "CalculationRegisters" Then
	  Return Metadata.CalculationRegisters;
	ElsIf MetadataTypeName = "Catalogs" Then
	  Return Metadata.Catalogs;
	ElsIf MetadataTypeName = "Documents" Then
	  Return Metadata.Documents;
	ElsIf MetadataTypeName = "ChartsOfAccounts" Then
	  Return Metadata.ChartsOfAccounts;
	ElsIf MetadataTypeName = "ChartsOfCalculationTypes" Then
	  Return Metadata.ChartsOfCalculationTypes;
	ElsIf MetadataTypeName = "ChartsOfCharacteristicTypes" Then
	  Return Metadata.ChartsOfCharacteristicTypes;
	ElsIf MetadataTypeName = "BusinessProcesses" Then
	  Return Metadata.BusinessProcesses;
	ElsIf MetadataTypeName = "ExternalDataSources" Then
	  Return Metadata.ExternalDataSources;
	ElsIf MetadataTypeName = "DocumentJournals" Then
	  Return Metadata.DocumentJournals;
	ElsIf MetadataTypeName = "Tasks" Then
	  Return Metadata.Tasks;
	ElsIf MetadataTypeName = "Enums" Then
	  Return Metadata.Enums;
	ElsIf MetadataTypeName = "ExchangePlans" Then
	  Return Metadata.ExchangePlans;
	ElsIf MetadataTypeName = "CommonAttributes" Then
	  Return Metadata.CommonAttributes;
	EndIf;
	Raise "Unsupport metadata type: " + MetadataTypeName;
  EndFunction

  Procedure WriteCommonMetadataInfo(json, oneMetadata)
	json.WritePropertyName("name");
	json.WriteValue(oneMetadata.name);
	If oneMetadata.synonym <> "" Then
	  json.WritePropertyName("synonym");
	  json.WriteValue(oneMetadata.synonym);
	EndIf;
  EndProcedure

  Procedure WriteTypedMetadata(json, oneMetadata)
	json.WritePropertyName("type");
	t = oneMetadata.Type;

	If t.Types().Count() <> 1 Then
	  json.WriteStartArray();
	EndIf;
	For Each tp In t.Types() Do
	  tpName = TypeToStr(tp);

	  if tpName = "dateTime" Then
		tpName = "date:datetime";
		if t.DateQualifiers = DateFractions.Date Then
		  tpName = "date:date";
		ElsIf t.DateQualifiers = DateFractions.Time Then
		  tpName = "date:time";
		EndIf;
	  ElsIf tpName = "decimal" Then
		tpName = "number:" + String(t.NumberQualifiers.Digits)
		+ ":" + String(t.NumberQualifiers.FractionDigits)
		+ ":" + ?(t.NumberQualifiers.AllowedSign = AllowedSign.Any, "", "+");
	  ElsIf tpName = "string" Then
		tpName = tpName + ":" + t.StringQualifiers.Length;
	  EndIf;
	  json.WriteValue(tpName);
	EndDo;
	If t.Types().Count() <> 1 Then
	  json.WriteEndArray();
	EndIf;
  EndProcedure

  Procedure WriteHighLevelObject(json, oneMetadata, tn)
	Var subsystem;
	json.WritePropertyName("fullName");
	json.WriteValue(oneMetadata.FullName());
	If tn <> "CommonAttributes" Then
	  json.WritePropertyName("subsystems");
	  json.WriteStartArray();

	  For Each subsystem in Metadata.Subsystems Do
		If subsystem.Content.Contains(oneMetadata) Then
		  json.WriteValue(subsystem.name);
		EndIf;
	  EndDo;
	  json.WriteEndArray();
	EndIf;

	If tn = "AccumulationRegisters" Then
	  json.WritePropertyName("registerType");
	  If oneMetadata.RegisterType = Metadata.ObjectProperties.AccumulationRegisterType.Balance Then
		json.WriteValue("balance");
	  ElsIf oneMetadata.RegisterType = Metadata.ObjectProperties.AccumulationRegisterType.Turnovers Then
		json.WriteValue("turnovers");
	  Else
		Raise "Unknown RegisterType " + String(oneMetadata.RegisterType);
	  EndIf;
	EndIf;
	If tn = "Catalogs" Or tn = "ChartOfCharacteristicTypes" Then
	  json.WritePropertyName("hierarchical");
	  json.WriteValue(oneMetadata.Hierarchical);
	EndIf;
	If TypeIn(tn,"Catalogs","Documents","ChartsOfAccounts","ChartsOfCalculationTypes",
	  "ChartsOfCharacteristicTypes", "BusinessProcesses","Tasks","Enums",
	  "ExchangePlans","ExternalDataSource.Tables") Then
	  WriteCharacteristics(json, oneMetadata);
	EndIf;

	If TypeIn(tn,"Catalogs","ChartsOfAccounts","ChartsOfCalculationTypes",
	  "ChartsOfCharacteristicTypes","Tasks","ExchangePlans") Then
	  json.WritePropertyName("defaultPresentation"); // java represenation

	  If String(oneMetadata.DefaultPresentation)="ВВидеНаименования" Or String(oneMetadata.DefaultPresentation)="AsDescription" Then
		json.WriteValue("AsDescription");	// java Наименование
	  ElsIf String(oneMetadata.DefaultPresentation)="ВВидеКода" Or String(oneMetadata.DefaultPresentation)="AsCode" Then
		json.WriteValue("AsCode");	// java Код
	  ElsIf String(oneMetadata.DefaultPresentation)="ВВидеНомера" Or String(oneMetadata.DefaultPresentation)="AsNumber" Then
		json.WriteValue("AsNumber");
	  Else
		Raise "Unknown defaultPresentation " + String(oneMetadata.DefaultPresentation);
	  EndIf;
	EndIf;

	If tn = "DocumentJournals" Then
	  WriteJournalColumns(json, oneMetadata);
	ElsIf tn = "Enums" Then
	  WriteEnum(json, oneMetadata);
	ElsIf tn = "ExternalDataSources" Then
	  If oneMetadata.Tables.Count() > 0 Then
		WriteExternalDataSourceTables(json, oneMetadata.Tables);
	  EndIf;
	ElsIf tn = "ExternalDataSources.Tables" Then
	  WriteTypedAttrs(json, oneMetadata.Fields, "fields");
	  json.WritePropertyName("tableDataType");
	  If oneMetadata.TableDataType = Metadata.ObjectProperties.ExternalDataSourceTableDataType.ObjectData Then
		json.WriteValue("ObjectData");
	  Else
		json.WriteValue("NonobjectData");
	  EndIf;
	  json.WritePropertyName("keyFields");
	  json.WriteStartArray();
	  For Each k in oneMetadata.keyFields Do
		json.WriteValue(k.Name);
	  EndDo;
	  json.WriteEndArray();
	ElsIf tn = "CommonAttributes" Then
	  WriteCommonAttribute(json, oneMetadata);
	Else
	  WriteTypedAttrs(json, oneMetadata.Attributes, "attributes");
	EndIf;
	If Not(TypeIn(tn, "ExternalDataSources", "ExternalDataSources.Tables", "CommonAttributes")) Then
	  WriteTypedAttrs(json, oneMetadata.StandardAttributes, "standardAttributes");
	EndIf;
	If TypeIn(tn, "AccountingRegisters", "AccumulationRegisters", "InformationRegisters",
	  "CalculationRegisters", "CalculationRegisters.Recalculations", "ExternalDataSources.Cubes") Then
	  WriteTypedAttrs(json, oneMetadata.Dimensions, "dimensions");
	EndIf;
	If TypeIn(tn, "AccountingRegisters", "AccumulationRegisters", "InformationRegisters",
	  "CalculationRegisters", "ExternalDataSources.Cubes") Then
	  WriteTypedAttrs(json, oneMetadata.Resources, "resources");
	EndIf;

	If TypeIn(tn,"Catalogs","Documents","ChartsOfAccounts","ChartsOfCalculationTypes",
	  "ChartsOfCharacteristicTypes", "BusinessProcesses","Tasks",
	  "ExchangePlans") Then
	  json.WritePropertyName("objectPresentation");
	  json.WriteValue(oneMetadata.objectPresentation);
	  WriteTabularSections(json, oneMetadata);
	EndIf;
  EndProcedure

  Procedure WriteCommonAttribute(json, ca)
	WriteTypedMetadata(json, ca);
	If ca.DataSeparation = Metadata.ObjectProperties.CommonAttributeDataSeparation.Separate Then
	  json.WritePropertyName("separatedDataUse");
	  If ca.SeparatedDataUse = Metadata.ObjectProperties.CommonAttributeSeparatedDataUse.IndependentlyAndSimultaneously Then
		json.WriteValue("IndependentlyAndSimultaneously");
	  Else
		json.WriteValue("Independently");
	  EndIf;
	EndIf;
	json.WritePropertyName("autoUse");
	If ca.AutoUse = Metadata.ObjectProperties.CommonAttributeAutoUse.Use Then
	  json.WriteValue(True);
	Else
	  json.WriteValue(False);
	EndIf;

	// content is inversed - contains values which not autoUse
	json.WritePropertyName("content");
	json.WriteStartArray();
	For Each el in ca.Content Do
	  If (el.Use = Metadata.ObjectProperties.CommonAttributeUse.Use
		 And ca.AutoUse = Metadata.ObjectProperties.CommonAttributeAutoUse.DontUse)
		 Or
		 (el.Use = Metadata.ObjectProperties.CommonAttributeUse.DontUse
		 And ca.AutoUse = Metadata.ObjectProperties.CommonAttributeAutoUse.Use) Then
		  json.WriteValue(el.Metadata.FullName());
	  EndIf;
	EndDo;
	json.writeEndArray();
  EndProcedure

  Procedure WriteExternalDataSourceTables(json, tables)
	json.WritePropertyName("tables");
	json.WriteStartArray();
	For Each oneMetadata In tables Do
	  json.WriteStartObject();
	  WriteCommonMetadataInfo(json, oneMetadata);
	  WriteHighLevelObject(json, oneMetadata, "ExternalDataSources.Tables");
	  json.WriteEndObject();
	EndDo;
	json.WriteEndArray();
  EndProcedure

  Procedure WriteTypedAttrs(json, attrs, name)
	json.writePropertyName(name);
	json.writeStartArray();
	For Each attr In attrs Do
	  json.WriteStartObject();
	  WriteCommonMetadataInfo(json, attr);
	  WriteTypedMetadata(json, attr);
	  json.WriteEndObject();
	EndDo;
	json.writeEndArray();
  EndProcedure

  Function TypeIn(t, t1, t2, t3=Undefined, t4=Undefined, t5=Undefined, t6=Undefined, t7=Undefined, t8=Undefined, t9=Undefined, t10=Undefined)
	Return t=t1 Or t=t2 Or t=t3 Or t=t4 Or t=t5 Or t=t6 Or t=t7 or t=t8 or t=t9 or t=t10;
  EndFunction

  Procedure WriteTabularSections(json, oneMetadata)
	If oneMetadata.TabularSections.Count() = 0 Then
	  Return;
	EndIf;
	json.WritePropertyName("tabularSections");
	json.WriteStartArray();
	For Each tabSection In oneMetadata.TabularSections Do
	  json.WriteStartObject();
	  WriteCommonMetadataInfo(json, tabSection);
	  WriteTypedAttrs(json, tabSection.Attributes, "attributes");
	  WriteTypedAttrs(json, tabSection.StandardAttributes, "standardAttributes");
	  json.WriteEndObject();
	EndDo;
	json.WriteEndArray();
  EndProcedure

  Procedure WriteCharacteristics(json, oneMetadata)
	Var valToWrite;
	If oneMetadata.Characteristics.Count() = 0 Then
	  Return;
	EndIf;
	json.WritePropertyName("characteristics");
	json.WriteStartArray();
	For Each charDescr In oneMetadata.Characteristics Do
	  json.WriteStartObject();
	  valToWrite = "";
	  Try
		valToWrite = charDescr.CharacteristicTypes.FullName();
	  Except
	  EndTry;

	  json.WritePropertyName("characteristicTypes");  // java namesTable СтрЗаменить(Характеристика.ВидыХарактеристик.ПолноеИмя(), ".ТабличнаяЧасть.", "."));
	  json.WriteValue(valToWrite);

	  json.WritePropertyName("characteristicValues");  // java "valuesTable"); СтрЗаменить(Характеристика.ЗначенияХарактеристик.ПолноеИмя(), ".ТабличнаяЧасть.", "."));
	  valToWrite = "";
	  Try
		valToWrite = charDescr.CharacteristicValues.FullName();
	  Except
	  EndTry;

	  json.WriteValue(valToWrite);

	  If charDescr.TypesFilterField <> Undefined Then
		json.WritePropertyName("typesFilterField");	// java namesFilterField
		json.WriteValue(charDescr.TypesFilterField.Name);
	  EndIf;

	  json.WritePropertyName("typesFilterValueType");	// java typesFilterValue
	  json.WriteValue(TypeToStr(TypeOf(charDescr.TypesFilterValue)));

	  json.WritePropertyName("typesFilterValue");	// java typesFilterValue
	  json.WriteValue(String(charDescr.TypesFilterValue));

	  If charDescr.KeyField <> Undefined Then
		json.WritePropertyName("keyField");	// java namesNameField
		json.WriteValue(charDescr.KeyField.Name);
	  EndIf;

	  If charDescr.TypeField <> Undefined Then
		json.WritePropertyName("typeField");	// java valuesNameField
		json.WriteValue(charDescr.TypeField.Name);
	  EndIf;

	  If charDescr.ValueField <> Undefined Then
		json.WritePropertyName("valueField");	// java valuesValueField
		json.WriteValue(charDescr.ValueField.Name);
	  EndIf;

	  If charDescr.ObjectField <> Undefined Then
		json.WritePropertyName("objectField");	// java valuesOwnerField
		json.WriteValue(charDescr.ObjectField.Name);
	  EndIf;

	  json.WriteEndObject();
	EndDo;
	json.WriteEndArray();
  EndProcedure

  Procedure WriteJournalColumns(json, oneMetadata)
	json.WritePropertyName("columns");
	json.WriteStartArray();
	For Each clmn in oneMetadata.Columns Do
	  json.WriteStartObject();
	  WriteCommonMetadataInfo(json, clmn);
	  json.WritePropertyName("types");
	  json.WriteStartArray();
	  For each rf in clmn.References Do
		json.WriteValue(String(rf.Type));
	  EndDo;
	  json.WriteEndArray();
	  json.WriteEndObject();
	EndDo;
	json.WriteEndArray();
  EndProcedure

  Procedure WriteEnum(json, oneMetadata)
	json.WritePropertyName("enumValues");
	json.WriteStartArray();
	For Each ev in oneMetadata.EnumValues Do
	  json.WriteStartObject();
	  WriteCommonMetadataInfo(json, ev);
	  json.WriteEndObject();
	EndDo;
	json.WriteEndArray();
  EndProcedure

  Function TypeToStr(tp) Export
	Var xdt;
	xdt = XDTOSerializer.WriteXDTO(tp);
	return StrSplit(xdt.LexicalValue, "}").Get(1);
  EndFunction

  //Преобразует обьект типа в строку с имененем типа DD
  Функция ИмяТипа(Т)
	МетаТип = Метаданные.НайтиПоТипу(Т);
	Если МетаТип <> Неопределено Тогда
	  Возврат МетаТип.ПолноеИмя();
	Иначе
	  Если Т = Тип("Строка") Тогда
		Возврат "string";
	  ИначеЕсли Т = Тип("Число") Тогда
		Возврат "number";
	  ИначеЕсли Т = Тип("Дата") Тогда
		Возврат "date";
	  ИначеЕсли Т = Тип("Булево") Тогда
		Возврат "boolean";
	  ИначеЕсли Т = Тип("УникальныйИдентификатор") Тогда
		Возврат "uuid";
	  КонецЕсли;
	КонецЕсли;
	Возврат "unknown";
  КонецФункции

  Функция ЭтоСсылочноеЗначение(Знч)
	ТЗ = ТипЗнч(Знч);
	Если Знч = Неопределено Тогда
	  Возврат Ложь;
	КонецЕсли;
	Если ТЗ = Тип("Число") ИЛИ ТЗ = Тип("Строка") ИЛИ ТЗ = Тип("Дата") ИЛИ ТЗ = Тип("Булево") ИЛИ ТЗ = Тип("УникальныйИдентификатор") Тогда
	  Возврат Ложь;
	КонецЕсли;
	Возврат Истина;
  КонецФункции

  Функция ЭтоПримитивныйТип(ИмяТипа)
	Если ИмяТипа = "string" ИЛИ ИмяТипа =  "number" ИЛИ ИмяТипа = "date" ИЛИ ИмяТипа = "boolean" Тогда
	  Возврат Истина;
	КонецЕсли;
	Возврат Ложь;
  КонецФункции

  Функция ЭтоСоставнойТип(ИмяТипа)
	Возврат Найти(ИмяТипа, ",") > 0;
  КонецФункции

  Функция ЗначениеИзСтроки(Значение, ИмяТипа)
	Если ЭтоПримитивныйТип(ИмяТипа) = Ложь ИЛИ ИмяТипа = "string" Тогда
	  Возврат Значение;
	КонецЕсли;

	Если ИмяТипа = "number" Тогда
	  Возврат Число(Значение);
	ИначеЕсли ИмяТипа = "date" Тогда
	  Возврат Дата(Значение);
	ИначеЕсли ИмяТипа = "boolean" Тогда
	  Возврат Булево(Значение);
	КонецЕсли;

  КонецФункции

  //Декодирует base64 - в этой кодировке передаются доп параметры запроса
  Функция Decode(Encoded)
	ДвДанные = Base64Значение(Encoded);
	ВременныйФайл = ПолучитьИмяВременногоФайла();
	ДвДанные.Записать(ВременныйФайл);

	КодировкаФайла = КодировкаТекста.UTF8;
	Чтение = Новый ЧтениеТекста(ВременныйФайл, КодировкаФайла);
	Decoded = Чтение.Прочитать();
	Чтение.Закрыть();
	УдалитьФайлы(ВременныйФайл);
	Возврат Decoded;
  КонецФункции

  // "a,b,c,d" => ["a", "b", "c", "d"]
  Функция РазбитьСтроку(ЦелеваяСтрока, Разделитель, КоличествоПодстрок = -1)
	МассивСтрок = Новый Массив();
	КоличествоДелений = ?(КоличествоПодстрок = -1,СтрДлина(ЦелеваяСтрока),КоличествоПодстрок - 1);
	ОстатокСтроки = ЦелеваяСтрока;
	Для Индекс = 1 По КоличествоДелений Цикл
	  ПозицияРазделителя = Найти(ОстатокСтроки, Разделитель);
	  Если ПозицияРазделителя = 0 Тогда
		Прервать;
	  КонецЕсли;
	  МассивСтрок.Добавить(Лев(ОстатокСтроки,ПозицияРазделителя-1));
	  ОстатокСтроки = Прав(ОстатокСтроки, СтрДлина(ОстатокСтроки) - ПозицияРазделителя);
	КонецЦикла;
	МассивСтрок.Добавить(ОстатокСтроки);
	Возврат МассивСтрок;
  КонецФункции

  Function PlatformVersion()
	Var sysInfo, verStr, index1, index2, index3, numb1, numb2, numb3;
	sysInfo = New SystemInfo;
	verStr = sysInfo.AppVersion;
	index1 = StrFind(verStr, ".");
	index2 = StrFind(verStr, ".",,,2);
	index3 = StrFind(verStr, ".",,,3);
	num1 = Number(Mid(verStr, 1, index1 - 1));
	num2 = Number(Mid(verStr, index1 + 1, index2 - index1 - 1));
	num3 = Number(Mid(verStr, index2 + 1, index3 - index2 - 1));
	Return (num1 * 100 + num2) * 100 + num3;
  EndFunction

  Function IsCopySupported()
	supported = true;
	supported = ?(Metadata.CompatibilityMode = Metadata.ObjectProperties.CompatibilityMode.Version8_3_6, false, supported);
	supported = ?(Metadata.CompatibilityMode = Metadata.ObjectProperties.CompatibilityMode.Version8_3_7, false, supported);
	supported = ?(Metadata.CompatibilityMode = Metadata.ObjectProperties.CompatibilityMode.Version8_3_8, false, supported);
	supported = ?(Metadata.CompatibilityMode = Metadata.ObjectProperties.CompatibilityMode.Version8_3_9, false, supported);
	supported = ?(Metadata.CompatibilityMode = Metadata.ObjectProperties.CompatibilityMode.Version8_3_10, false, supported);
	If PlatformVersion() > 80311 Then
	  Выполнить("supported = ?(Metadata.CompatibilityMode = Metadata.ObjectProperties.CompatibilityMode.Version8_3_11, false, supported);");
	EndIf;
	If PlatformVersion() > 80312 Then
	  Выполнить("supported = ?(Metadata.CompatibilityMode = Metadata.ObjectProperties.CompatibilityMode.Version8_3_12, false, supported);");
	Endif;
	If PlatformVersion() > 80313 Then
	  Выполнить("supported = ?(Metadata.CompatibilityMode = Metadata.ObjectProperties.CompatibilityMode.Version8_3_13, false, supported);");
	Endif;
	If Metadata.CompatibilityMode = Metadata.ObjectProperties.CompatibilityMode.DontUse and PlatformVersion() < 80314 Then
	  supported = false;
	Endif;
	Return supported;
  EndFunction

  //Переводит дату в unixtimestamp
  Function DateToUnixTime(date = Undefined)
	  Return Number(?(TypeOf(date) = Type("Date"), date, CurrentDate()) - Date("19700101"));
  EndFunction

  Function UnixTimeToDate(unixTime = 0)
	  Return Date("19700101") + Число(unixTime);
  EndFunction


  Function RefUniqId(ref)
	Try
	  Return String(ref.UUID());
	Except
	  Try
		  // У внешних источников данных вместо UUID у ссылки нужно использовать Value()
		  Return ref.Value();
	  Except
		  // У перечислений для получения ключа нужно брать ЛексическоеЗначение XDTO
		  return XDTOSerializer.WriteXDTO(ref).LexicalValue;
	  EndTry;
	EndTry;
  EndFunction

  // Выполнение запроса на языке запросов 1с на стороне сервера, сериализация ответа в json
  Функция Query(ЗаписьJSON, inObj) Export
	моментНачалаОбработкиЗапроса = ТекущаяУниверсальнаяДатаВМиллисекундах();
	ТекстЗапроса = Decode(inObj.query);
	Аргументы = inObj.args;

	// Аналитика до версии 1.73 присылает запросы версии 1 при этом метку
	// requestVersion не выставляет, поэтому по умолчанию считаем версию 1
	// Версия запроса может влиять на наличие/отсутствие свойств или их формат
	версияЗапроса = 1;
	Если inObj.Свойство("requestVersion") = Истина Тогда
		версияЗапроса = Число(inObj.requestVersion);
	КонецЕсли;

	Запрос = Новый Запрос();
	Запрос.Текст = ТекстЗапроса;
	Если IsCopySupported() Тогда
	  Выполнить("Запрос.ТребуемаяАктуальностьДанных = ТребуемаяАктуальностьДанных.Актуальные;");
	КонецЕсли;

	КолонкиGUID = Новый Массив();
	КолонкиСтрок = Новый Массив();
	ИзвлечьGUID = Новый Массив();

	Если Аргументы <> Неопределено Тогда
	  АргументыJSON = Новый ЧтениеJSON;
	  АргументыJSON.УстановитьСтроку(Decode(Аргументы));
	  ИмяАргумента = "";
	  Пока АргументыJSON.Прочитать() Цикл
		Если АргументыJSON.ТипТекущегоЗначения = ТипЗначенияJSON.ИмяСвойства Тогда
		  ИмяАргумента = АргументыJSON.ТекущееЗначение;
		ИначеЕсли АргументыJSON.ТипТекущегоЗначения = ТипЗначенияJSON.Строка Тогда
		  Если ИмяАргумента = "guids" Тогда
			КолонкиGUID = РазбитьСтроку(АргументыJSON.ТекущееЗначение , ",");
		  ИначеЕсли ИмяАргумента = "getStrings" Тогда
			КолонкиСтрок = РазбитьСтроку(АргументыJSON.ТекущееЗначение , ",");
		  ИначеЕсли ИмяАргумента = "extractGuids" Тогда
			ИзвлечьGUID = РазбитьСтроку(АргументыJSON.ТекущееЗначение , ",");
		  ИначеЕсли ИмяАргумента = "useCopyDatabase" Тогда
			Попытка
			  Если IsCopySupported() Тогда
				Выполнить("Запрос.ТребуемаяАктуальностьДанных = ТребуемаяАктуальностьДанных.Любые;");
				Выполнить("Запрос.ТребуемоеВремяАктуальностиДанных = 60*60*24*30;");
			  КонецЕсли;
			Исключение
			  Ошибка = ОписаниеОшибки();
			КонецПопытки
		Иначе
			ПутьGUID = РазбитьСтроку(АргументыJSON.ТекущееЗначение, ":", 2);
			ТипGUID = ПутьGUID[0];
			GUID = ?(ПутьGUID.Количество() = 2, ПутьGUID[1], ПутьGUID[0]);
			ПутьТипа = РазбитьСтроку(ТипGUID, ".");
			текПарам = Неопределено;

			// Без этого наблюдалась ошибка при работе с примитивными данными составных типов
			Если ЭтоПримитивныйТип(ТипGUID) = Ложь Тогда
			  Если ПутьТипа[0] = "ВнешнийИсточникДанных" Or ПутьТипа[0] = "ExternalDataSource" Тогда
				текПарам = ВнешниеИсточникиДанных[ПутьТипа[1]].Таблицы[ПутьТипа[3]].ПолучитьСсылку(GUID);
			  Иначе
				Каталог = Справочники;
				Если ПутьТипа[0] = "Справочник" Or ПутьТипа[0]="Catalog" Then
				  Каталог = Справочники;
				ИначеЕсли ПутьТипа[0] = "Документ" Or ПутьТипа[0]="Document" Then
				  Каталог = Документы;
				ИначеЕсли ПутьТипа[0] = "ПланВидовХарактеристик" Or ПутьТипа[0]="ChartOfCharacteristicTypes" Then
				  Каталог = ПланыВидовХарактеристик;
				ИначеЕсли ПутьТипа[0] = "ПланСчетов" Or ПутьТипа[0]="ChartOfAccounts" Then
				  Каталог = ПланыСчетов;
				ИначеЕсли ПутьТипа[0] = "ПланВидовРасчета" Or ПутьТипа[0]="ChartOfCalculationTypes" Then
				  Каталог = ПланыВидовРасчета;
				КонецЕсли;
				Если ПутьТипа[0] = "Перечисление" Or ПутьТипа[0]="Enum" Then
				  текПарам = Перечисления[ПутьТипа[1]][GUID];
				ИначеЕсли ПутьТипа[0] = "ВидДвиженияНакопления" Or ПутьТипа[0]="AccumulationRecordType" Then
				  текПарам = ВидДвиженияНакопления[GUID];
				Иначе
					текПарам = Каталог[ПутьТипа[1]].ПолучитьСсылку(Новый УникальныйИдентификатор(GUID));
				КонецЕсли;
			  КонецЕсли;
			Иначе
			  Если ТипGUID = "date" Тогда
				GUID = UnixTimeToDate(GUID);
			  КонецЕсли;
			  текПарам = ЗначениеИзСтроки(GUID,ТипGUID);
			КонецЕсли;
			Запрос.УстановитьПараметр(ИмяАргумента, текПарам);
		  КонецЕсли;
		КонецЕсли;
	  КонецЦикла;
  КонецЕсли;

  максКолвоСтрокОтвета = 100000000; // По умолчанию 100 млн. строк

  Если версияЗапроса > 1 Тогда
		ПараметрыЗапроса = inObj.copiesArgs;
		databaseCopiesUseArg = ПараметрыЗапроса.databaseCopiesUse;
		requiredDataRelevanceArg = ПараметрыЗапроса.requiredDataRelevance;
		requiredDataRelevanceTimeArg = ПараметрыЗапроса.requiredDataRelevanceTime;

		databaseCopiesUseQueryValue = Неопределено;
		Попытка
			Если databaseCopiesUseArg = "preferUseCopies" Тогда
				Выполнить("databaseCopiesUseQueryValue = ИспользованиеКопийБазыДанных.ИспользоватьПреимущественноКопии;");
			ИначеЕсли databaseCopiesUseArg = "useCopiesOnly" Тогда
				Выполнить("databaseCopiesUseQueryValue = ИспользованиеКопийБазыДанных.ИспользоватьТолькоКопии;");
			ИначеЕсли databaseCopiesUseArg = "dontUseCopies" Тогда
				Выполнить("databaseCopiesUseQueryValue = ИспользованиеКопийБазыДанных.НеИспользоватьКопии;");
			Иначе
				Выполнить("databaseCopiesUseQueryValue = ИспользованиеКопийБазыДанных.Авто;");
			КонецЕсли;
		Исключение
			Ошибка = ОписаниеОшибки();
		КонецПопытки;

		requiredDataRelevanceQueryValue = Неопределено;
		Попытка
			Если requiredDataRelevanceArg = "relevant" Тогда
				Выполнить("requiredDataRelevanceQueryValue = ТребуемаяАктуальностьДанных.Актуальные;");
			ИначеЕсли requiredDataRelevanceArg = "any" Тогда
				Выполнить("requiredDataRelevanceQueryValue = ТребуемаяАктуальностьДанных.Любые;");
			Иначе
				Выполнить("requiredDataRelevanceQueryValue = ТребуемаяАктуальностьДанных.Авто;");
			КонецЕсли;
		Исключение
			Ошибка = ОписаниеОшибки();
		КонецПопытки;

		requiredDataRelevanceTimeQueryValue = Неопределено;
		Если requiredDataRelevanceTimeArg <> Неопределено Тогда
			relTimeType = requiredDataRelevanceTimeArg.type;
			relTimeValue = requiredDataRelevanceTimeArg.value;
			Если relTimeType = "seconds" Тогда
				requiredDataRelevanceTimeQueryValue = Число(relTimeValue);
			ИначеЕсли relTimeType = "date" Тогда
				requiredDataRelevanceTimeQueryValue = Дата(relTimeValue);
			КонецЕсли;
		КонецЕсли;

		Если databaseCopiesUseQueryValue <> Неопределено Тогда
			Выполнить("Запрос.ИспользованиеКопийБазыДанных = databaseCopiesUseQueryValue;");
		КонецЕсли;

		Если requiredDataRelevanceQueryValue <> Неопределено Тогда
			Выполнить("Запрос.ТребуемаяАктуальностьДанных = requiredDataRelevanceQueryValue;");
			Выполнить("Запрос.ТребуемоеВремяАктуальностиДанных = requiredDataRelevanceTimeQueryValue;");
		КонецЕсли;

		Если inObj.Свойство("limitRowsInResponse") = Истина Тогда
			максКолвоСтрокОтвета = Число(inObj.limitRowsInResponse);
		КонецЕсли;

	КонецЕсли;

	вернутьТекстЗапроса = Ложь;
	inObj.Свойство("echoRequest", вернутьТекстЗапроса);

	Если вернутьТекстЗапроса = Истина Тогда
		ЗаписьJSON.ЗаписатьИмяСвойства("request");
		ЗаписьJSON.ЗаписатьЗначение(ТекстЗапроса);
	КонецЕсли;

	моментНачалаЗапроса = ТекущаяУниверсальнаяДатаВМиллисекундах();
	РезультатВыборки = Запрос.Выполнить();
	Выборка = РезультатВыборки.Выбрать();
	Колонки = РезультатВыборки.Колонки;
	моментКонцаЗапроса = ТекущаяУниверсальнаяДатаВМиллисекундах();
	ТипыКолонок = Новый Массив; // 0 - простой, 1 - булевый, 2 - guid, 3 - Тип, 4 - Непонятно, 5 - Дата/(принудительно строка)
	МеткиСоставныхТипов = Новый Массив; // true - да false - нет
	Индекс = 0;

	МоментНачалаСериализации = ТекущаяУниверсальнаяДатаВМиллисекундах();
	//Сериализация в ответ типов возвращаемых данных
	ЗаписьJSON.ЗаписатьИмяСвойства("types");
	ЗаписьJSON.ЗаписатьНачалоМассива();
	Для Каждого Колонка из Колонки Цикл
	  ЭтоСоставнойТип = Колонка.ТипЗначения.Типы().Количество() - 1 > 1;
	  МеткиСоставныхТипов.Добавить(ЭтоСоставнойТип);
	  Если КолонкиGUID.Найти(Строка(Индекс - 1)) <> Неопределено Тогда
		ЗаписьJSON.ЗаписатьЗначение("guid");
		ТипыКолонок.Добавить(2);
	  ИначеЕсли КолонкиСтрок.Найти(Строка(Индекс - 1)) <> Неопределено Тогда
		ТипыКолонок.Добавить(0);
	  ИначеЕсли Колонка.ТипЗначения.Типы().Количество() = 1
		ИЛИ (Колонка.ТипЗначения.Типы().Количество() = 2 И Колонка.ТипЗначения.СодержитТип(Тип("Null"))) Тогда
		Если Колонка.ТипЗначения.СодержитТип(Тип("Строка")) Тогда
		  ЗаписьJSON.ЗаписатьЗначение("string");
		  ТипыКолонок.Добавить(0);
		ИначеЕсли Колонка.ТипЗначения.СодержитТип(Тип("Число")) Тогда
		  ЗаписьJSON.ЗаписатьЗначение("number");
		  ТипыКолонок.Добавить(0);
		ИначеЕсли Колонка.ТипЗначения.СодержитТип(Тип("Дата")) Тогда
		  ЗаписьJSON.ЗаписатьЗначение("date");
		  ТипыКолонок.Добавить(5);
		ИначеЕсли Колонка.ТипЗначения.СодержитТип(Тип("Булево")) Тогда
		  ЗаписьJSON.ЗаписатьЗначение("boolean");
		  ТипыКолонок.Добавить(1);
		ИначеЕсли Колонка.ТипЗначения.СодержитТип(Тип("Тип")) Тогда
		  ЗаписьJSON.ЗаписатьЗначение("type");
		  ТипыКолонок.Добавить(3);
		Иначе
		  ЗаписьJSON.ЗаписатьЗначение(Строка(Колонка.ТипЗначения));
		  ТипыКолонок.Добавить(4);
		КонецЕсли;
	  Иначе
		ЗаписьJSON.ЗаписатьЗначение(Строка(Колонка.ТипЗначения));
		ТипыКолонок.Добавить(4);
	  КонецЕсли;
	  Индекс = Индекс + 1;
	КонецЦикла;
	ЗаписьJSON.ЗаписатьКонецМассива();

	//Сериализация в ответ имен колонок
	ЗаписьJSON.ЗаписатьИмяСвойства("header");
	ЗаписьJSON.ЗаписатьНачалоМассива();
	Для Каждого Колонка из Колонки Цикл
	  ЗаписьJSON.ЗаписатьЗначение(Колонка.Имя);
	КонецЦикла;
	ЗаписьJSON.ЗаписатьКонецМассива();

	ТТип = Тип("Тип");
	ТНул = Тип("Null");
	ТСтрока = Тип("Строка");
	ТЧисло = Тип("Число");
	ТБулево = Тип("Булево");
	ТДата = Тип("Дата");
	ТУИ = Тип("УникальныйИдентификатор");
	//Сериализация данных в ответ
	ЗаписьJSON.ЗаписатьИмяСвойства("data");
	ЗаписьJSON.ЗаписатьНачалоМассива();
	количествоСтрокОтвета = 0;
	Пока Выборка.Следующий() Цикл
	  ЗаписьJSON.ЗаписатьНачалоМассива();

      количествоСтрокОтвета = количествоСтрокОтвета + 1;
	  Если количествоСтрокОтвета > максКолвоСтрокОтвета Тогда
		  ВызватьИсключение(" Превышен допустимый лимит кол-ва записей ответа на запрос. Максимальное кол-ва записей для этого запроса: " + максКолвоСтрокОтвета);
	  КонецЕсли;

	  Индекс = 0;
	  Для Индекс = 0 По ТипыКолонок.Количество() - 1 Цикл
		Значение = Выборка[Индекс];
		ТипКолонки =  ТипыКолонок[Индекс]; // 0 - простой, 1 - булевый, 2 - guid, 3 - Тип, 4 - Непонятно, 5 - Дата
		ЭтоСоставнойТип = МеткиСоставныхТипов[Индекс];
		Если Значение = Null Или Значение = Неопределено Тогда
		  ЗаписьJSON.ЗаписатьЗначение(Неопределено);
		Иначе
		  КолВоТипов = ?(Колонка.ТипЗначения.СодержитТип(Тип("Null")), 2, 1);
		  //Если в колонке с текущем индексом ожидается GUID, сериализуем в ответ guid объекта
		  Если ТипКолонки = 2 Тогда
			// В составном типе у нас могут быть и примитивные типы
			// для них в поле уникального идентификатора записываем само значение
			// Такие идентификаторы будут равны для одинаковых значений. И это хорошо
			// Имя типа гарантирует их различие для разных типов
			Если ЭтоСоставнойТип Тогда
			  Если ЭтоСсылочноеЗначение(Значение) Тогда
				ЗаписываемоеЗначение = RefUniqId(Значение);
				ИмяТипа = ИмяТипа(ТипЗнч(Значение));
				ИначеЕсли ТипЗнч(Значение) = Тип("Дата") Тогда
			   ЗаписываемоеЗначение = Формат(DateToUnixTime(Значение), "ЧГ=0");
			   ИмяТипа = "date";
			  ИначеЕсли ТипЗнч(Значение) = Тип("Число") Тогда
				ЗаписываемоеЗначение = Формат(Значение, "ЧГ=0");
				ИмяТипа = "number";
			  Иначе
				ЗаписываемоеЗначение = Строка(Значение);
				ИмяТипа = ИмяТипа(ТипЗнч(Значение));
			  КонецЕсли;
			  ЗаписьJSON.ЗаписатьЗначение(ИмяТипа + ":" + ЗаписываемоеЗначение);
			Иначе
			  ЗаписьJSON.ЗаписатьЗначение(RefUniqId(Значение));
			КонецЕсли;
		  ИначеЕсли ТипКолонки = 0 Тогда
			  Если ТипЗнч(Значение) = Тип("Дата") Тогда
				  ЗаписьJSON.ЗаписатьЗначение(DateToUnixTime(Значение));
			  Иначе
					ЗаписьJSON.ЗаписатьЗначение(Значение);
			  КонецЕсли;
		  ИначеЕсли ТипКолонки = 1 Тогда
			ЗаписьJSON.ЗаписатьЗначение(Значение <> Ложь);
		  ИначеЕсли ТипКолонки = 5 Тогда
			ЗаписьJSON.ЗаписатьЗначение(DateToUnixTime(Значение));
		  ИначеЕсли ТипКолонки = 3 Тогда
			МетаТип = Метаданные.НайтиПоТипу(Значение);
			Если МетаТип <> Неопределено Тогда
			  ЗаписьJSON.ЗаписатьЗначение(МетаТип.ПолноеИмя());
			Иначе
			  Если Значение = ТСтрока Тогда
				ЗаписьJSON.ЗаписатьЗначение("string");
			  ИначеЕсли Значение = ТЧисло Тогда
				ЗаписьJSON.ЗаписатьЗначение("number");
			  ИначеЕсли Значение = ТДата Тогда
				ЗаписьJSON.ЗаписатьЗначение("date");
			  ИначеЕсли Значение = ТБулево Тогда
				ЗаписьJSON.ЗаписатьЗначение("boolean");
			  ИначеЕсли Значение = ТУИ Тогда
				ЗаписьJSON.ЗаписатьЗначение("uuid");
			  Иначе
				ЗаписьJSON.ЗаписатьЗначение(Строка(Значение));
			  КонецЕсли;
			КонецЕсли;
		  Иначе
			ЗаписьJSON.ЗаписатьЗначение(Строка(Значение));
		  КонецЕсли;
		КонецЕсли;
	  КонецЦикла;

	  //Для позиций из списка ИзвлечьGUID извлекаем GUID и дополняем колоки в строке этими guid
	  Для Каждого Позиция из ИзвлечьGUID Цикл
		Если СтрДлина(Позиция) > 0 Тогда
		  Поз = Число(Позиция) + 1;
		  Значение = Выборка[Поз];
		  ЭтоСоставнойТип = МеткиСоставныхТипов[Поз];
		  Если Значение = Null ИЛИ Значение = Неопределено Тогда
			ЗаписьJSON.ЗаписатьЗначение(Неопределено);
		  Иначе
			Если ЭтоСоставнойТип Тогда
			  // В составном типе у нас могут быть и примитивные типы
			  // для них в поле уникального идентификатора записываем само значение
			  // Такие идентификаторы будут равны для одинаковых значений. И это хорошо
			  // Имя типа гарантирует их различие для разных типов
			  Если ЭтоСсылочноеЗначение(Значение) Тогда
				ЗаписываемоеЗначение = RefUniqId(Значение);
				ИмяТипа = ИмяТипа(ТипЗнч(Значение));
			  ИначеЕсли ТипЗнч(Значение) = Тип("Дата") Тогда
				ЗаписываемоеЗначение = Формат(DateToUnixTime(Значение), "ЧГ=0");
				ИмяТипа = "date";
			  ИначеЕсли ТипЗнч(Значение) = Тип("Число") Тогда
				ЗаписываемоеЗначение = Формат(Значение, "ЧГ=0");
				ИмяТипа = "number";
			  Иначе
				ЗаписываемоеЗначение = Строка(Значение);
				ИмяТипа = ИмяТипа(ТипЗнч(Значение));
			  КонецЕсли;
			  ЗаписьJSON.ЗаписатьЗначение(ИмяТипа + ":" + ЗаписываемоеЗначение);
			Иначе
			  ЗаписьJSON.ЗаписатьЗначение(RefUniqId(Значение));
			КонецЕсли;
		  КонецЕсли;
		КонецЕсли;
	  КонецЦикла;
	  ЗаписьJSON.ЗаписатьКонецМассива();
	КонецЦикла;

	ЗаписьJSON.ЗаписатьКонецМассива();
	моментКонцаСериализации = ТекущаяУниверсальнаяДатаВМиллисекундах();
	ЗаписьJSON.ЗаписатьИмяСвойства("queryTime");
	ЗаписьJSON.ЗаписатьЗначение(Строка(моментКонцаЗапроса - моментНачалаЗапроса) + " мс");
	ЗаписьJSON.ЗаписатьИмяСвойства("serializationTime");
	ЗаписьJSON.ЗаписатьЗначение(Строка(моментКонцаСериализации - моментНачалаСериализации) + " мс");

	КопияНазвание = "";
	Попытка
	  Если Строка(РезультатВыборки.КопияБазыДанных) <> "" Тогда
		КопияНазвание = Строка(РезультатВыборки.КопияБазыДанных);
	  КонецЕсли;
	Исключение
	  Ошибка = ОписаниеОшибки();
	КонецПопытки;
	ЗаписьJSON.ЗаписатьИмяСвойства("dataSource");
	ЗаписьJSON.ЗаписатьЗначение(КопияНазвание);

	КопияАктуальность =  "";
	Попытка
	  КопияАктуальность = Строка(РезультатВыборки.ВремяАктуальностиДанных);
	Исключение
	  Ошибка = ОписаниеОшибки();
	  КопияАктуальность = Строка(ТекущаяДатаСеанса());
	КонецПопытки;
	ЗаписьJSON.ЗаписатьИмяСвойства("dataActuality");
	ЗаписьJSON.ЗаписатьЗначение(КопияАктуальность);

    КопияДанныеАктуальны = "";
	Попытка
		КопияДанныеАктуальны = ?(РезультатВыборки.ДанныеАктуальны = True, "true", "false");
	Исключение
		Ошибка = ОписаниеОшибки();
	КонецПопытки;

	// Отправляем клиенту версию структуры ответа
	// ! При изменении структуры ответа необходимо поднимать версию на 1
  	ЗаписьJSON.ЗаписатьИмяСвойства("responseVersion");
	ЗаписьJSON.ЗаписатьЗначение(2);

	ЗаписьJSON.ЗаписатьИмяСвойства("dataIsRelevant");
	ЗаписьJSON.ЗаписатьЗначение(КопияДанныеАктуальны);

	// Полное вермя обработки запроса
	ЗаписьJSON.ЗаписатьИмяСвойства("startProcessQueryTime");
	ЗаписьJSON.ЗаписатьЗначение(моментНачалаОбработкиЗапроса);
	ЗаписьJSON.ЗаписатьИмяСвойства("stopProcessQueryTime");
	ЗаписьJSON.ЗаписатьЗначение(ТекущаяУниверсальнаяДатаВМиллисекундах());

  КонецФункции

  // Input format: query: string, knownTypes: Array<string>
  Function GetData(jsonToWrite, inObj) Export
	Var params, q, queryResult, it, value, selpropName, props;
	Var result, returnTypes, retType;
	q = New Query();
	returnTypes = New Array();

	// query
	q.Text = inObj.query;

	// parameters
	For Each param In inObj.parameters Do
	  If TypeOf(param.Value) = Type("Array") Then
		ProccessObjectParameter(param.Value, q, param.Key);
	  Else
		q.SetParameter(param.Key, param.Value);
	  EndIf;
	EndDo;

	// returnTypes
	returnTypes = inObj.returnTypes;

	If IsCopySupported() Then
	  Execute("q.RequiredDataRelevance = RequiredDataRelevance.Relevant;");
	  Execute("q.RequiredDataRelevanceTime = 60*60*24*30;");
	EndIf;
	queryResult = q.Execute();
	Expect(queryResult.Columns.Count(), returnTypes.Count());
	it = queryResult.Select();
	jsonToWrite.WritePropertyName("data");
	jsonToWrite.WriteStartArray();
	While it.Next() Do
	  jsonToWrite.WriteStartArray();
	  For i = 0 To returnTypes.Count()-1 Do
		value = it.Get(i);
		retType = returnTypes.Get(i);
		If retType = "" Then
		  If TypeOf(value) = Type("String") Or
			TypeOf(value) = Type("Boolean") Or
			TypeOf(value) = Type("Number") Then
			jsonToWrite.WriteValue(value);
		  Else
			jsonToWrite.WriteStartArray();
			If TypeOf(value) = Type("Date") Then
			  jsonToWrite.WriteValue("date");
			  jsonToWrite.WriteValue(value-Дата('19700101'));
			ElsIf TypeOf(value) = Type("Type") Then
			  jsonToWrite.WriteValue("type");
			  jsonToWrite.WriteValue(TypeToStr(value));
			ElsIf TypeOf(value) = Type("UUID") Then
			  jsonToWrite.WriteValue("uuid");
			  jsonToWrite.WriteValue(String(value));
			Else
			  jsonToWrite.WriteValue(TypeToStr(TypeOf(value)));
			  jsonToWrite.WriteValue(String(value.UUID()));
			EndIf;

			jsonToWrite.WriteEndArray();
		  EndIf;
		ElsIf retType = "string" Or retType = "boolean" or retType = "number"  Then
		  jsonToWrite.WriteValue(value);
		ElsIf retType = "type" Then
		  jsonToWrite.WriteValue(TypeToStr(value));
		ElsIf retType = "uuid" Then
		  jsonToWrite.WriteValue(String(value));
		Else
		  jsonToWrite.WriteValue(String(value.UUID()));
		EndIf;
	  EndDo;
	  jsonToWrite.WriteEndArray();
	EndDo;
	jsonToWrite.WriteEndArray();
  EndFunction

  Function ProccessObjectParameter(pv, q, propName)
	Var value, valueType, refMetadata, typeSplit;
	valueType = pv[0];
	value = pv[1];
	If valueType = "date" Then
	  q.SetParameter(propName, Date(value));  // Value in format YYYYMMDDHHMMSS
	Else
	  typeSplit = StrSplit(valueType, ".");
	  Expect(typeSplit.Count(), 2);
	  if StrStartWith(typeSplit[0], "CatalogRef.") Then
		refMetadata = Catalogs;
	  ElsIf StrStartWith(typeSplit[0], "DocumentRef.") Then
		refMetadata = Documents;
	  ElsIf StrStartWith(typeSplit[0], "ExchangePlanRef.") Then
		refMetadata = ExchangePlans;
	  ElsIf StrStartWith(typeSplit[0], "EnumRef.") Then
		refMetadata = Enums;
	  ElsIf StrStartWith(typeSplit[0], "ChartOfCharacteristicTypesRef.") Then
		refMetadata = ChartsOfCharacteristicTypes;
	  ElsIf StrStartWith(typeSplit[0], "ChartsOfCalculationTypesRef.") Then
		refMetadata = ChartsOfCalculationTypes;
	  ElsIf StrStartWith(typeSplit[0], "ChartsOfAccountsRef.") Then
		refMetadata = ChartsOfAccounts;
	  ElsIf StrStartWith(typeSplit[0], "BusinessProcessRef.") Then
		refMetadata = BusinessProcesses;
	  ElsIf StrStartWith(typeSplit[0], "TaskRef.") Then
		refMetadata = Tasks;
	  Else
		Raise "Unknown parameter type " + valueType;
	  EndIf;
	  q.SetParameter(propName,
	  refMetadata[typeSplit[1]].GetRef(New UUID(value))); // "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
	EndIf;
  EndFunction

  Procedure Expect(val0, expected)
	If val0 <> expected Then
	  Raise "Unexpected value when reading JSON. " + val0 + " instead of " + expected;
	EndIf;
  EndProcedure
��� h���U� w �   > 2[ � �<���c  `�  `& `1  `  `� `q ` `J `� `� `�  `p `6 `J  `  `�  ` 