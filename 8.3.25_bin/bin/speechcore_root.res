  �'      ResB             �     �                =  IDS_HOST IDS_ERROR_NOT_AVAILABLE IDS_ERROR_IO IDS_ERROR_AUTH IDS_ERROR_PAYMENT_REQUIRED IDS_ERROR_NON_UNIQUE_KEY IDS_ERROR_MODEL_EXISTS IDS_ERROR_MODEL_UNSUPPORTED_OS IDS_ERROR_ENGINE_FAILURE IDS_ERROR_MODEL_NOT_FOUND IDS_ERROR_AUDIO_PROCESSING_FAILED IDS_ERROR_BROKEN_MODEL IDS_ERROR_DISABLED_LOCALLY IDS_SPEECH_PROCESS_LOCATION_USE_VARIANT_AUTO IDS_SPEECH_PROCESS_LOCATION_USE_VARIANT_EXTERNAL_ONLY IDS_SPEECH_PROCESS_LOCATION_USE_VARIANT_LOCAL_ONLY IDS_DELAYED_NOT_FOUND IDS_DELAYED_CANCELLED IDS_MODEL_IS_LOADING IDS_UNSUPPORTED_FILE_FORMAT IDS_ERROR_DEVICE_UNAVAILABLE IDS_ERROR_TTS_NOT_AVAILABLE IDS_ERROR_OUT_OF_MEMORY IDS_STT_TABLES_CREATED model.xdto stt.xsd   2B>  s p e e c h . 1 c . a i   ">;L:>  2=5H=55  ;NG  =5  C=8:0;5=  ">;L:>  ;>:0;L=>5  >45;L  703@C605BAO. .   H81:0  >1@01>B:8  0C48>  >45;L  C65  CAB0=>2;5=0  5=5@0F8O  @5G8  =54>ABC?=0  $>@<0B  D09;0  =5  ?>445@68205BAO  !8AB5<0  @01>BK  A  @5GLN  =54>ABC?=0  B;>65==>5  @0A?>7=020=85  >B<5=5=>  B;>65==>5  @0A?>7=020=85  =5  =0945=>  5  =0945=0  <>45;L  @0A?>7=020=8O  @5G8  =CB@5==OO  >H81:0  @0A?>7=020=8O  @5G8  ?5@0F8>==0O  A8AB5<0  =5  ?>445@68205BAO  >:0;L=>5  @0A?>7=020=85  @5G8  70?@5I5=>  )�H81:0  02B>@870F88  A5@28A0  @01>BK  A  @5GLN  +�54>AB0B>G=>  A@54AB2  4;O  2K?>;=5=8O  70?@>A0  /�H81:0  2708<>459AB28O  A  A5@28A><  @01>BK  A  @5GLN  /�BACBAB2C5B  >1>@C4>20=85  4;O  @0A?>7=020=8O  @5G8  1�$09;  =5  O2;O5BAO  D09;><  <>45;8  @0A?>7=020=8O  @5G8  1�54>AB0B>G=>  ?0<OB8  4;O  @01>BK  @0A?>7=020=8O  @5G8  9�T a b l e s   f o r   t h e   s p e e c h   r e c o g n i t i o n   s y s t e m   h a s   b e e n   c r e a t e d   �����������  ﻿<model xmlns="http://v8.1c.ru/8.1/xdto" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<package targetNamespace="http://v8.1c.ru/8.3/stt/core" elementFormQualified="true" attributeFormQualified="false">
		<import namespace="http://v8.1c.ru/8.1/data/core"/>
		<valueType name="SpeechProcessingLocationUseVariant" base="xs:string">
			<enumeration>Auto</enumeration>
			<enumeration>ExternalOnly</enumeration>
			<enumeration>LocalOnly</enumeration>
		</valueType>
		<objectType name="RegistrationData">
			<property name="value" type="xs:base64Binary"/>
		</objectType>
		<objectType name="SpeechToTextDelayedID">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="uuid" type="d4p1:UUID" lowerBound="0" form="Attribute"/>
		</objectType>
		<objectType name="SpeechToTextInformationDelayed">
			<property name="done" type="xs:boolean" lowerBound="0" form="Attribute"/>
			<property name="successful" type="xs:boolean" lowerBound="0" form="Attribute"/>
			<property name="error" type="xs:string" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/stt/core" name="results" type="d4p1:SpeechToTextResult" lowerBound="0" upperBound="-1"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/stt/core" name="key" type="d4p1:SpeechToTextDelayedID"/>
		</objectType>
		<objectType name="SpeechToTextModelDescription">
			<property name="availableLocally" type="xs:boolean" lowerBound="0" form="Attribute"/>
			<property name="availableExternally" type="xs:boolean" lowerBound="0" form="Attribute"/>
			<property name="downloadAvailable" type="xs:boolean" lowerBound="0" form="Attribute"/>
			<property name="version" type="xs:string" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/stt/core" name="modelIdentifier" type="d4p1:SpeechToTextModelID"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/stt/core" name="modelParameters" type="d4p1:SpeechToTextModelParameters"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/stt/core" name="modelParametersRu" type="d4p1:SpeechToTextModelParameters"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="acousticsRepresentation" type="d4p1:FixedMap"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="grammarRepresentation" type="d4p1:FixedMap"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="description" type="d4p1:FixedMap"/>
		</objectType>
		<objectType name="SpeechToTextModelID">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="uuid" type="d4p1:UUID" lowerBound="0" form="Attribute"/>
		</objectType>
		<objectType name="SpeechToTextModelParameters">
			<property name="languageCode" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="acoustics" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="grammar" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="version" type="xs:string" lowerBound="0" form="Attribute"/>
		</objectType>
		<objectType name="SpeechToTextPhraseData">
			<property name="phrase" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="confidence" type="xs:float" lowerBound="0" form="Attribute"/>
			<property name="startTime" type="xs:float" lowerBound="0" form="Attribute"/>
			<property name="endTime" type="xs:float" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/stt/core" name="phraseWord" type="d4p1:SpeechToTextPhraseWord" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType name="SpeechToTextPhraseWord">
			<property name="word" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="confidence" type="xs:float" lowerBound="0" form="Attribute"/>
			<property name="startTime" type="xs:float" lowerBound="0" form="Attribute"/>
			<property name="endTime" type="xs:float" lowerBound="0" form="Attribute"/>
		</objectType>
		<objectType name="SpeechToTextResult">
			<property name="phraseRecognitionCompleted" type="xs:boolean" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/stt/core" name="phrase" type="d4p1:SpeechToTextPhraseData" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType name="TextToSpeechVoiceDescription">
			<property name="voice" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="voiceRu" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="language" type="xs:string" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="voiceRepresentation" type="d4p1:FixedMap"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="description" type="d4p1:FixedMap"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/stt/core" name="params" type="d4p1:TextToSpeechVoiceParameterDescription" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType name="TextToSpeechVoiceParameterDescription">
			<property name="name" type="xs:string" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="representation" type="d4p1:FixedMap"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="description" type="d4p1:FixedMap"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/stt/core" name="values" type="d4p1:TextToSpeechVoiceParameterValueDescription" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType name="TextToSpeechVoiceParameterValueDescription">
			<property name="value" type="xs:string" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="representation" type="d4p1:FixedMap"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="description" type="d4p1:FixedMap"/>
		</objectType>
	</package>
</model>����������   ﻿<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:core="http://v8.1c.ru/8.1/data/core"
           xmlns:tns="http://v8.1c.ru/8.3/stt/core" attributeFormDefault="unqualified"
           elementFormDefault="qualified" targetNamespace="http://v8.1c.ru/8.3/stt/core">
    <xs:import namespace="http://v8.1c.ru/8.1/data/core" schemaLocation="../../../xdto/src/res/core.xsd"/>

    <xs:complexType name="SpeechToTextModelParameters">
        <xs:attribute name="languageCode" type="xs:string"/>
        <xs:attribute name="acoustics" type="xs:string"/>
        <xs:attribute name="grammar" type="xs:string"/>
        <xs:attribute name="version" type="xs:string"/>
    </xs:complexType>

    <xs:simpleType name="SpeechProcessingLocationUseVariant">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Auto"/>
            <xs:enumeration value="ExternalOnly"/>
            <xs:enumeration value="LocalOnly"/>
        </xs:restriction>
    </xs:simpleType>

    <xs:complexType name="SpeechToTextDelayedID">
        <xs:attribute name="uuid" type="core:UUID"/>
    </xs:complexType>

    <xs:complexType name="SpeechToTextModelID">
        <xs:attribute name="uuid" type="core:UUID"/>
    </xs:complexType>

    <xs:complexType name="SpeechToTextPhraseWord">
        <xs:attribute name="word" type="xs:string"/>
        <xs:attribute name="confidence" type="xs:float"/>
        <xs:attribute name="startTime" type="xs:float"/>
        <xs:attribute name="endTime" type="xs:float"/>
    </xs:complexType>

    <xs:complexType name="SpeechToTextPhraseData">
        <xs:sequence>
            <xs:element name="phraseWord" type="tns:SpeechToTextPhraseWord" minOccurs="0" maxOccurs="unbounded"/>
        </xs:sequence>
        <xs:attribute name="phrase" type="xs:string"/>
        <xs:attribute name="confidence" type="xs:float"/>
        <xs:attribute name="startTime" type="xs:float"/>
        <xs:attribute name="endTime" type="xs:float"/>
    </xs:complexType>

    <xs:complexType name="SpeechToTextResult">
        <xs:sequence>
            <xs:element name="phrase" type="tns:SpeechToTextPhraseData" minOccurs="0" maxOccurs="unbounded"/>
        </xs:sequence>
        <xs:attribute name="phraseRecognitionCompleted" type="xs:boolean"/>
    </xs:complexType>

    <xs:complexType name="SpeechToTextInformationDelayed">
        <xs:sequence>
            <xs:element name="results" type="tns:SpeechToTextResult" minOccurs="0" maxOccurs="unbounded"/>
            <xs:element name="key" type="tns:SpeechToTextDelayedID"/>
        </xs:sequence>
        <xs:attribute name="done" type="xs:boolean"/>
        <xs:attribute name="successful" type="xs:boolean"/>
        <xs:attribute name="error" type="xs:string"/>
    </xs:complexType>

    <xs:complexType name="SpeechToTextModelDescription">
        <xs:sequence>
            <xs:element name="modelIdentifier" type="tns:SpeechToTextModelID"/>
            <xs:element name="modelParameters" type="tns:SpeechToTextModelParameters"/>
            <xs:element name="modelParametersRu" type="tns:SpeechToTextModelParameters"/>
            <xs:element name="acousticsRepresentation" type="core:FixedMap"/>
            <xs:element name="grammarRepresentation" type="core:FixedMap"/>
            <xs:element name="description" type="core:FixedMap"/>
        </xs:sequence>
        <xs:attribute name="availableLocally" type="xs:boolean"/>
        <xs:attribute name="availableExternally" type="xs:boolean"/>
        <xs:attribute name="downloadAvailable" type="xs:boolean"/>
        <xs:attribute name="version" type="xs:string"/>
    </xs:complexType>

    <xs:complexType name="RegistrationData">
        <xs:sequence>
            <xs:element name="value" type="xs:base64Binary"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="TextToSpeechVoiceParameterValueDescription">
        <xs:sequence>
            <xs:element name="representation" type="core:FixedMap"/>
            <xs:element name="description" type="core:FixedMap"/>
        </xs:sequence>
        <xs:attribute name="value" type="xs:string"/>
    </xs:complexType>

    <xs:complexType name="TextToSpeechVoiceParameterDescription">
        <xs:sequence>
            <xs:element name="representation" type="core:FixedMap"/>
            <xs:element name="description" type="core:FixedMap"/>
            <xs:element name="values" type="tns:TextToSpeechVoiceParameterValueDescription" minOccurs="0" maxOccurs="unbounded"/>
        </xs:sequence>
        <xs:attribute name="name" type="xs:string"/>
    </xs:complexType>

    <xs:complexType name="TextToSpeechVoiceDescription">
        <xs:sequence>
            <xs:element name="voiceRepresentation" type="core:FixedMap"/>
            <xs:element name="description" type="core:FixedMap"/>
            <xs:element name="params" type="tns:TextToSpeechVoiceParameterDescription" minOccurs="0" maxOccurs="unbounded"/>
        </xs:sequence>
        <xs:attribute name="voice" type="xs:string"/>
        <xs:attribute name="voiceRu" type="xs:string"/>
        <xs:attribute name="language" type="xs:string"/>
    </xs:complexType>
</xs:schema> ��� N A3� A � � � x ) z] ^  N{��%�����  ` `Y  `� `z `I `� `M ` `p  `( `r `"  `�  `� `� `�  `  `D  `  `  `3  `� `�  `? � 