  �'      ResB             �5     �   6  6         �  IDS_TYPE_PRESENTATION_FORMATTEDDOCUMENTTYPE IDS_TYPE_PRESENTATION_FORMATTEDDOCUMENTBKMKTYPE IDS_TYPE_PRESENTATION_FORMATTEDDOCUMENTRANGETYPE IDS_TYPE_PRESENTATION_FORMATTEDDOCUMENTITEMCOLLECTIONTYPE IDS_TYPE_PRESENTATION_FORMATTEDDOCUMENTPARAGRAPHTYPE IDS_TYPE_PRESENTATION_FORMATTEDDOCUMENTTEXTTYPE IDS_TYPE_PRESENTATION_FORMATTEDDOCUMENTLINEFEEDTYPE IDS_TYPE_PRESENTATION_FORMATTEDDOCUMENTPICTURETYPE IDS_FTTXT IDS_FTANSITXT IDS_FTHTML IDS_FTPDF IDS_ITTEXT IDS_ITPICTURE IDS_ITSOFTBREAK IDS_PTUSUAL IDS_PTBULLETEDLIST IDS_PTNUMBEREDLIST IDS_INSERTPICTUREERROR IDS_APPENDPICTUREERROR IDS_CHANGEPICTUREERROR IDS_ONLYESERVERMETHOD IDS_FORMATTEDDOCNOTFOUNDERROR model.xdto fmtd.xsd fd.xsd �  P D F   T e x t   H T M L   N o r m a l   A N S I T X T   P i c t u r e   L i n e F e e d   B u l l e t   l i s t   N u m b e r e d   l i s t   F o r m a t t e d   d o c u m e n t   F o r m a t t e d   d o c u m e n t   a r e a   F o r m a t t e d   d o c u m e n t   t e x t   T a b   o f   f o r m a t t e d   d o c u m e n t   F o r m a t t e d   d o c u m e n t   p i c t u r e   F o r m a t t e d   d o c u m e n t   p a r a g r a p h   F o r m a t t e d   d o c u m e n t   l i n e   f e e d   N o   f o r m a t t e d   d o c u m e n t   s p e c i f i e d   I t e m   c o l l e c t i o n   o f   f o r m a t t e d   d o c u m e n t   *�T h e   m e t h o d   i s   o n l y   a v a i l a b l e   o n   t h e   s e r v e r   *�P i c t u r e   c a n   o n l y   b e   i n s e r t e d   o n   t h e   s e r v e r   ,�P i c t u r e   c a n   o n l y   b e   a d d e d   o n   t h e   s e r v e r   s i d e   /�P i c t u r e   c a n   o n l y   b e   m o d i f i e d   o n   t h e   s e r v e r   s i d e   �������������g  ﻿<?xml version="1.0" encoding="UTF-8" ?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"
           xmlns:ui="http://v8.1c.ru/8.1/data/ui"
           xmlns:v81="http://v8.1c.ru/8.1/data/core"
           xmlns:tns="http://v8.1c.ru/8.2/data/formatted-document-internal"
           targetNamespace="http://v8.1c.ru/8.2/data/formatted-document-internal"
           elementFormDefault="qualified"
           attributeFormDefault="unqualified"
           version="1.0">

    <xs:import namespace="http://v8.1c.ru/8.1/data/core" schemaLocation="../../../xdto/src/res/core.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.1/data/core" schemaLocation="../../../xdto/src/res/core.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.1/data/ui" schemaLocation="../../../xdto/src/res/uiobjects.xsd"/>

    <!-- Горизонтальное выравнивание -->
    <xs:simpleType name="TextAlign">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Inherit" />
            <xs:enumeration value="Left" />
            <xs:enumeration value="Center" />
            <xs:enumeration value="Right" />
            <xs:enumeration value="Justify" />
        </xs:restriction>
    </xs:simpleType>
    
    <!-- Жирность шрифта -->
    <xs:simpleType name="FontWeight">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Inherit" />
            <xs:enumeration value="Normal" />
            <xs:enumeration value="Bold" />
        </xs:restriction>
    </xs:simpleType>
    
    <!-- Стиль шрифта -->
    <xs:simpleType name="FontStyle">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Inherit" />
            <xs:enumeration value="Normal" />
            <xs:enumeration value="Italic" />
        </xs:restriction>
    </xs:simpleType>
    
    <!-- Оформление текста -->
    <xs:simpleType name="TextDecoration">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Inherit" />
            <xs:enumeration value="None" />
            <xs:enumeration value="Underline" />
            <xs:enumeration value="LineThrough" />
        </xs:restriction>
    </xs:simpleType>

    <!-- Тип файла -->
    <xs:simpleType name="FormattedDocumentFileType">
        <xs:restriction base="xs:string">
            <xs:enumeration value="TXT" />
            <xs:enumeration value="ANSITXT" />
            <xs:enumeration value="HTML" />
        </xs:restriction>
    </xs:simpleType>

    <!-- Дельта -->
    <xs:complexType name="FormattedDocumentDelta">
        <xs:sequence>
            <!-- m_delta по умолчанию FDOMDelta() -->
            <xs:element name="delta" type="tns:FDOMDelta"/>
        </xs:sequence>
    </xs:complexType>
    
    <!-- Закладка -->
    <xs:complexType name="FormattedDocumentBookmark">
    <xs:sequence>
    </xs:sequence>
    <!-- m_partId по умолчанию kFormattedDocumentMainPartId -->
    <xs:attribute name="part" type="xs:decimal" />
    <!-- m_paragraphId по умолчанию 0 -->
    <xs:attribute name="prgrph" type="xs:decimal" />
    <!-- m_pos по умолчанию 0 -->
    <xs:attribute name="pos" type="xs:decimal" />
    </xs:complexType>

    <!-- Область -->
    <xs:complexType name="FormattedDocumentRange">
        <xs:sequence>
            <xs:element minOccurs="1" maxOccurs="1" name="beginbmk" type="tns:FormattedDocumentBookmark" />
            <xs:element minOccurs="1" maxOccurs="1" name="endbmk" type="tns:FormattedDocumentBookmark" />
        </xs:sequence>
    </xs:complexType>
    
    <!-- Позиция в документе -->
    <xs:complexType name="FDOMAbsPos">
        <xs:sequence>
            <xs:element name="posArr" type="xs:integer"  minOccurs="0" maxOccurs="unbounded" />
        </xs:sequence>
    </xs:complexType>
    
    <!-- Текстовая позиция в документе -->
    <xs:complexType name="FDOMAbsTextPos">
        <xs:complexContent>
            <xs:extension base="tns:FDOMAbsPos">
                <xs:attribute name="offset" type="xs:integer"/>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Границы участка в документе -->
    <xs:complexType name="FDOMAbsRange">
        <xs:sequence>
            <xs:element minOccurs="1" maxOccurs="1" name="startPos" type="tns:FDOMAbsPos" />
            <xs:element minOccurs="1" maxOccurs="1" name="endPos" type="tns:FDOMAbsPos" />
        </xs:sequence>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMCommand">
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMSetPicture">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                    <xs:element name="picture" type="tns:FDOMPicture"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMAddClass">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="cls" type="tns:FDOMClass" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMAddClassName">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                </xs:sequence>
                <xs:attribute name="className" type="xs:string" />
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
        
    <!-- Оформление текста -->
    <xs:complexType name="FDOMAddStyle">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                    <xs:element name="styl" type="tns:FDOMStyle" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMAppendChild">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="parentPos" type="tns:FDOMAbsPos" />
                    <xs:element name="node" type="tns:FDOMNode" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMInsertChildAt">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="parentPos" type="tns:FDOMAbsPos" />
                    <xs:element name="node" type="tns:FDOMNode" />
                </xs:sequence>
                <xs:attribute name="index" type="xs:integer" />
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMInsertSiblingAfter">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="sibling" type="tns:FDOMNode" />
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMInsertSiblingBefore">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="sibling" type="tns:FDOMNode" />
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMInsertStringInText">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsTextPos" />
                </xs:sequence>
                <xs:attribute name="str" type="xs:string" />
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMMergeSubTree">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMMergeTextNode">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMMoveAppendChild">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="parentPos" type="tns:FDOMAbsPos" />
                    <xs:element name="nodePos" type="tns:FDOMAbsPos" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMMoveInsertChildAt">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="parentPos" type="tns:FDOMAbsPos" />
                    <xs:element name="nodePos" type="tns:FDOMAbsPos" />
                </xs:sequence>
                <xs:attribute name="index" type="xs:integer" />
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMMoveInsertSiblingAfter">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="siblingPos" type="tns:FDOMAbsPos" />
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMMoveInsertSiblingBefore">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="siblingPos" type="tns:FDOMAbsPos" />
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMRemoveClassName">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                </xs:sequence>
                <xs:attribute name="className" type="xs:string" />
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMRemoveNode">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMRemoveStringFromText">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsTextPos" />
                </xs:sequence>
                <xs:attribute name="count" type="xs:integer" />
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMSetImageSize">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                </xs:sequence>
                <xs:attribute name="width" type="xs:integer" />
                <xs:attribute name="height" type="xs:integer" />
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMSetLink">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                    <xs:element name="link" type="xs:string" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMSetStyle">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                    <xs:element name="styl" type="tns:FDOMStyle" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMSetTextContent">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                </xs:sequence>
                <xs:attribute name="content" type="xs:string" />
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMSplitSubTree">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                </xs:sequence>
                <xs:attribute name="offset" type="xs:integer" />
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMSplitTextNode">
        <xs:complexContent>
            <xs:extension base="tns:FDOMCommand">
                <xs:sequence>
                    <xs:element name="pos" type="tns:FDOMAbsPos" />
                </xs:sequence>
                <xs:attribute name="offset" type="xs:integer" />
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Оформление текста -->
    <xs:complexType name="FDOMDelta">
        <xs:sequence>
            <!-- m_commands -->
            <xs:element name="commands" type="tns:FDOMCommand" minOccurs="0" maxOccurs="unbounded" />
        </xs:sequence>
    </xs:complexType>

    <!-- Оформление текста -->
    <xs:complexType name="FDOMPicture">
        <!-- url картинки -->
        <xs:attribute name="pictureURL" type="xs:string" />
    </xs:complexType>

    <!-- Оформление текста -->
    <xs:complexType name="FDOMClass">
        <!-- m_className -->
        <xs:attribute name="name" type="xs:string" />
    </xs:complexType>

    <!-- Оформление текста -->
    <xs:complexType name="FDOMFontClass">
        <xs:complexContent>
            <xs:extension base="tns:FDOMClass">
                <xs:sequence>
                    <!-- m_style TODO: 20001542:Q: проверить корректность-->
                    <xs:element name="styl" type="tns:FDOMStyle" minOccurs="0"/>
                    <!-- m_font -->
                    <xs:element name="font" type="ui:Font" minOccurs="0"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Оформление текста -->
    <xs:complexType name="FDOMColorClass">
        <xs:complexContent>
            <xs:extension base="tns:FDOMClass">
                <xs:sequence>
                    <!-- m_style TODO: 20001542:Q: проверить корректность-->
                    <xs:element name="styl" type="tns:FDOMStyle" minOccurs="0"/>
                    <!-- m_color -->
                    <xs:element name="clr" type="ui:Color" minOccurs="0"/>
                    <!-- m_isBackground-->
                    <xs:element name="isBk" type="xs:boolean"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
            
    <!-- Оформление элементов -->
    <xs:complexType name="FDOMStyle">
        <xs:sequence>
            <!-- m_classNameList - список стилевых классов -->
            <xs:element name="clsNmLst" type="xs:string" minOccurs="0" maxOccurs="unbounded"/>
            <!-- m_color по умолчанию пусто -->
            <xs:element name="clr" type="xs:string" minOccurs="0" />            
            <!-- m_backgroundColor по умолчанию пусто -->    
            <xs:element name="bkClr" type="xs:string" minOccurs="0" />
            <!-- m_textAlign по умолчанию пусто -->
            <xs:element name="txtAlign" type="xs:string" minOccurs="0" />
            <!-- m_txtIndent по умолчанию пусто -->
            <xs:element name="txtIndent" type="xs:string" minOccurs="0" />
            <!-- m_lineHeight по умолчанию пусто -->
            <xs:element name="lineHeight" type="xs:string" minOccurs="0" />
            <!-- m_fontFamily по умолчанию пусто -->
            <xs:element name="fontFamily" type="xs:string" minOccurs="0" />
            <!-- m_fontSize по умолчанию пусто -->
            <xs:element name="fontSize" type="xs:string" minOccurs="0" />
            <!-- m_fontScale по умолчанию пусто -->
            <xs:element name="fontScale" type="xs:decimal" minOccurs="0" />
            <!-- m_fontWeight по умолчанию пусто -->
            <xs:element name="fontWeight" type="xs:string" minOccurs="0" />
            <!-- m_fontStyle по умолчанию пусто -->
            <xs:element name="fontStyle" type="xs:string" minOccurs="0" />
            <!-- m_textDecorations - список оформления текста -->
            <xs:element name="textDecorations" type="tns:TextDecoration" minOccurs="0" maxOccurs="unbounded"/>
        </xs:sequence>
    </xs:complexType>

    <!-- Элемент содержимого документа -->
    <xs:complexType name="FDOMNode">
    </xs:complexType>

    <!-- Элемент содержимого документа - "Мягкий" перевод строки -->
    <xs:complexType name="FDOMBreak">
        <xs:complexContent>
            <xs:extension base="tns:FDOMNode">
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Элемент содержимого документа - текст с одинаковым оформлением -->
    <xs:complexType name="FDOMText">
        <xs:complexContent>
            <xs:extension base="tns:FDOMNode">
                <xs:sequence>
                    <xs:element name="textContent" type="xs:string"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Поддерево документа. Внутреннее представление. -->
    <xs:complexType name="FDOMElement">
        <xs:complexContent>
            <xs:extension base="tns:FDOMNode">
                <xs:sequence>
                    <xs:element name="styl" type="tns:FDOMStyle" minOccurs="0"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Элемент содержимого документа - картинка -->
    <xs:complexType name="FDOMImage">
        <xs:complexContent>
            <xs:extension base="tns:FDOMElement">
                <xs:sequence>
                  <!-- m_picture по умолчанию FDOMPicture() -->
                  <xs:element name="picture" type="tns:FDOMPicture"/>
                  <!-- m_width по умолчанию kFormattedDocumentFDOMImageDefWidth -->
                  <xs:element name="width" type="xs:decimal" minOccurs="0" />
                  <!-- m_height по умолчанию kFormattedDocumentFDOMImageDefHeight -->
                  <xs:element name="height" type="xs:decimal" minOccurs="0" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Поддерево документа. Внутреннее представление. -->
    <xs:complexType name="FDOMSubTree">
        <xs:complexContent>
            <xs:extension base="tns:FDOMElement">
                <xs:sequence>
                    <xs:element name="childNodes" type="tns:FDOMNode" minOccurs="0" maxOccurs="unbounded" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Тело документа. Внутреннее представление. -->
    <xs:complexType name="FDOMBody">
        <xs:complexContent>
            <xs:extension base="tns:FDOMSubTree">
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Блок со стилем. Внутреннее представление. -->
    <xs:complexType name="FDOMFormattedBlock">
        <xs:complexContent>
            <xs:extension base="tns:FDOMSubTree">
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Ссылка. Внутреннее представление. -->
    <xs:complexType name="FDOMLink">
        <xs:complexContent>
            <xs:extension base="tns:FDOMSubTree">
                <xs:sequence>
                    <!-- m_link по умолчанию пустой -->
                    <xs:element name="link" type="xs:string" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Ссылка. Внутреннее представление. -->
    <xs:complexType name="FDOMListNode">
        <xs:complexContent>
            <xs:extension base="tns:FDOMSubTree">
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Параграф. Внутреннее представление. -->
    <xs:complexType name="FDOMParagraph">
        <xs:complexContent>
            <xs:extension base="tns:FDOMSubTree">
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Список. Внутреннее представление. -->
    <xs:complexType name="FDOMList">
        <xs:complexContent>
            <xs:extension base="tns:FDOMSubTree">
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Маркированый список. Внутреннее представление. -->
    <xs:complexType name="FDOMBulletedList">
        <xs:complexContent>
            <xs:extension base="tns:FDOMList">
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Нумерованый список. Внутреннее представление. -->
    <xs:complexType name="FDOMNumberedList">
        <xs:complexContent>
            <xs:extension base="tns:FDOMList">
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Содержимое документа -->
    <xs:complexType name="FDOMDocument">
        <!-- m_curFreePictureId по умолчанию 0 -->
        <xs:sequence>
            <xs:element name="body" type="tns:FDOMBody"/>
            <xs:element name="delta" type="tns:FDOMDelta"/>
            <xs:element name="clsLst" type="tns:FDOMClass" minOccurs="0" maxOccurs="unbounded" />
            <!-- m_curFreePictureId по умолчанию 0 -->
            <xs:element name="fpid" type="xs:decimal" />
        </xs:sequence>
    </xs:complexType>

    <!-- Документ -->
    <xs:complexType name="DefaultAppearance">
        <xs:sequence>
            <xs:element name="styl" type="tns:FDOMStyle"/>
            <xs:element name="fontClass" type="tns:FDOMFontClass" minOccurs="0"/>
            <xs:element name="backgroundColorClass" type="tns:FDOMColorClass" minOccurs="0"/>
            <xs:element name="colorClass" type="tns:FDOMColorClass" minOccurs="0"/>
        </xs:sequence>
    </xs:complexType>

    <!-- Документ -->
    <xs:complexType name="FormattedDocument">
        <xs:sequence>
            <!-- instanceId -->
            <xs:element name="id" type="v81:UUID"/>
            <xs:element name="document" type="tns:FDOMDocument"/>
        </xs:sequence>
    </xs:complexType>
    
</xs:schema>

����  ﻿<?xml version="1.0" encoding="UTF-8" ?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"
           xmlns:ui="http://v8.1c.ru/8.1/data/ui"
           xmlns:v81="http://v8.1c.ru/8.1/data/core"
           xmlns:tns="http://v8.1c.ru/8.2/data/formatted-document"
           targetNamespace="http://v8.1c.ru/8.2/data/formatted-document"
           elementFormDefault="qualified"
           attributeFormDefault="unqualified"
           version="1.0">

    <xs:import namespace="http://v8.1c.ru/8.1/data/core" schemaLocation="../../../xdto/src/res/core.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.1/data/core" schemaLocation="../../../xdto/src/res/core.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.1/data/ui" schemaLocation="../../../xdto/src/res/uiobjects.xsd"/>

    <!-- Горизонтальное выравнивание -->
    <xs:simpleType name="HorizontalAlignment">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Left" />
            <xs:enumeration value="Center" />
            <xs:enumeration value="Right" />
            <xs:enumeration value="Justify" />
            <xs:enumeration value="Auto" />
        </xs:restriction>
    </xs:simpleType>
    
    <!-- Тип параграфа -->
    <xs:simpleType name="ParagraphType">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Usual" />
            <xs:enumeration value="Bulleted" />
            <xs:enumeration value="Numbered" />
        </xs:restriction>
    </xs:simpleType>
    
    <!-- Тип файла -->
    <xs:simpleType name="FormattedDocumentFileType">
        <xs:restriction base="xs:string">
            <xs:enumeration value="TXT" />
            <xs:enumeration value="ANSITXT" />
            <xs:enumeration value="HTML" />
            <xs:enumeration value="PDF" />
        </xs:restriction>
    </xs:simpleType>

  <!-- Тип элемента -->
  <xs:simpleType name="FormattedDocumentItemType">
    <xs:restriction base="xs:string">
      <xs:enumeration value="Text" />
      <xs:enumeration value="Picture" />
      <xs:enumeration value="Linefeed" />
    </xs:restriction>
  </xs:simpleType>

    <!-- Закладка -->
    <xs:complexType name="FormattedDocumentBookmark">
    <xs:sequence>
    </xs:sequence>
    <!-- m_partId по умолчанию kFormattedDocumentMainPartId -->
    <xs:attribute name="part" type="xs:decimal" />
    <!-- m_paragraphId по умолчанию 0 -->
    <xs:attribute name="prgrph" type="xs:decimal" />
    <!-- m_pos по умолчанию 0 -->
    <xs:attribute name="pos" type="xs:decimal" />
    </xs:complexType>

    <!-- Область -->
    <xs:complexType name="FormattedDocumentRange">
        <xs:sequence>
            <xs:element minOccurs="1" maxOccurs="1" name="beginbmk" type="tns:FormattedDocumentBookmark" />
            <xs:element minOccurs="1" maxOccurs="1" name="endbmk" type="tns:FormattedDocumentBookmark" />
        </xs:sequence>
    </xs:complexType>
    
    <!-- Оформление текста -->
  <xs:complexType name="TextAppearance">
                <xs:sequence>
      <!-- font по умолчанию kFormattedDocumentTextAppearanceDefFont -->
      <xs:element name="fnt" type="ui:Font" minOccurs="0" />
      <!-- backColor по умолчанию kFormattedDocumentTextAppearanceDefBackColor -->
      <xs:element name="bkClr" type="ui:Color" minOccurs="0" />
      <!-- textColor по умолчанию kFormattedDocumentTextAppearanceDefTextColor -->
      <xs:element name="txtClr" type="ui:Color" minOccurs="0" />
                </xs:sequence>
    </xs:complexType>
    
  <!-- Элемент содержимого документа - текст с одинаковым оформлением -->
    <xs:complexType name="TextElement">
                <xs:sequence>
                <!-- m_text по умолчанию пустой -->
          <xs:element name="text" type="xs:string" minOccurs="0" />
          <!-- m_link по умолчанию пустой -->
          <xs:element name="link" type="xs:string" minOccurs="0" />
          <!-- m_appearance -->
          <xs:element name="apprnc" type="tns:TextAppearance" minOccurs="0" />
                </xs:sequence>
    </xs:complexType>

    <!-- Элемент содержимого документа - картинка -->
  <xs:complexType name="PictureElement">
                <xs:sequence>
      <!-- m_picture по умолчанию V8Picture() -->
      <xs:element name="pic" type="ui:Picture" minOccurs="0" />
      <!-- m_link по умолчанию пустой -->
      <xs:element name="link" type="xs:string" minOccurs="0" />
                </xs:sequence>
    <!-- m_id по умолчанию kFormattedDocumentInvalidPictureId -->
    <xs:attribute name="id" type="xs:decimal" />
    <!-- m_width по умолчанию kFormattedDocumentPictureDefWidth -->
    <xs:attribute name="width" type="xs:decimal" />
    <!-- m_height по умолчанию kFormattedDocumentPictureDefHeight -->
    <xs:attribute name="height" type="xs:decimal" />
    </xs:complexType>
    
  <!-- Элемент содержимого документа - "Мягкий" перевод строки -->
  <xs:complexType name="SoftBreakElement">
                <xs:sequence>
                </xs:sequence>
    </xs:complexType>
    
  <!-- Параграф. Внутреннее представление. -->
  <xs:complexType name="Paragraph">
                <xs:sequence>
      <xs:choice minOccurs="0" maxOccurs="unbounded" >
        <xs:element name="text" type="tns:TextElement" />
        <xs:element name="pic" type="tns:PictureElement" />
        <xs:element name="sbr" type="tns:SoftBreakElement" />
      </xs:choice>
                </xs:sequence>
    <!-- m_id по умолчанию kFormattedDocumentInvalidParagraphId -->
    <xs:attribute name="id" type="xs:decimal" />
    <!-- m_type по умолчанию kFormattedDocumentParagraphDefType -->
    <xs:attribute name="type" type="tns:ParagraphType" />
    <!-- m_hAlign по умолчанию kFormattedDocumentParagraphDefHAlign -->
    <xs:attribute name="hAlign" type="tns:HorizontalAlignment" />
    <!-- m_indent по умолчанию kFormattedDocumentParagraphDefIndent -->
    <xs:attribute name="indent" type="xs:decimal" />
    <!-- m_lineSpacing по умолчанию kFormattedDocumentParagraphDefLineSpacing -->
    <xs:attribute name="lineSpacing" type="xs:decimal" />
    </xs:complexType>

    <!-- Содержимое документа -->
  <xs:complexType name="Content">
        <xs:sequence>
      <xs:element name="p" type="tns:Paragraph" minOccurs="0" maxOccurs="unbounded"/>
    </xs:sequence>
    <!-- m_curFreeId по умолчанию 0 -->
    <xs:attribute name="fid" type="xs:decimal" />
            <!-- m_curFreePictureId по умолчанию 0 -->
    <xs:attribute name="fpid" type="xs:decimal" />
    </xs:complexType>

    <!-- Документ -->
    <xs:complexType name="FormattedDocument">
        <xs:sequence>
            <!-- instanceId -->
            <xs:element name="id" type="v81:UUID"/>
      <xs:element name="content" type="tns:Content"/>
        </xs:sequence>
    </xs:complexType>
    
</xs:schema>

���������K  ﻿<model xmlns="http://v8.1c.ru/8.1/xdto" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<package targetNamespace="http://v8.1c.ru/8.2/data/formatted-document" elementFormQualified="true" attributeFormQualified="false">
		<import namespace="http://v8.1c.ru/8.1/data/core"/>
		<import namespace="http://v8.1c.ru/8.1/data/ui"/>
		<valueType name="FormattedDocumentFileType" base="xs:string">
			<enumeration>TXT</enumeration>
			<enumeration>ANSITXT</enumeration>
			<enumeration>HTML</enumeration>
			<enumeration>PDF</enumeration>
		</valueType>
		<valueType name="FormattedDocumentItemType" base="xs:string">
			<enumeration>Text</enumeration>
			<enumeration>Picture</enumeration>
			<enumeration>Linefeed</enumeration>
		</valueType>
		<valueType name="HorizontalAlignment" base="xs:string">
			<enumeration>Left</enumeration>
			<enumeration>Center</enumeration>
			<enumeration>Right</enumeration>
			<enumeration>Justify</enumeration>
			<enumeration>Auto</enumeration>
		</valueType>
		<valueType name="ParagraphType" base="xs:string">
			<enumeration>Usual</enumeration>
			<enumeration>Bulleted</enumeration>
			<enumeration>Numbered</enumeration>
		</valueType>
		<objectType name="Content">
			<property name="fid" type="xs:decimal" lowerBound="0" form="Attribute"/>
			<property name="fpid" type="xs:decimal" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document" name="p" type="d4p1:Paragraph" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType name="FormattedDocument">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="id" type="d4p1:UUID"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document" name="content" type="d4p1:Content"/>
		</objectType>
		<objectType name="FormattedDocumentBookmark">
			<property name="part" type="xs:decimal" lowerBound="0" form="Attribute"/>
			<property name="prgrph" type="xs:decimal" lowerBound="0" form="Attribute"/>
			<property name="pos" type="xs:decimal" lowerBound="0" form="Attribute"/>
		</objectType>
		<objectType name="FormattedDocumentRange">
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document" name="beginbmk" type="d4p1:FormattedDocumentBookmark"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document" name="endbmk" type="d4p1:FormattedDocumentBookmark"/>
		</objectType>
		<objectType name="Paragraph" ordered="false" sequenced="true">
			<property name="id" type="xs:decimal" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document" name="type" type="d4p1:ParagraphType" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document" name="hAlign" type="d4p1:HorizontalAlignment" lowerBound="0" form="Attribute"/>
			<property name="indent" type="xs:decimal" lowerBound="0" form="Attribute"/>
			<property name="lineSpacing" type="xs:decimal" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document" name="text" type="d4p1:TextElement" lowerBound="0" upperBound="-1"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document" name="pic" type="d4p1:PictureElement" lowerBound="0" upperBound="-1"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document" name="sbr" type="d4p1:SoftBreakElement" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType name="PictureElement">
			<property name="id" type="xs:decimal" lowerBound="0" form="Attribute"/>
			<property name="width" type="xs:decimal" lowerBound="0" form="Attribute"/>
			<property name="height" type="xs:decimal" lowerBound="0" form="Attribute"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/ui" name="pic" type="d4p1:Picture" lowerBound="0"/>
			<property name="link" type="xs:string" lowerBound="0"/>
		</objectType>
		<objectType name="SoftBreakElement"/>
		<objectType name="TextAppearance">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/ui" name="fnt" type="d4p1:Font" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/ui" name="bkClr" type="d4p1:Color" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/ui" name="txtClr" type="d4p1:Color" lowerBound="0"/>
		</objectType>
		<objectType name="TextElement">
			<property name="text" type="xs:string" lowerBound="0"/>
			<property name="link" type="xs:string" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document" name="apprnc" type="d4p1:TextAppearance" lowerBound="0"/>
		</objectType>
	</package>
	<package targetNamespace="http://v8.1c.ru/8.2/data/formatted-document-internal" elementFormQualified="true" attributeFormQualified="false">
		<import namespace="http://v8.1c.ru/8.1/data/core"/>
		<import namespace="http://v8.1c.ru/8.1/data/ui"/>
		<valueType name="FontStyle" base="xs:string">
			<enumeration>Inherit</enumeration>
			<enumeration>Normal</enumeration>
			<enumeration>Italic</enumeration>
		</valueType>
		<valueType name="FontWeight" base="xs:string">
			<enumeration>Inherit</enumeration>
			<enumeration>Normal</enumeration>
			<enumeration>Bold</enumeration>
		</valueType>
		<valueType name="FormattedDocumentFileType" base="xs:string">
			<enumeration>TXT</enumeration>
			<enumeration>ANSITXT</enumeration>
			<enumeration>HTML</enumeration>
		</valueType>
		<valueType name="TextAlign" base="xs:string">
			<enumeration>Inherit</enumeration>
			<enumeration>Left</enumeration>
			<enumeration>Center</enumeration>
			<enumeration>Right</enumeration>
			<enumeration>Justify</enumeration>
		</valueType>
		<valueType name="TextDecoration" base="xs:string">
			<enumeration>Inherit</enumeration>
			<enumeration>None</enumeration>
			<enumeration>Underline</enumeration>
			<enumeration>LineThrough</enumeration>
		</valueType>
		<objectType name="DefaultAppearance">
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="styl" type="d4p1:FDOMStyle"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="fontClass" type="d4p1:FDOMFontClass" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="backgroundColorClass" type="d4p1:FDOMColorClass" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="colorClass" type="d4p1:FDOMColorClass" lowerBound="0"/>
		</objectType>
		<objectType name="FDOMAbsPos">
			<property name="posArr" type="xs:integer" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType name="FDOMAbsRange">
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="startPos" type="d4p1:FDOMAbsPos"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="endPos" type="d4p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMAbsTextPos" base="d3p1:FDOMAbsPos">
			<property name="offset" type="xs:integer" lowerBound="0" form="Attribute"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMAddClass" base="d3p1:FDOMCommand">
			<property name="cls" type="d3p1:FDOMClass"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMAddClassName" base="d3p1:FDOMCommand">
			<property name="className" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="pos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMAddStyle" base="d3p1:FDOMCommand">
			<property name="pos" type="d3p1:FDOMAbsPos"/>
			<property name="styl" type="d3p1:FDOMStyle"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMAppendChild" base="d3p1:FDOMCommand">
			<property name="parentPos" type="d3p1:FDOMAbsPos"/>
			<property name="node" type="d3p1:FDOMNode"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMBody" base="d3p1:FDOMSubTree"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMBreak" base="d3p1:FDOMNode"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMBulletedList" base="d3p1:FDOMList"/>
		<objectType name="FDOMClass">
			<property name="name" type="xs:string" lowerBound="0" form="Attribute"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMColorClass" base="d3p1:FDOMClass">
			<property name="styl" type="d3p1:FDOMStyle" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/ui" name="clr" type="d4p1:Color" lowerBound="0"/>
			<property name="isBk" type="xs:boolean"/>
		</objectType>
		<objectType name="FDOMCommand"/>
		<objectType name="FDOMDelta">
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="commands" type="d4p1:FDOMCommand" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType name="FDOMDocument">
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="body" type="d4p1:FDOMBody"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="delta" type="d4p1:FDOMDelta"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="clsLst" type="d4p1:FDOMClass" lowerBound="0" upperBound="-1"/>
			<property name="fpid" type="xs:decimal"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMElement" base="d3p1:FDOMNode">
			<property name="styl" type="d3p1:FDOMStyle" lowerBound="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMFontClass" base="d3p1:FDOMClass">
			<property name="styl" type="d3p1:FDOMStyle" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/ui" name="font" type="d4p1:Font" lowerBound="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMFormattedBlock" base="d3p1:FDOMSubTree"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMImage" base="d3p1:FDOMElement">
			<property name="picture" type="d3p1:FDOMPicture"/>
			<property name="width" type="xs:decimal" lowerBound="0"/>
			<property name="height" type="xs:decimal" lowerBound="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMInsertChildAt" base="d3p1:FDOMCommand">
			<property name="index" type="xs:integer" lowerBound="0" form="Attribute"/>
			<property name="parentPos" type="d3p1:FDOMAbsPos"/>
			<property name="node" type="d3p1:FDOMNode"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMInsertSiblingAfter" base="d3p1:FDOMCommand">
			<property name="sibling" type="d3p1:FDOMNode"/>
			<property name="pos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMInsertSiblingBefore" base="d3p1:FDOMCommand">
			<property name="sibling" type="d3p1:FDOMNode"/>
			<property name="pos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMInsertStringInText" base="d3p1:FDOMCommand">
			<property name="str" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="pos" type="d3p1:FDOMAbsTextPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMLink" base="d3p1:FDOMSubTree">
			<property name="link" type="xs:string"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMList" base="d3p1:FDOMSubTree"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMListNode" base="d3p1:FDOMSubTree"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMMergeSubTree" base="d3p1:FDOMCommand">
			<property name="pos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMMergeTextNode" base="d3p1:FDOMCommand">
			<property name="pos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMMoveAppendChild" base="d3p1:FDOMCommand">
			<property name="parentPos" type="d3p1:FDOMAbsPos"/>
			<property name="nodePos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMMoveInsertChildAt" base="d3p1:FDOMCommand">
			<property name="index" type="xs:integer" lowerBound="0" form="Attribute"/>
			<property name="parentPos" type="d3p1:FDOMAbsPos"/>
			<property name="nodePos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMMoveInsertSiblingAfter" base="d3p1:FDOMCommand">
			<property name="siblingPos" type="d3p1:FDOMAbsPos"/>
			<property name="pos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMMoveInsertSiblingBefore" base="d3p1:FDOMCommand">
			<property name="siblingPos" type="d3p1:FDOMAbsPos"/>
			<property name="pos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType name="FDOMNode"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMNumberedList" base="d3p1:FDOMList"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMParagraph" base="d3p1:FDOMSubTree"/>
		<objectType name="FDOMPicture">
			<property name="pictureURL" type="xs:string" lowerBound="0" form="Attribute"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMRemoveClassName" base="d3p1:FDOMCommand">
			<property name="className" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="pos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMRemoveNode" base="d3p1:FDOMCommand">
			<property name="pos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMRemoveStringFromText" base="d3p1:FDOMCommand">
			<property name="count" type="xs:integer" lowerBound="0" form="Attribute"/>
			<property name="pos" type="d3p1:FDOMAbsTextPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMSetImageSize" base="d3p1:FDOMCommand">
			<property name="width" type="xs:integer" lowerBound="0" form="Attribute"/>
			<property name="height" type="xs:integer" lowerBound="0" form="Attribute"/>
			<property name="pos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMSetLink" base="d3p1:FDOMCommand">
			<property name="pos" type="d3p1:FDOMAbsPos"/>
			<property name="link" type="xs:string"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMSetPicture" base="d3p1:FDOMCommand">
			<property name="pos" type="d3p1:FDOMAbsPos"/>
			<property name="picture" type="d3p1:FDOMPicture"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMSetStyle" base="d3p1:FDOMCommand">
			<property name="pos" type="d3p1:FDOMAbsPos"/>
			<property name="styl" type="d3p1:FDOMStyle"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMSetTextContent" base="d3p1:FDOMCommand">
			<property name="content" type="xs:string" lowerBound="0" form="Attribute"/>
			<property name="pos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMSplitSubTree" base="d3p1:FDOMCommand">
			<property name="offset" type="xs:integer" lowerBound="0" form="Attribute"/>
			<property name="pos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMSplitTextNode" base="d3p1:FDOMCommand">
			<property name="offset" type="xs:integer" lowerBound="0" form="Attribute"/>
			<property name="pos" type="d3p1:FDOMAbsPos"/>
		</objectType>
		<objectType name="FDOMStyle">
			<property name="clsNmLst" type="xs:string" lowerBound="0" upperBound="-1"/>
			<property name="clr" type="xs:string" lowerBound="0"/>
			<property name="bkClr" type="xs:string" lowerBound="0"/>
			<property name="txtAlign" type="xs:string" lowerBound="0"/>
			<property name="txtIndent" type="xs:string" lowerBound="0"/>
			<property name="lineHeight" type="xs:string" lowerBound="0"/>
			<property name="fontFamily" type="xs:string" lowerBound="0"/>
			<property name="fontSize" type="xs:string" lowerBound="0"/>
			<property name="fontScale" type="xs:decimal" lowerBound="0"/>
			<property name="fontWeight" type="xs:string" lowerBound="0"/>
			<property name="fontStyle" type="xs:string" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="textDecorations" type="d4p1:TextDecoration" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMSubTree" base="d3p1:FDOMElement">
			<property name="childNodes" type="d3p1:FDOMNode" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="FDOMText" base="d3p1:FDOMNode">
			<property name="textContent" type="xs:string"/>
		</objectType>
		<objectType name="FormattedDocument">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="id" type="d4p1:UUID"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="document" type="d4p1:FDOMDocument"/>
		</objectType>
		<objectType name="FormattedDocumentBookmark">
			<property name="part" type="xs:decimal" lowerBound="0" form="Attribute"/>
			<property name="prgrph" type="xs:decimal" lowerBound="0" form="Attribute"/>
			<property name="pos" type="xs:decimal" lowerBound="0" form="Attribute"/>
		</objectType>
		<objectType name="FormattedDocumentDelta">
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="delta" type="d4p1:FDOMDelta"/>
		</objectType>
		<objectType name="FormattedDocumentRange">
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="beginbmk" type="d4p1:FormattedDocumentBookmark"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.2/data/formatted-document-internal" name="endbmk" type="d4p1:FormattedDocumentBookmark"/>
		</objectType>
	</package>
</model>��� Ri�����;����(	L � L� �|   ������ `� `�  `  `
  `  `  `m `  `&  `  `A `/  `;  `  `�  ` `�  `�  `�  `\  `t  `I  `� � �" 