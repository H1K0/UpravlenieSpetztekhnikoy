  �'      ResB             �     f              �   IDS_TEXT IDS_TEXT_DOS IDS_TEXT_DEFAULT_TITLE IDS_TYPE_PRESENTATION_TXTEDT IDS_TYPE_PRESENTATION_TEXTPARAMETERS IDS_TXTEDT_OUTPUTDISABLED IDS_TXTEDT_METHODNOTAVAILABLEONSERVER IDS_TXTEDT_METHODNOTAVAILABLEONCLIENT IDS_TXTEDT_PROPERTYNOTAVAILABLEONCLIENT IDS_TXTEDT_METHODGETAREA_AREA_NOT_FOUND IDS_BLOCKSTATEMAPKEYEXCEPTION_INVALID_ARGS model.xdto txtedt.xsd _fileTypeText.zip   T e x t   T e x t   d o c u m e n t   O u t p u t   i s   d i s a b l e d   O E M   ( D O S )   t e x t   d o c u m e n t   T e x t   d o c u m e n t   t e m p l a t e   s e t t i n g s   M e t h o d   i s   n o t   a v a i l a b l e   o n   s e r v e r   M e t h o d   i s   n o t   a v a i l a b l e   o n   t h i n   c l i e n t   I n t e r n a l   e r r o r   w h i l e   e d i t i n g   m o d u l e   t e x t   P r o p e r t y   i s   n o t   a v a i l a b l e   o n   t h i n   c l i e n t   -�T h e   a r e a   w i t h   t h e   s p e c i f i e d   n a m e   i s   n o t   f o u n d   ��	  PK
     Dm�N��dgL  L     _fileTypeText.png�PNG

   IHDR         ��a  IDAT8˥�MKA�qߙ�!��v�*"����� �Q^:�=��膵��&�D]\w�ݙ�5#��3;D-|����� ��#}�?9���A�vy�^��8ASQ����lG��;��r�R�'/.Z�O%��N��[F䗬v���7D���}�)����9��g�S�+�1�cfD�!�H8��w����S`�H0�DF!aف�4;}4-9L��Y��o�GIv`4p��v����b��4 ف�>��Y#bG��*��"p����q*�̸�    IEND�B`�PK
     ��tPkA
�5  5     _fileTypeText.svg<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.75 15C4.75 15.1381 4.86193 15.25 5 15.25H15C15.1381 15.25 15.25 15.1381 15.25 15V3C15.25 2.86193 15.1381 2.75 15 2.75H12V2H15C15.5523 2 16 2.44772 16 3V15C16 15.5523 15.5523 16 15 16H5C4.44772 16 4 15.5523 4 15V13H4.75V15Z" fill="#4D4D4D"/>
<path d="M2 10H5V11H2V10Z" fill="#4D4D4D"/>
<path d="M2 8H7V9H2V8Z" fill="#4D4D4D"/>
<path d="M2 6H9V7H2V6Z" fill="#4D4D4D"/>
<path d="M2 2H10V3H2V2Z" fill="#4D4D4D"/>
<path d="M2 4H8V5H2V4Z" fill="#4D4D4D"/>
</svg>
PK
     �TYP�ϻ�P  P     _fileTypeText_old.bmpBMP      N   (                               ��� � � ��� ��� ���   PK
     �vPx��z�  �     manifest.xml﻿<?xml version="1.0" encoding="UTF-8" standalone="yes"?> 
<Picture> 
    <PictureVariant name="_fileTypeText.svg" screenDensity="ldpi"/> 
    <PictureVariant name="_fileTypeText.png" interfaceVariant="version8_2" screenDensity="ldpi"/>
    <PictureVariant name="_fileTypeText.png" interfaceVariant="version8_2_OrdinaryApp" screenDensity="ldpi"/>
    <PictureVariant name="_fileTypeText_old.bmp" interfaceVariant="version8_0" screenDensity="ldpi"/>
</Picture> 
PK 
     Dm�N��dgL  L   $               _fileTypeText.png
         �e�������h� ����h� �PK 
     ��tPkA
�5  5   $           {  _fileTypeText.svg
         ������L&�h� �L&�h� �PK 
     �TYP�ϻ�P  P   $           �  _fileTypeText_old.bmp
         �v�W���O��m� �O��m� �PK 
     �vPx��z�  �   $           b  manifest.xml
         ٷ)�� �]M�h� �]M�h� �PK      �  a    ����������_  ﻿<model xmlns="http://v8.1c.ru/8.1/xdto" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<package targetNamespace="http://v8.1c.ru/8.1/data/txtedt" elementFormQualified="true" attributeFormQualified="false">
		<import namespace="http://v8.1c.ru/8.1/data/ui"/>
		<objectType name="MaketParameter">
			<property name="name" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="val"/>
		</objectType>
		<objectType name="TextDocument">
			<property name="ro" type="xs:boolean" lowerBound="0" form="Attribute"/>
			<property name="url" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="tpl" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="sep" type="xs:string" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/ui" name="out" type="d4p1:UseOutput" lowerBound="0" form="Attribute"/>
			<property name="cod" type="xs:string" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/ui" name="codext" type="d4p1:TextEncoding" lowerBound="0" form="Attribute"/>
			<property name="content" type="xs:string" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/txtedt" name="param" type="d4p1:MaketParameter" lowerBound="0" upperBound="-1"/>
		</objectType>
	</package>
</model>�������������K  ﻿<?xml version="1.0" encoding="UTF-8" ?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"
           xmlns:tns="http://v8.1c.ru/8.1/data/txtedt"
           xmlns:ui="http://v8.1c.ru/8.1/data/ui"
           targetNamespace="http://v8.1c.ru/8.1/data/txtedt"
           elementFormDefault="qualified"
           attributeFormDefault="unqualified">

  <xs:import namespace="http://v8.1c.ru/8.1/data/ui" schemaLocation="../../../xdto/src/res/uiobjects.xsd"/>

  <xs:complexType name="MaketParameter">
      <xs:sequence>
        <xs:element name="val" type="xs:anyType" />
      </xs:sequence>
      <xs:attribute name="name" type="xs:string" />
    </xs:complexType>

    <xs:complexType name="TextDocument">
      <xs:sequence>
        <xs:element name="content" type="xs:string" minOccurs="0" />
        <xs:element name="param" type="tns:MaketParameter" minOccurs="0" maxOccurs="unbounded" />
      </xs:sequence>
      <xs:attribute name="ro"  type="xs:boolean" />
      <xs:attribute name="url" type="xs:string" />
      <xs:attribute name="tpl" type="xs:string" />
      <xs:attribute name="sep" type="xs:string" />
      <xs:attribute name="out" type="ui:UseOutput" />
      <xs:attribute name="cod" type="xs:string" />
      <xs:attribute name="codext" type="ui:TextEncoding" />
    </xs:complexType>
</xs:schema>� E  6 ) � � � � j M �p{���  `  `  `'  `�  `�  `_  `  `�  `?  `  `�  ? � 