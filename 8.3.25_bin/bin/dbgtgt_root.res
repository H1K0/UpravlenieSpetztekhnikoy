  �'      ResB             s     �   =s  =s         :  IDS_UNKNOWN_MODULE_NAME IDS_UNKNOWN_METHOD_NAME IDS_AUTHENTICATIONGUARDNOTFINDED IDS_TERMINATED_FROM_DEBUGGER IDS_RESTARTED_FROM_DEBUGGER IDS_TARGETREGISTRETION_IN_DEBUGGER_ERROR IDS_NOT_SPECIFIED_ID_OF_DBGAREA IDS_CALC_SRC_ERROR_FIRST_IS_NOT_EXPRESSION IDS_CALC_SRC_ERROR_FIRST_IS_PROPERTY IDS_CALC_SRC_ERROR_FIRST_IS_INDEX IDS_CALC_SRC_ERROR_PROPNAME_NOT_SPECIFIED IDS_CALC_SRC_ERROR_NOT_CONTEXT_VALUE IDS_CALC_SRC_ERROR_NOT_COLLECTION_VALUE IDS_CALC_SRC_ERROR_INVALID_INDEX IDS_LOCALVARVALUE_GET_ERROR IDS_LOCALVARIABLE_NOT_FINDED IDS_EXPRESSION_EVAL_PROHIBIDED_BY_SERVER IDS_CALC_SRC_ERROR_NP_SRCDATA_TO_CALC IDS_CALC_SRC_ERROR_INVALID_CALLSTACK_INDEX IDS_CALC_NOT_SPECIFIED_LOCALVAR_OR_PROPNAME_TO_MODIFY IDS_COLLECTIONNUTSUPPORTCHANGEVALUEOFITEM IDS_UNKNOWNPROPERTYNAME IDS_PROPERTY_IS_READONLY IDS_ERROR_DURING_EVALUATION model.xdto dbgtgtData.xsd dbgtgtRequestResponse.xsd dbgtgtRemoteRequestResponse.xsd dbgtgtErrorInfo.xsd dbgtgtBP.xsd dbgtgtCommands.xsd ���  U n k n o w n   m o d u l e   U n k n o w n   p r o c e d u r e   U n k n o w n   p r o p e r t y   n a m e   T h e   p r o p e r t y   i s   r e a d - o n l y   I n v a l i d   c a l l   s t a c k   i t e m   i n d e x   C a n n o t   g e t   l o c a l   v a r i a b l e   v a l u e   S e s s i o n   t e r m i n a t e d   b y   d e b u g g e r .   A u t h e n t i c a t i o n   m e c h a n i s m   n o t   f o u n d   C a n n o t   f i n d   l o c a l   v a r i a b l e   b y   n a m e   D e b u g   i t e m   f i l t e r   I D   i s   n o t   s p e c i f i e d   *�C a n n o t   r e g i s t e r   t h e   d e b u g   i t e m   i n   D e b u g g e r   0�E x p r e s s i o n   e r r o r :   p r o p e r t y   n a m e   i s   n o t   s p e c i f i e d   3�E x p r e s s i o n   e r r o r :   a n   i n d e x   c a n n o t   b e   t h e   f i r s t   i t e m   5�E x p r e s s i o n   e r r o r :   a   p r o p e r t y   c a n n o t   b e   t h e   f i r s t   i t e m   6�S o u r c e   d a t a   f o r   e v a l u a t i n g   e x p r e s s i o n   i s   n o t   a v a i l a b l e   6�E x p r e s s i o n   e r r o r :   c o n t e x t   p r o p e r t i e s   a r e   n o t   s u p p o r t e d   :�E x p r e s s i o n   e r r o r :   a n   e x p r e s s i o n   c a n   o n l y   b e   t h e   f i r s t   i t e m   =�E x p r e s s i o n   c a l c u l a t i o n   i s   d e n i e d   i n   t h e   d e b u g   s e r v e r   s e t t i n g s   >�T h e   c o l l e c t i o n   d o e s   n o t   s u p p o r t   m o d i f i c a t i o n   o f   e l e m e n t   v a l u e s   >�E x p r e s s i o n   e r r o r :   s e l e c t i n g   e l e m e n t s   b y   i n d e x   i s   n o t   s u p p o r t e d   C�E x p r e s s i o n   e r r o r :   c a n n o t   g o   t o   t h e   e l e m e n t   w i t h   t h e   s p e c i f i e d   i n d e x   I�L o c a l   v a r i a b l e   o r   p r o p e r t y   w h o s e   v a l u e   s h o u l d   b e   c h a n g e d   i s   n o t   s p e c i f i e d   I�T h e   s e s s i o n   i s   t e r m i n a t e d   b e c a u s e   t h e   d e b u g g e r   r e s t a r t e d   t h e   a p p l i c a t i o n .   R�A n   e r r o r   o c c u r r e d   w h e n   c a l c u l a t i n g   t h e   o u t p u t   e x p r e s s i o n   f o r   t h e   b r e a k p o i n t : % s :   % s   �����  ﻿<?xml version="1.0" encoding="UTF-8" ?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"
           xmlns:tns="http://v8.1c.ru/8.3/debugger/dbgtgtBP"
           xmlns:core="http://v8.1c.ru/8.1/data/core"
           xmlns:dbgbase="http://v8.1c.ru/8.3/debugger/debugBaseData"
           xmlns:dbgcalc="http://v8.1c.ru/8.3/debugger/debugCalculations"
           xmlns:dbgtgtErrorInfo="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo"
           targetNamespace="http://v8.1c.ru/8.3/debugger/dbgtgtBP"
           elementFormDefault="qualified"
           attributeFormDefault="unqualified"
           version="1.0">

    <xs:import namespace="http://v8.1c.ru/8.1/data/core" schemaLocation="../../../xdto/src/res/core.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugBaseData" schemaLocation="../../../dbgbase/src/res/debugBaseData.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugCalculations" schemaLocation="../../../dbgbase/src/res/debugCalculations.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo" schemaLocation="./dbgtgtErrorInfo.xsd"/>

    <!-- ========================================================= -->
    <!-- Результаты вычисления условия срабатывания точки останова -->
    <!-- ========================================================= -->

    <!-- Результаты вычисления условия срабатывания точки останова -->
    <xs:simpleType name="BPConditionState">
        <xs:restriction base="xs:string">
            <!-- Результат проверки неизвестен -->
            <xs:enumeration value="Unkwnown" />
            <!-- Результат проверки условия есть Истина - точка останова должна сработать -->
            <xs:enumeration value="true" />
            <!-- Результат проверки условия есть Ложь - точка останова не должна сработать -->
            <xs:enumeration value="false" />
            <!-- При проверке условия возникли ошибки компиляции или ран-тайм - ошибки -->
            <xs:enumeration value="error" />
        </xs:restriction>
    </xs:simpleType>

    <!-- Информация о проверке условия срабатывания точки останова-->
    <xs:complexType name="CheckBPConditionResult">
        <xs:sequence>
            <!-- Результат проверки условия -->
            <xs:element name="condResult" type="tns:BPConditionState"/>
            <xs:choice>
                <!-- Информация по ошибке компиляции (для передачи из веб-клиента) -->
                <xs:element name="compileErrorInfo" type="dbgtgtErrorInfo:CompileErrorInfo" minOccurs="0" maxOccurs="1"/>
                <!-- Информация по ран-тайм ошибке (для передачи из веб-клиента) -->
                <xs:element name="runtimeErrorInfo" type="dbgtgtErrorInfo:RunTimeErrorInfo" minOccurs="0" maxOccurs="1"/>
                <!-- Информация об ошибке (для передачи из C++ - клиента) -->
                <xs:element name="exception" type="core:GenericException" minOccurs="0" maxOccurs="1"/>
            </xs:choice>
        </xs:sequence>
    </xs:complexType>

    <!-- Информация о вычислении сообщения точки останова-->
    <xs:complexType name="MessageBPConditionResult">
        <xs:sequence>
            <!-- Результат проверки условия -->
            <xs:element name="condResult" type="xs:string"/>
            <xs:choice>
                <!-- Информация по ошибке компиляции (для передачи из веб-клиента) -->
                <xs:element name="compileErrorInfo" type="dbgtgtErrorInfo:CompileErrorInfo" minOccurs="0" maxOccurs="1"/>
                <!-- Информация по ран-тайм ошибке (для передачи из веб-клиента) -->
                <xs:element name="runtimeErrorInfo" type="dbgtgtErrorInfo:RunTimeErrorInfo" minOccurs="0" maxOccurs="1"/>
                <!-- Информация об ошибке (для передачи из C++ - клиента) -->
                <xs:element name="exception" type="core:GenericException" minOccurs="0" maxOccurs="1"/>
            </xs:choice>
        </xs:sequence>
    </xs:complexType>

</xs:schema>
XQ  ﻿<?xml version="1.0" encoding="UTF-8" ?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"
           xmlns:tns="http://v8.1c.ru/8.3/debugger/dbgtgtCommands"
           xmlns:core="http://v8.1c.ru/8.1/data/core"
           xmlns:dbgbase="http://v8.1c.ru/8.3/debugger/debugBaseData"
           xmlns:dbgbp="http://v8.1c.ru/8.3/debugger/debugBreakpoints"
           xmlns:debugRTEFilter="http://v8.1c.ru/8.3/debugger/debugRTEFilter"
           xmlns:dbgtgtData="http://v8.1c.ru/8.3/debugger/dbgtgtData"
           xmlns:debugMeasure="http://v8.1c.ru/8.3/debugger/debugMeasure"
           xmlns:debugForegroundData="http://v8.1c.ru/8.3/debugger/debugForegroundData"
           targetNamespace="http://v8.1c.ru/8.3/debugger/dbgtgtCommands"
           elementFormDefault="qualified"
           attributeFormDefault="unqualified"
           version="1.0">

    <xs:import namespace="http://v8.1c.ru/8.1/data/core" schemaLocation="../../../xdto/src/res/core.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugBaseData" schemaLocation="../../../dbgbase/src/res/debugBaseData.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugCalculations" schemaLocation="../../../dbgbase/src/res/debugCalculations.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugBreakpoints" schemaLocation="../../../dbgbase/src/res/debugBreakpoints.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugRTEFilter" schemaLocation="../../../dbgbase/src/res/debugRTEFilter.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugMeasure" schemaLocation="../../../dbgbase/src/res/debugMeasure.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugForegroundData" schemaLocation="../../../dbgbase/src/res/debugForegroundData.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtData" schemaLocation="dbgtgtData.xsd"/>

    <!-- ============================================================================ -->
    <!-- Команды и данные, команды, поступающие в предмет отладки от сервера отладки  -->
    <!-- ============================================================================ -->

    <!-- Команды, поступающие в предмет отладки от сервера отладки -->
    <xs:simpleType name="DBGTGTExtCmds">
        <xs:restriction base="xs:string">
            <!-- Неизвестное состояние -->
            <xs:enumeration value="unknown" />
            <!-- Изменилась версия настроек окружения ЦУПа предмета отладки -->
            <xs:enumeration value="EnvStateVersion" />
            <!-- Изменилась информация об останове на следующей строке кода -->
            <xs:enumeration value="BreakOnNextLine" />
            <!-- Изменилась версия данных пошаговой отладки -->
            <xs:enumeration value="StepDebuggingDataVer" />
            <!-- Изменился состав точек останова -->
            <xs:enumeration value="Breakpoints" />
            <!-- Изменилась настройка обработки ран-тайм - ошибок -->
            <xs:enumeration value="RTEProcessing" />
            <!-- Изменилось состояние флага замера производительности -->
            <xs:enumeration value="MeasureMode" />
            <!-- Изменился состав недоступных для отладки модулей -->
            <xs:enumeration value="InaccessModules" />
            <!-- Поступила просьба предоставить стек вызовов -->
            <xs:enumeration value="GetCallStack" />
            <!-- Поступила просьба предоставить результаты замера производительности -->
            <xs:enumeration value="GetMeasureResults" />
            <!-- Поступила просьба очистить данные пошаговой отладки -->
            <xs:enumeration value="ClearStepDebuggingInfo" />
            <!-- Поступила просьба завершить работу предмета отладки -->
            <xs:enumeration value="Terminate" />
            <!-- Поступила просьба перезапустить приложение с предметом отладки -->
            <xs:enumeration value="Restart" />
            <!-- Поступила информация о времени выполнения кода на сервере -->
            <xs:enumeration value="ServerCallFullTime" />
        
            <!-- Команды со стороны предмета отладки серверу отладки -->
        
            <!-- Стек вызовов -->
            <xs:enumeration value="SetCallStack" />
            <!-- Результат замера производительности -->
            <xs:enumeration value="MeasureResults" />
            <!-- Подтверждение обработки времени работы кода на сервере -->
            <xs:enumeration value="ServerCallFullTimeConfirmation" />
            <!-- Передача информации о состоянии разделителей -->
            <xs:enumeration value="DSChangeData" />

            <!-- Команды активизации приложений -->

            <!-- Установить помогальник для активизации окна партнера по соединению -->
            <xs:enumeration value="ForegroundHelperSet" />
            <!-- Запросить помогальник для активизации окна партнера по соединению -->
            <xs:enumeration value="ForegroundHelperRequest" />
            <!-- Выполнить активизацию окна партнера по соединению переданным помогальником -->
            <xs:enumeration value="ForegroundHelperProcess" />

        </xs:restriction>
    </xs:simpleType>

    <!-- Базовый тип для описания информации о команде -->
    <xs:complexType name="DBGTGTExtCmdBase">
        <xs:sequence>
            <!-- Идентификатор команды для UI+ части отладчика -->
            <xs:element name="cmdID" type="tns:DBGTGTExtCmds"/>
            <!-- Уникальный идентификатор предмета отладки -->
            <xs:element name="targetUUID" type="core:UUID" minOccurs="0" maxOccurs="1"/>
        </xs:sequence>
    </xs:complexType>

    <!-- Базовый тип для описания информации о команде, включающей идентификатор отправителя команды -->
    <xs:complexType name="DBGTGTExtCmdAndSenderIDBase">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Идентификатор отправителя команды -->
                    <xs:element name="senderID" type="core:UUID" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Изменилась версия настроек окружения ЦУПа предмета отладки -->
    <xs:complexType name="DBGTGTExtCmdEnvStateVersion">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Версия настроек окружения ЦУПа предмета отладки -->
                    <xs:element name="envStateVersion" type="core:UUID" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Изменилась информация об останове на следующей строке кода -->
    <xs:complexType name="DBGTGTExtCmdBreakOnNextLine">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Признак необходимости останова на следующей стркое кода -->
                    <xs:element name="breakOnNextLine" type="xs:boolean" minOccurs="1" maxOccurs="1"/>
                    <!-- Признак необходимости останова на следующей стркое кода -->
                    <xs:element name="triggeredTargetID" type="dbgbase:DebugTargetIdStr" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Изменилась версия данных пошаговой отладки -->
    <xs:complexType name="DBGTGTExtCmdStepDebuggingDataVer">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Версия данных пошаговой отладки -->
                    <xs:element name="stepDebuggingDataVer" type="core:UUID" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
   
    <!-- команда с информацией о точках останова -->
    <xs:complexType name="DBGTGTExtCmdBreakpoints">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Пространство точек останова -->
                    <xs:element name="bpWorkspace" type="dbgbp:BPWorkspaceInternal" minOccurs="0" maxOccurs="1"/>
                    <!-- Версия -->
                    <xs:element name="version" type="core:UUID" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Команда с информацией о настройке обработок ран-тайм - ошибок -->
    <xs:complexType name="DBGTGTExtCmdRTEProcessing">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Способ обработки ран-тайм - ошибки -->
                    <xs:element name="rteProcessing" type="debugRTEFilter:RteFilterStorage" minOccurs="1" maxOccurs="1"/>
                    <!-- Версия -->
                    <xs:element name="version" type="core:UUID" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Команда с информацией о состоянии флага замера производительности -->
    <xs:complexType name="DBGTGTExtCmdMeasureMode">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Идентификатор сессии замера производительности -->
                    <xs:element name="measureMode" type="core:UUID"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Команда с информацией о составе недоступных модулей -->
    <xs:complexType name="DBGTGTExtCmdInaccessModules">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Идентификатор модуля -->
                    <xs:element name="moduleID" type="dbgbase:BSLModuleIdInternal" minOccurs="0" />
                    <!-- Версия -->
                    <xs:element name="version" type="core:UUID" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Команда с просьбой вернуть стек вызовов -->
    <xs:complexType name="DBGTGTExtCmdGetCallStack">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Идентификатор получателя стека вызовов -->
                    <xs:element name="callStackReceiverID" type="core:UUID" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Команда с просьбой очистить данные пошаговой отладки -->
    <xs:complexType name="DBGTGTExtCmdClearStepDebuggingInfo">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Команда с просьбой завершить работу предмета отладки -->
    <xs:complexType name="DBGTGTExtCmdTerminate">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Команда с просьбой перезапустить приложение с предметом отладки -->
    <xs:complexType name="DBGTGTExtCmdRestart">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Команда с информацией о времени выполнения кода на сервере-->
    <xs:complexType name="DBGTGTExtCmdSrvCallFullTime">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdAndSenderIDBase">
                <xs:sequence>
                    <!-- Идентификатор сессии замера производительности -->
                    <xs:element name="measureSessionID" type="core:UUID" minOccurs="1" maxOccurs="1"/>
                    <!-- Время выполнения кода на сервере -->
                    <xs:element name="serverCallFullTime" type="xs:decimal" minOccurs="1" maxOccurs="1"/>
                    <!-- Время простоя в отладчике -->
                    <xs:element name="serverCallTimeInDebugger" type="xs:decimal" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- =================================================================== -->
    <!-- Команды, передаваемые со стороны предмета отладки на сервер отладки -->
    <!-- =================================================================== -->
    
    <!-- Команда со стеком вызовов -->
    <xs:complexType name="DBGTGTExtCmdSetCallStack">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Идентификатор предмета отладки в виде строки -->
                    <xs:element name="targetIDStr" type="dbgbase:DebugTargetIdStr"/>
                    <!-- Стек вызова -->
                    <xs:element name="callStack" type="dbgtgtData:CallStackInfo" minOccurs="0" maxOccurs="1"/>
                    <!-- Идентификатор получателя стека вызовов -->
                    <xs:element name="callStackReceiverID" type="core:UUID" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Команда с результатами замера производительности -->
    <xs:complexType name="DBGTGTExtCmdMeasureResults">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Идентификатор предмета отладки в виде строки -->
                    <xs:element name="targetIDStr" type="dbgbase:DebugTargetIdStr"/>
                    <!-- Результат замера производительности -->
                    <xs:element name="measure" type="debugMeasure:PerformanceInfoMain" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Команда с информацией о подтверждении обработки времени работы кода на сервере-->
    <xs:complexType name="DBGTGTExtCmdSrvCallFullTimeConfirm">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Идентификатор получателя команды -->
                    <xs:element name="recipientID" type="core:UUID" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Команда для передачи на сервер информации об изменившихся значениях разделителей из пинговочного потока -->
    <xs:complexType name="DBGTGTExtCmdDSChangeData">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Информация об изменении значения разделителей для сеанса в ИБ -->
                    <xs:element name="seanceDSState" type="dbgtgtData:DBGTGTRemoteCallDSInfoItem" minOccurs="0" maxOccurs="unbounded"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Установить помогальник для активизации окна партнера по соединению -->
    <xs:complexType name="DBGTGTExtCmdForegroundHelperSet">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Данные для активации окна -->
                    <xs:element name="data" type="debugForegroundData:ForegroundWindowData" minOccurs="0" maxOccurs="1"/>
                    <!-- Идентификатор получателя события -->
                    <xs:element name="recipientID" type="core:UUID" minOccurs="0" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Запросить помогальник для активизации окна партнера по соединению -->
    <xs:complexType name="DBGTGTExtCmdForegroundHelperRequest">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdAndSenderIDBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Выполнить активизацию окна партнера по соединению переданным помогальником -->
    <xs:complexType name="DBGTGTExtCmdForegroundHelperProcess">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTExtCmdBase">
                <xs:sequence>
                    <!-- Данные для активации окна -->
                    <xs:element name="data" type="debugForegroundData:ForegroundWindowData" minOccurs="0" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
   

</xs:schema>
����k'  ﻿<?xml version="1.0" encoding="UTF-8" ?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"
           xmlns:tns="http://v8.1c.ru/8.3/debugger/dbgtgtData"
           xmlns:core="http://v8.1c.ru/8.1/data/core"
           xmlns:dbgbase="http://v8.1c.ru/8.3/debugger/debugBaseData"
           xmlns:dbgcalc="http://v8.1c.ru/8.3/debugger/debugCalculations"
           targetNamespace="http://v8.1c.ru/8.3/debugger/dbgtgtData"
           elementFormDefault="qualified"
           attributeFormDefault="unqualified"
           version="1.0">

    <xs:import namespace="http://v8.1c.ru/8.1/data/core" schemaLocation="../../../xdto/src/res/core.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugBaseData" schemaLocation="../../../dbgbase/src/res/debugBaseData.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugCalculations" schemaLocation="../../../dbgbase/src/res/debugCalculations.xsd"/>

    <!-- =============================================== -->
    <!-- Описание результата из onNextLine               -->
    <!-- =============================================== -->

    <!-- Режим использования параметра команды -->
    <!-- См. enum NextLineCallResult -->
    <xs:simpleType name="NextLineCallResult">
        <xs:restriction base="xs:string">
            <!-- Не инициализированное состояние -->
            <xs:enumeration value="Unknown" />
            <!-- Вызывать заново -->
            <xs:enumeration value="ReCall" />
            <!-- Нужно вычислить выражение -->
            <xs:enumeration value="EvalExpr" />
            <!-- Нужно определить состав и вычислить значения локальных переменных -->
            <xs:enumeration value="EvalLocalVariables" />
            <!-- Нужно изменить значение локальной переменной или свойства контекста -->
            <xs:enumeration value="ModifyValue" />
            <!-- Нужно проверить условие срабатывания точки останова -->
            <xs:enumeration value="BPEvalExpr" />
            <!-- Нужно продолжить исполнение кода -->
            <xs:enumeration value="Continue" />
            <!-- Нужно завершить работу предмета отладки -->
            <xs:enumeration value="Terminate" />
            <!-- Нужно перезапустить приложение с предметом отладки -->
            <xs:enumeration value="Restart" />
            <!-- Нужно вычислить сообщение точки останова -->
            <xs:enumeration value="BPMessageEval" />
        </xs:restriction>
    </xs:simpleType>

    <!-- ====================================================== -->
    <!-- описание действий после передачи управления в отладчик -->
    <!-- ====================================================== -->
    <xs:complexType name="NextLineResult">
        <xs:sequence>
            <!-- Признак необходимости генерирования onNextLine при выходе из стек-фрейма -->
            <xs:element name="forceExecLineNum" type="xs:boolean" minOccurs="0" maxOccurs="1"/>
            <!-- Что нужно делать -->
            <xs:element name="variant" type="tns:NextLineCallResult"/>
            <!-- Выражение для вычисления -->
            <xs:element name="expr" type="dbgcalc:CalculationSourceDataStorage" minOccurs="0" maxOccurs="unbounded"/>
            <!-- Описание нового значения локальной переменной или свойства контекста -->
            <xs:element name="newValueInfo" type="dbgcalc:NewValueInfo" minOccurs="0" maxOccurs="1"/>
        </xs:sequence>
    </xs:complexType>

    <!-- ========================================================================== -->
    <!-- описание действий после передачи управления в отладчик для отладки по HTTP -->
    <!-- ========================================================================== -->
    <xs:complexType name="NextLineResultHTTP">
        <xs:complexContent>
            <xs:extension base="tns:NextLineResult">
                <xs:sequence>
                    <!-- Идентификатор события -->
                    <xs:element name="requestQueueID" type="core:UUID" minOccurs="0" maxOccurs="1"/>
                    <!-- Уточнение для способа продолжения работы -->
                    <xs:element name="debugStepAction" type="dbgbase:DebugStepAction" default="Unknown" />
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- =============================================== -->
    <!--  Информация о параметрах элемента стека вызовов -->
    <!-- =============================================== -->
    <!-- Информация о параметре -->
    <xs:complexType name="ParameterInfo">
        <xs:sequence>
            <!-- Имя формального параметра -->
            <xs:element name="name" type="xs:string"/>
            <!-- Текстовое предствление значения фактического параметра -->
            <xs:element name="pres" type="xs:base64Binary"/>
        </xs:sequence>
    </xs:complexType>

    <!-- Список параметров -->
    <xs:complexType name="ParametersInfo">
        <xs:sequence>
            <!-- Информация о параметре -->
            <xs:element name="param" type="tns:ParameterInfo" minOccurs="0" maxOccurs="unbounded"/>
        </xs:sequence>
    </xs:complexType>

    <!-- Информация о элементе стека вызовов -->
    <xs:complexType name="CallStackItemInfo">
        <xs:sequence>
            <!-- Уникальный идентификатор стек-фрейма -->
            <xs:element name="id" type="xs:string" minOccurs="0"/>
            <!-- Имя модуля -->
            <xs:element name="mname" type="xs:string" minOccurs="0"/>
            <!-- Идентификатор модуля -->
            <xs:element name="mid" type="xs:string" minOccurs="0"/>
            <!-- Имя функции -->
            <xs:element name="fname" type="xs:string" minOccurs="0"/>
            <!-- Номер строки -->
            <xs:element name="lineNo" type="xs:decimal"/>
            <!-- Определение того, образован ли уровень стека вызовов входом в тело отлаживаемого модуля или вызовом процедуры/функции -->
            <xs:element name="isModuleEntry" type="xs:boolean"/>
            <!-- Фрейм из уже умершего родителя "асинхронного" вызов -->
            <xs:element name="thisFrameIsFromAsyncTopStack" type="xs:boolean"/>
            <!-- В этой точке и сделан асинхронный вызов -->
            <xs:element name="isAsyncPoint" type="xs:boolean"/>
            <!-- Состояние стек-фрейм -->
            <xs:element name="state" type="xs:decimal"/>
            <!-- Информация о параметрах -->
            <xs:element name="params" type="tns:ParametersInfo" minOccurs="0"/>
        </xs:sequence>
    </xs:complexType>

    <!-- Стек вызовов -->
    <xs:complexType name="CallStackInfo">
        <xs:sequence>
            <!-- Элемент стека вызовов -->
            <xs:element name="item" type="tns:CallStackItemInfo" minOccurs="0" maxOccurs="unbounded"/>
        </xs:sequence>
    </xs:complexType>

    <!-- =============================================== -->
    <!--  Информация о состоянии разделителей            -->
    <!-- =============================================== -->
    <xs:complexType name="DebugDataSeparatorInfo">
        <xs:sequence>
            <!-- Идентификатор разделителя -->
            <xs:element name="id" type="core:UUID"/>
            <!-- Имя разделителя -->
            <xs:element name="name" type="xs:string"/>
            <!-- Признак успешного получения значения разделителя -->
            <xs:element name="isReceived" type="xs:boolean" default="true"/>
            <!-- Значение разделителя -->
            <xs:element name="value" type="xs:anyType" minOccurs="0"/>
        </xs:sequence>
    </xs:complexType>

    <!-- Информация об изменении значения разделителей для сеанса в ИБ -->
    <xs:complexType name="DBGTGTRemoteCallDSInfoItem">
        <xs:sequence>
            <!-- Псевдоним информационной базы -->
            <xs:element name="infoBaseAlias" type="xs:string"/>
            <!-- Идентификатор экземпляра информационной базы -->
            <xs:element name="infoBaseInstanceID" type="core:UUID" minOccurs="1"/>
            <!-- Идентификатор сеанса -->
            <xs:element name="seanceID" type="core:UUID" minOccurs="1"/>

            <!-- Информация о состоянии разделителя -->
            <xs:element name="dsInfo" type="tns:DebugDataSeparatorInfo" minOccurs="0" maxOccurs="unbounded"/>
        </xs:sequence>
    </xs:complexType>

</xs:schema>
�  ﻿<?xml version="1.0" encoding="UTF-8" ?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"
           xmlns:tns="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo"
           xmlns:core="http://v8.1c.ru/8.1/data/core"
           xmlns:dbgbase="http://v8.1c.ru/8.3/debugger/debugBaseData"
           xmlns:dbgcalc="http://v8.1c.ru/8.3/debugger/debugCalculations"
           targetNamespace="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo"
           elementFormDefault="qualified"
           attributeFormDefault="unqualified"
           version="1.0">

    <xs:import namespace="http://v8.1c.ru/8.1/data/core" schemaLocation="../../../xdto/src/res/core.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugBaseData" schemaLocation="../../../dbgbase/src/res/debugBaseData.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugCalculations" schemaLocation="../../../dbgbase/src/res/debugCalculations.xsd"/>

    <xs:complexType name="CompileErrorInfo">
        <xs:sequence>
            <!-- Код ошибки -->
            <xs:element name="reason" type="xs:decimal" minOccurs="0" maxOccurs="1"/>
            <!-- Номер строки исходного текста, в которой обнаружена ошибка -->
            <xs:element name="lineNum" type="xs:decimal" minOccurs="0" maxOccurs="1"/>
            <!-- Позиция в строке, в которой обнаружена ошибка -->
            <xs:element name="posInLine" type="xs:decimal" minOccurs="0" maxOccurs="1"/>
            <!-- Полное описание ошибки -->
            <xs:element name="descr" type="xs:base64Binary" minOccurs="0" maxOccurs="1"/>
            <!-- Текст сообщения об ошибке -->
            <xs:element name="message" type="xs:base64Binary" minOccurs="0" maxOccurs="1"/>
        </xs:sequence>
    </xs:complexType>
    
    <xs:complexType name="ErrorInfoList">
        <xs:sequence>
            <xs:element name="compileErrorInfo" type="tns:CompileErrorInfo" minOccurs="0" maxOccurs="unbounded"/>
        </xs:sequence>
    </xs:complexType>

    <!-- Информация о ран-тайм ошибке -->
    <xs:complexType name="RunTimeErrorInfo">
        <xs:sequence>
            <!-- Имя модуля -->
            <xs:element name="mname" type="xs:string" minOccurs="0"/>
            <!-- Идентификатор модуля -->
            <xs:element name="mid" type="xs:string" minOccurs="0"/>
            <!-- Номер строки -->
            <xs:element name="lineNo" type="xs:decimal"/>
            <!-- Информация об ошибке (для передачи из веб-клиента) -->
            <xs:element name="runTimeException" type="bsl:RuntimeException"/>
            <!-- Информация об ошибке (для передачи из C++ - клиента) -->
            <xs:element name="exception" type="core:GenericException"/>
        </xs:sequence>
    </xs:complexType>

</xs:schema>
�����������s  ﻿<?xml version="1.0" encoding="UTF-8" ?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"
           xmlns:tns="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse"
           xmlns:core="http://v8.1c.ru/8.1/data/core"
           xmlns:dbgbase="http://v8.1c.ru/8.3/debugger/debugBaseData"
           xmlns:dbgcalc="http://v8.1c.ru/8.3/debugger/debugCalculations"
           xmlns:dbgtgtData="http://v8.1c.ru/8.3/debugger/dbgtgtData"
           xmlns:dbgtgtBP="http://v8.1c.ru/8.3/debugger/dbgtgtBP"
           xmlns:debugBreakpoints="http://v8.1c.ru/8.3/debugger/debugBreakpoints"
           xmlns:debugRTEFilter="http://v8.1c.ru/8.3/debugger/debugRTEFilter"
           xmlns:debugRTEInfo="http://v8.1c.ru/8.3/debugger/debugRTEInfo"
           xmlns:dbgrr="http://v8.1c.ru/8.3/debugger/debugRDBGRequestResponse"
           xmlns:dbgtgtErrorInfo="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo"
           xmlns:debugMeasure="http://v8.1c.ru/8.3/debugger/debugMeasure"
           xmlns:dbgtgtCommands="http://v8.1c.ru/8.3/debugger/dbgtgtCommands"
           xmlns:debugForegroundData="http://v8.1c.ru/8.3/debugger/debugForegroundData"
           targetNamespace="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse"
           elementFormDefault="qualified"
           attributeFormDefault="unqualified"
           version="1.0">

    <xs:import namespace="http://v8.1c.ru/8.1/data/core" schemaLocation="../../../xdto/src/res/core.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugBaseData" schemaLocation="../../../dbgbase/src/res/debugBaseData.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugCalculations" schemaLocation="../../../dbgbase/src/res/debugCalculations.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtData" schemaLocation="dbgtgtData.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtBP" schemaLocation="dbgtgtBP.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugBreakpoints" schemaLocation="../../../dbgbase/src/res/debugBreakpoints.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugRTEFilter" schemaLocation="../../../dbgbase/src/res/debugRTEFilter.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugRTEInfo" schemaLocation="../../../dbgbase/src/res/debugRTEInfo.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugMeasure" schemaLocation="../../../dbgbase/src/res/debugMeasure.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugRDBGRequestResponse" schemaLocation="../../../dbgbase/src/res/debugRDBGRequestResponse.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugForegroundData" schemaLocation="../../../dbgbase/src/res/debugForegroundData.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo" schemaLocation="dbgtgtErrorInfo.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" schemaLocation="dbgtgtCommands.xsd"/>

    <xs:element name="request"/>
    <xs:element name="response"/>
    
   
    <!-- ======================================================= -->
    <!-- Описание информации о состоянии окружения ЦУПа отладки  -->
    <!-- ======================================================= -->
    <xs:complexType name="DebugControlCenterHTTPState">
        <xs:sequence>
            <!-- Версия -->
            <xs:element name="envStateVersion" type="core:UUID" minOccurs="0" maxOccurs="1"/>
            <!-- Состояние признака останова на следующей строке -->
            <xs:element name="breakOnNextLine" type="xs:boolean" default="false"/>
            <!-- Состояние флага замера производительности -->
            <xs:element name="measureMode" type="core:UUID" minOccurs="0" maxOccurs="1"/>
            <!-- Версия точек останова -->
            <xs:element name="bpVersion" type="core:UUID" minOccurs="0" maxOccurs="1"/>
            <!-- Версия настройки обработки ран-тайм - ошибок -->
            <xs:element name="rteProcVersion" type="core:UUID" minOccurs="0" maxOccurs="1"/>
            <!-- Версия состава недоступных модулей -->
            <xs:element name="inacessibleModuleVersion" type="core:UUID" minOccurs="0" maxOccurs="1"/>
            <!-- Версия данных пошаговой отладки -->
            <xs:element name="stepDebuggingDataVersion" type="core:UUID" minOccurs="0" maxOccurs="1"/>
        </xs:sequence>
    </xs:complexType>
    
    <!-- =================================================== -->
    <!--  Информация о параметрах запросов удаленной отладки -->
    <!-- =================================================== -->
    
    <!-- Базовый тип для запроса -->
    <xs:complexType name="DBGTGTRemoteRequestTypeBase">
        <xs:sequence>
            <!-- Имя информационной базы -->
            <xs:element name="infoBaseAlias" type="xs:string" minOccurs="1" maxOccurs="1" />
            <!-- Идентификатор предмета отладки в виде строки -->
            <xs:element name="targetIDStr" type="dbgbase:DebugTargetIdStr"/>
            <!-- Информация о текущем состоянии окружения ЦУПа предметра отладки -->
            <xs:element name="envState" type="tns:DebugControlCenterHTTPState" minOccurs="0" maxOccurs="1"/>
        </xs:sequence>
    </xs:complexType>
    
    <!-- Базовый тип для ответа -->
    <xs:complexType name="DBGTGTRemoteResponseTypeBase">
        <xs:sequence>
            <!-- Описание состояния окружения ЦУПа отладчика в виде строки -->
            <xs:element name="envInfoStr" type="xs:string" minOccurs="0" maxOccurs="1"/>
        </xs:sequence>
    </xs:complexType>
    
    <!-- Тип параметра для ответа о нотификации о выполнении строки кода -->
    <xs:complexType name="DBGTGTRemoteCallDebuggerResponseType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteResponseTypeBase">
                <xs:sequence>
                    <xs:choice>
                        <!-- Данные с ответом, упакованным в виде строки -->
                        <xs:element name="resultStr" type="xs:base64Binary" minOccurs="0" maxOccurs="1"/>
                        <!-- Данные с ответом -->
                        <xs:element name="result" type="dbgtgtData:NextLineResultHTTP" minOccurs="0" maxOccurs="1"/>
                   </xs:choice>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса идентификатора подключенной UI+ - части отладчика -->
    <xs:complexType name="DBGTGTRemoteGetIDOfDebuggerUIRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Тип ответа на запрос о идентификаторе подключенной UI+ - части отладчика -->
    <xs:complexType name="DBGTGTRemoteGetIDOfDebuggerUIResponseType">
        <xs:sequence>
            <!-- Идентификатор подключенной UI+ - части отладчика -->
            <xs:element name="idOfDebuggerUI" type="core:UUID" minOccurs="1" maxOccurs="1"/>
        </xs:sequence>
    </xs:complexType>

    <!-- Тип параметра для запроса о наличии процесса обновления ИБ в UI+ - части отладчика -->
    <xs:complexType name="DBGTGTRemoteIsUpdateIBProcessingRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для ответа о наличии процесса обновления ИБ в UI+ - части отладчика -->
    <xs:complexType name="DBGTGTRemoteIsUpdateIBProcessingResponseType">
        <xs:sequence>
            <!-- Идентификатор подключенной UI+ - части отладчика -->
            <xs:element name="inUpdate" type="xs:boolean" default="false" />
        </xs:sequence>
    </xs:complexType>

    <!-- Тип параметра для запроса о регистрации предмета отладки -->
    <xs:complexType name="DBGTGTRemoteRegisterTargetRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                    <!-- Признак необходимости назначения отладчика, подключенного   -->
                    <!-- к информационной базе, дефолтным для всех предметов отладки -->
                    <!-- текущего сеанса                                             -->
                    <xs:element name="setDefDbgToThisSeance" type="xs:boolean" default="false" />
                    <!-- Информация о состоянии разделителя -->
                    <xs:element name="dsInfo" type="dbgtgtData:DebugDataSeparatorInfo" minOccurs="0" maxOccurs="unbounded"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип для ответа на запрос о регистрации предмета отладки -->
    <xs:complexType name="DBGTGTRemoteRegisterTargetResponseType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteResponseTypeBase">
                <xs:sequence>
                    <!-- Версия API сервера отладки, формата D.D.D где D - число -->
                    <xs:element name="version" type="xs:string"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса о регистрации предмета отладки -->
    <xs:complexType name="DBGTGTRemoteGetUserRestrictionsRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип описания зоны -->
    <xs:complexType name="DBGTGTZoneInfo">
        <xs:sequence>
            <xs:element name="name" type="xs:string"/>
            <xs:element name="value" type="xs:string"/>
        </xs:sequence>
    </xs:complexType>

    <!-- Тип для ответа на запрос об ограничениях пользователя сервера отладки -->
    <xs:complexType name="DBGTGTRemoteGetUserRestrictionsResponseType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteResponseTypeBase">
                <xs:sequence>
                    <xs:element name="username" type="xs:string"/>
                    <xs:element name="allowPrivilegedModeDebugging" type="xs:boolean"/>
                    <xs:element name="allowMainConfigurationDebugging" type="xs:boolean"/>
                    <xs:element name="allowExpressionsEvaluation" type="xs:boolean"/>
                    <xs:element name="allowedConfigurationExtension" type="xs:string" minOccurs="0" maxOccurs="unbounded"/>
                    <xs:element name="zone" type="tns:DBGTGTZoneInfo" minOccurs="0" maxOccurs="unbounded"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    

    <!-- Тип параметра для запроса о разрегистрации предмета отладки -->
    <xs:complexType name="DBGTGTRemoteUnregisterTargetRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Причина передачи управления в отладчик -->
    <xs:simpleType name="CallDebuggerReason">
        <xs:restriction base="xs:string">
            <!-- Сработала точка останова -->
            <xs:enumeration value="breakpoint" />
            <!-- Ошибка при проверке условия срабатывания точки останова -->
            <xs:enumeration value="breakpointError" />
            <!-- Выполнен шаг -->
            <xs:enumeration value="step" />
            <!-- Сработал останов на следующей стркое кода -->
            <xs:enumeration value="breakOnNextLine" />
            <!-- Ран-тайм - ошибка -->
            <xs:enumeration value="runTimeError" />
            <!-- Повторный вызов для ожидания дальнейших действий -->
            <xs:enumeration value="reCall" />
            <!-- Остановка модуля из-за срабатывания точки останова в другом модуле -->
            <xs:enumeration value="suspendByOtherModule" />
        </xs:restriction>
    </xs:simpleType>
    
    <!-- Данные, описывающие причину передачи управления в отладчик и информацию для отладчика -->
    <xs:complexType name="DBGTGTRemoteCallDebuggerData">
        <xs:sequence>
            <!-- Причина передачи управления -->
            <xs:element name="reason" type="tns:CallDebuggerReason"/>
            <!-- Номер строки -->
            <xs:element name="lineNo" type="xs:decimal"/>
            <!-- Стек вызова в виде строки -->
            <xs:element name="callStackStr" type="xs:base64Binary" minOccurs="0" maxOccurs="1"/>
            <!-- Стек вызова -->
            <xs:element name="callStack" type="dbgtgtData:CallStackInfo" minOccurs="0" maxOccurs="1"/>
            <!-- Условие точки останова, при проверке кторого возникла ошибка -->
            <xs:element name="bpCondition" type="xs:string" minOccurs="0" maxOccurs="1"/>
            <!-- Исключение, возникшее при проверке услвоия срабатывания точки останова -->
            <xs:element name="bpCondException" type="core:GenericException" minOccurs="0" maxOccurs="1"/>
            <!-- Исключение, вызвавшее обработку ран-тайм ошибки -->
            <xs:element name="runTimeException" type="core:GenericException" minOccurs="0" maxOccurs="1"/>
            <!-- Показ стека -->
            <xs:element name="showStack" type="xs:boolean" default="false" minOccurs="0" maxOccurs="1"/>
            <!-- Наличие сообщения -->
            <xs:element name="hasMessage" type="xs:boolean" default="false" minOccurs="0" maxOccurs="1"/>
            <!-- Сообщение -->
            <xs:element name="message" type="xs:string" minOccurs="0" maxOccurs="1"/>
            <!-- Счетчик попаданий -->
            <xs:element name="hitCounter" type="xs:decimal" default="0" minOccurs="0" maxOccurs="1"/>
        </xs:sequence>
    </xs:complexType>

    <!-- Тип параметра для запроса о нотификации о передаче управления в отладчик -->
    <xs:complexType name="DBGTGTRemoteCallDebuggerRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                    <!-- Данные, описывающие причину передачи управления в отладчик и информацию для отладчика -->
                    <xs:element name="data" type="xs:string"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса с результатами вычисления выражения или локальных переменных в процессе останова на строке кода -->
    <xs:complexType name="DBGTGTRemoteCallDebuggerEvalProcessedRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                    <!-- Идентификатор события -->
                    <xs:element name="requestQueueID" type="core:UUID" minOccurs="0" maxOccurs="1"/>
                    <!-- Результат вычисления выражения -->
                    <xs:element name="evalExprResBaseData" type="dbgcalc:CalculationResultBaseData" minOccurs="0" maxOccurs="unbounded"/>
                    <!-- Результат вычисления выражения, закодированный в виде строки -->
                    <xs:element name="evalExprResBaseDataStr" type="xs:base64Binary" minOccurs="0" maxOccurs="unbounded"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    <!-- Тип параметра для запроса с нотификацией о начале/завершении вычисления выражения -->
    <xs:complexType name="DBGTGTRemoteCallDebuggerEvalStartStopProcessedRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                    <!-- Признак начала/завершения вычисления -->
                    <xs:element name="start" type="xs:boolean" default="true"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
   

    <!-- Тип параметра для запроса с результатами изменения значения локальной переменной или свойства контекста -->
    <xs:complexType name="DBGTGTRemoteCallDebuggerModifyValueRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                    <!-- Идентификатор события -->
                    <xs:element name="requestQueueID" type="core:UUID" minOccurs="0" maxOccurs="1"/>
                    <!-- Признак удачного изменения значения локальной переменной или свойства -->
                    <xs:element name="processed" type="xs:boolean" default="false"/>
                    <!-- Описание нового состояния измененного значения локальной переменной или свойства контекста -->
                    <xs:element name="newValueState" type="dbgcalc:CalculationResultBaseData" minOccurs="0" maxOccurs="1"/>
                    <!-- Текст ошибки в случае неудачного изменения локальной переменной или свойства контекста -->
                    <xs:element name="errorStr" type="xs:base64Binary" minOccurs="0" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса с результатами изменения значения локальной переменной или свойства контекста -->
    <xs:complexType name="DBGTGTRemoteCallDebuggerMeasureResultsRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                    <!-- Результаты замера производительности, закодированные в виде строки -->
                    <xs:element name="measureStr" type="xs:base64Binary"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса с передачей времени работы на сервере с серверного предмета отладки в клиентский предмет отладки-->
    <xs:complexType name="DBGTGTRemoteCallDebuggerMeasureServerTimeRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                    <!-- Идентификатор сессии замера производительности -->
                    <xs:element name="measureSessionID" type="core:UUID" minOccurs="1" maxOccurs="1"/>
                    <!-- Время выполнения кода на сервере -->
                    <xs:element name="serverCallFullTime" type="xs:decimal" minOccurs="1" maxOccurs="1"/>
                    <!-- Время простоя в отладчике -->
                    <xs:element name="serverCallTimeInDebugger" type="xs:decimal" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса с результатами проверки условия срабатывания точки останова -->
    <xs:complexType name="DBGTGTRemoteCallDebuggerCheckBPRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                    <!-- Результат проверки условия срабатывания точки останова -->
                    <xs:element name="checkState" type="dbgtgtBP:CheckBPConditionResult"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- RequestConnectAndTransmitErrors -->
    <xs:complexType name="DBGTGTRemoteCallRCTERequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                    <!-- Признак необходимости подключения предмета отладки в отладчике -->
                    <xs:element name="requestConnection" type="xs:boolean" default="false"/>
                    <!-- Дополнительный идентификатор предмета отладки, связанного с ошибкой -->
                    <xs:element name="addTargetIDStr" type="dbgbase:DebugTargetIdStr" minOccurs="0" maxOccurs="unbounded"/>
                    <!-- Информация об ошибке -->
                    <xs:element name="errorInfo" type="debugRTEInfo:ErrorViewInfoData" minOccurs="0" maxOccurs="unbounded"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- RequestShowMetadataObject -->
    <xs:complexType name="DBGTGTRemoteCallSMORequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                    <!-- Информация об ошибке -->
                    <xs:element name="metadataObjectName" type="xs:string" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    
    
    <!-- Передача информации о состоянии разделителей -->
    <xs:complexType name="DBGTGTRemoteCallDSInfoRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                    <!-- Информация об изменении значения разделителей для сеанса в ИБ -->
                    <xs:element name="seanceDSState" type="dbgtgtData:DBGTGTRemoteCallDSInfoItem" minOccurs="0" maxOccurs="unbounded"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Ответ на передачу инфомрации о состоянии разделителей -->
    <xs:complexType name="DBGTGTRemoteCallDSInfoResponseType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteResponseTypeBase">
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Запрос для получения данных для активизации окна отладчика -->
    <xs:complexType name="DBGTGTRemoteGetDbgForegroundWndRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteRequestTypeBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип для ответа на запрос для получения данных для активизации окна отладчика -->
    <xs:complexType name="DBGTGTRemoteGetDbgForegroundWndResponseType">
        <xs:complexContent>
            <xs:extension base="tns:DBGTGTRemoteResponseTypeBase">
                <xs:sequence>
                    <!-- Данные для активации окна -->
                    <xs:element name="data" type="debugForegroundData:ForegroundWindowData" minOccurs="0" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- ======================================================== -->
    <!--  Пингование сервера отладки со стороны предмета отладки  -->
    <!-- ======================================================== -->

    <!-- Инфорация о данных отладки -->
    <xs:complexType name="DBGTGTRemotePingData">
        <xs:complexContent>
            <xs:extension base="tns:DebugControlCenterHTTPState">
                <xs:sequence>
                    <!-- Имя информационной базы -->
                    <xs:element name="infoBaseAlias" type="xs:string" minOccurs="1" maxOccurs="1"/>
                    <!-- Идентификатор сеанса -->
                    <xs:element name="seanceID" type="core:UUID" minOccurs="1" maxOccurs="1"/>
                    <!-- Уникальный идентификатор предмета отладки -->
                    <xs:element name="targetID" type="core:UUID" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип для запроса на пингование -->
    <xs:complexType name="DBGTGTRemotePingRequest">
        <xs:sequence>
            <!-- Данные для верификации состояния процессора окружения отладчика на стороне предмета отладки-->
            <xs:element name="data" type="tns:DBGTGTRemotePingData" minOccurs="1" maxOccurs="1"/>
            <!-- Команды, передаваемые со стороны предмета отладки на сервер отладки: тут будут сидеть типы, расширяющие тип DBGTGTExtCmdBase -->
            <xs:element name="commandToDbgServer" type="dbgtgtCommands:DBGTGTExtCmdBase" minOccurs="0" maxOccurs="unbounded" />
        </xs:sequence>
    </xs:complexType>
    
    <!-- Тип для ответа с результатами пингования -->
    <xs:complexType name="DBGTGTRemotePingResponse">
        <xs:sequence>
            <!-- Результат выполнения пингования: тут будут сидеть типы, расширяющие тип DBGTGTExtCmdBase -->
            <xs:element name="commandFromDbgServer" type="dbgtgtCommands:DBGTGTExtCmdBase" minOccurs="0" maxOccurs="unbounded" />
        </xs:sequence>
    </xs:complexType>

</xs:schema>
�������3  ﻿<?xml version="1.0" encoding="UTF-8" ?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"
           xmlns:tns="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse"
           xmlns:core="http://v8.1c.ru/8.1/data/core"
           xmlns:dbgbase="http://v8.1c.ru/8.3/debugger/debugBaseData"
           xmlns:dbgtgtData="http://v8.1c.ru/8.3/debugger/dbgtgtData"
           xmlns:dbgcalc="http://v8.1c.ru/8.3/debugger/debugCalculations"
           xmlns:dbgtgtBP="http://v8.1c.ru/8.3/debugger/dbgtgtBP"
           xmlns:debugBreakpoints="http://v8.1c.ru/8.3/debugger/debugBreakpoints"
           xmlns:debugRTEFilter="http://v8.1c.ru/8.3/debugger/debugRTEFilter"
           xmlns:dbgtgtErrorInfo="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo"
           xmlns:dbgtgtCommands="http://v8.1c.ru/8.3/debugger/dbgtgtCommands"
           targetNamespace="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse"
           elementFormDefault="qualified"
           attributeFormDefault="unqualified"
           version="1.0">

    <xs:import namespace="http://v8.1c.ru/8.1/data/core" schemaLocation="../../../xdto/src/res/core.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugBaseData" schemaLocation="../../../dbgbase/src/res/debugBaseData.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtData" schemaLocation="../../../dbgtgt/src/res/dbgtgtData.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugCalculations" schemaLocation="../../../dbgbase/src/res/debugCalculations.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtBP" schemaLocation="dbgtgtBP.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugBreakpoints" schemaLocation="../../../dbgbase/src/res/debugBreakpoints.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/debugRTEFilter" schemaLocation="../../../dbgbase/src/res/debugRTEFilter.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo" schemaLocation="dbgtgtErrorInfo.xsd"/>
    <xs:import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" schemaLocation="dbgtgtCommands.xsd"/>

    <xs:element name="request"/>
    <xs:element name="response"/>

    <!-- =================================================== -->
    <!--  Информация о параметрах запросов удаленной отладки -->
    <!-- =================================================== -->

    <xs:complexType name="DebugTargetRequestTypeBase">
        <xs:sequence>
            <xs:choice>
                <!-- Идентификатор предмета отладки в виде строки -->
                <xs:element name="targetIDStr" type="dbgbase:DebugTargetIdStr" minOccurs="0" maxOccurs="1"/>
                <!-- Идентификатор предмета отладки -->
                <xs:element name="targetID" type="dbgbase:DebugTargetId" minOccurs="0" maxOccurs="1"/>
            </xs:choice>
        </xs:sequence>
    </xs:complexType>

    <!-- Тип параметра для запроса о регистрации предмета отладки -->
    <xs:complexType name="RegisterDebugTargetRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>


    <!-- Тип параметра для запроса о разрегистрации предмета отладки -->
    <xs:complexType name="UnregisterDebugTargetRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса о нотификации о старте BSL-процесса -->
    <xs:complexType name="OnStartProcessRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса о нотификации о завершении BSL-процесса -->
    <xs:complexType name="OnStopProcessRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса о нотификации о входе в уровень стека BSL-процесса -->
    <xs:complexType name="OnEnterStackFrameRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                    <!-- Стек вызовов -->
                    <xs:element name="stackItem" type="dbgtgtData:CallStackItemInfo"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса о нотификации о выходе из уровня стека BSL-процесса -->
    <xs:complexType name="OnExitStackFrameRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                    <!-- Уникальный идентификатор стек-фрейма -->
                    <xs:element name="id" type="xs:string" minOccurs="0"/>
                    <!-- Состояние стек-фрейма -->
                    <xs:element name="state" type="xs:decimal"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса о нотификации о выполнении строки кода -->
    <xs:complexType name="OnNextLineRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                    <!-- Номер строки -->
                    <xs:element name="lineNo" type="xs:decimal"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для ответа о нотификации о выполнении строки кода -->
    <xs:complexType name="OnNextLineResponseType">
        <xs:sequence>
        </xs:sequence>
    </xs:complexType>

    <!-- Тип параметра для запроса о повторной нотификации о выполнении строки кода -->
    <xs:complexType name="OnNextLineReCallRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса с результатами вычисления выражения в процессе останова на строке кода -->
    <xs:complexType name="OnNextLineEvalExprRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                    <!-- Результат вычисления выражения -->
                    <xs:element name="evalExprResBaseData" type="dbgcalc:CalculationResultBaseData" minOccurs="0" maxOccurs="unbounded"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса с результатами определения состава -->
    <!-- локальных переменных и вычисления их значений в процессе останова на строке кода -->
    <xs:complexType name="OnNextLineEvalLocalVariablesRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                    <!-- Результат вычисления выражения -->
                    <xs:element name="evalExprResBaseData" type="dbgcalc:CalculationResultBaseData" minOccurs="0" maxOccurs="unbounded"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса с результатами изменения значения локальной переменной или свойства контекста -->
    <xs:complexType name="OnNextLineModifyValueRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                    <!-- Признак удачного изменения значения локальной переменной или свойства-->
                    <xs:element name="processed" type="xs:boolean" default="false"/>
                    <!-- Описание нового состояния измененного значения локальной переменной или свойства контекста -->
                    <xs:element name="newValueState" type="dbgcalc:CalculationResultBaseData" minOccurs="0" maxOccurs="1"/>
                    <!-- Текст ошибки в случае неудачного изменения локальной переменной или свойства контекста -->
                    <xs:element name="errorStr" type="xs:base64Binary" minOccurs="0" maxOccurs="1"/>
                    <!-- Идентификатор изменяемого значения (должен быть даже в случае ошибки) -->
                    <xs:element name="modificationResultID" type="core:UUID"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса с результатами проверки условия срабатывания точки останова -->
    <xs:complexType name="OnNextLineCheckBPRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                    <!-- Результат проверки условия срабатывания точки останова -->
                    <xs:element name="checkState" type="dbgtgtBP:CheckBPConditionResult"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса с результатами вычисления сообщения точки останова -->
    <xs:complexType name="OnNextLineMessageBPRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                    <!-- Результат проверки условия срабатывания точки останова -->
                    <xs:element name="messageState" type="dbgtgtBP:MessageBPConditionResult"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса с результатами проверки условия срабатывания точки останова -->
    <xs:complexType name="OnRuntimeErrorRequestType">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                    <!-- Информация по ран-тайм ошибке -->
                    <xs:element name="runtimeErrorInfo" type="dbgtgtErrorInfo:RunTimeErrorInfo" minOccurs="0" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

    <!-- Тип параметра для запроса описания объекта метаданных для показа -->
    <xs:complexType name="ShowMetadataObject">
        <xs:complexContent>
            <xs:extension base="tns:DebugTargetRequestTypeBase">
                <xs:sequence>
                    <!-- Информация об объекте -->
                    <xs:element name="metadataObjectName" type="xs:string" minOccurs="1" maxOccurs="1"/>
                </xs:sequence>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>

</xs:schema>
�������������v�  ﻿<model xmlns="http://v8.1c.ru/8.1/xdto" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<package targetNamespace="http://v8.1c.ru/8.3/debugger/dbgtgtData" elementFormQualified="true" attributeFormQualified="false">
		<import namespace="http://v8.1c.ru/8.1/data/core"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugBaseData"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugCalculations"/>
		<valueType name="NextLineCallResult" base="xs:string">
			<enumeration>Unknown</enumeration>
			<enumeration>ReCall</enumeration>
			<enumeration>EvalExpr</enumeration>
			<enumeration>EvalLocalVariables</enumeration>
			<enumeration>ModifyValue</enumeration>
			<enumeration>BPEvalExpr</enumeration>
			<enumeration>Continue</enumeration>
			<enumeration>Terminate</enumeration>
			<enumeration>Restart</enumeration>
			<enumeration>BPMessageEval</enumeration>
		</valueType>
		<objectType name="CallStackInfo">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtData" name="item" type="d4p1:CallStackItemInfo" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType name="CallStackItemInfo">
			<property name="id" type="xs:string" lowerBound="0"/>
			<property name="mname" type="xs:string" lowerBound="0"/>
			<property name="mid" type="xs:string" lowerBound="0"/>
			<property name="fname" type="xs:string" lowerBound="0"/>
			<property name="lineNo" type="xs:decimal"/>
			<property name="isModuleEntry" type="xs:boolean"/>
			<property name="thisFrameIsFromAsyncTopStack" type="xs:boolean"/>
			<property name="isAsyncPoint" type="xs:boolean"/>
			<property name="state" type="xs:decimal"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtData" name="params" type="d4p1:ParametersInfo" lowerBound="0"/>
		</objectType>
		<objectType name="DBGTGTRemoteCallDSInfoItem">
			<property name="infoBaseAlias" type="xs:string"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="infoBaseInstanceID" type="d4p1:UUID"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="seanceID" type="d4p1:UUID"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtData" name="dsInfo" type="d4p1:DebugDataSeparatorInfo" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType name="DebugDataSeparatorInfo">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="id" type="d4p1:UUID"/>
			<property name="name" type="xs:string"/>
			<property name="isReceived" type="xs:boolean" default="true"/>
			<property name="value" lowerBound="0"/>
		</objectType>
		<objectType name="NextLineResult">
			<property name="forceExecLineNum" type="xs:boolean" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtData" name="variant" type="d4p1:NextLineCallResult"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugCalculations" name="expr" type="d4p1:CalculationSourceDataStorage" lowerBound="0" upperBound="-1"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugCalculations" name="newValueInfo" type="d4p1:NewValueInfo" lowerBound="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtData" name="NextLineResultHTTP" base="d3p1:NextLineResult">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="requestQueueID" type="d4p1:UUID" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugBaseData" name="debugStepAction" type="d4p1:DebugStepAction" default="Unknown"/>
		</objectType>
		<objectType name="ParameterInfo">
			<property name="name" type="xs:string"/>
			<property name="pres" type="xs:base64Binary"/>
		</objectType>
		<objectType name="ParametersInfo">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtData" name="param" type="d4p1:ParameterInfo" lowerBound="0" upperBound="-1"/>
		</objectType>
	</package>
	<package targetNamespace="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo" elementFormQualified="true" attributeFormQualified="false">
		<import namespace="http://v8.1c.ru/8.1/data/core"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugBaseData"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugCalculations"/>
		<objectType name="CompileErrorInfo">
			<property name="reason" type="xs:decimal" lowerBound="0"/>
			<property name="lineNum" type="xs:decimal" lowerBound="0"/>
			<property name="posInLine" type="xs:decimal" lowerBound="0"/>
			<property name="descr" type="xs:base64Binary" lowerBound="0"/>
			<property name="message" type="xs:base64Binary" lowerBound="0"/>
		</objectType>
		<objectType name="ErrorInfoList">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo" name="compileErrorInfo" type="d4p1:CompileErrorInfo" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType name="RunTimeErrorInfo">
			<property name="mname" type="xs:string" lowerBound="0"/>
			<property name="mid" type="xs:string" lowerBound="0"/>
			<property name="lineNo" type="xs:decimal"/>
			<property name="runTimeException"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="exception" type="d4p1:GenericException"/>
		</objectType>
	</package>
	<package targetNamespace="http://v8.1c.ru/8.3/debugger/dbgtgtBP" elementFormQualified="true" attributeFormQualified="false">
		<import namespace="http://v8.1c.ru/8.1/data/core"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugBaseData"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugCalculations"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo"/>
		<valueType name="BPConditionState" base="xs:string">
			<enumeration>Unkwnown</enumeration>
			<enumeration>true</enumeration>
			<enumeration>false</enumeration>
			<enumeration>error</enumeration>
		</valueType>
		<objectType name="CheckBPConditionResult" ordered="false" sequenced="true">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtBP" name="condResult" type="d4p1:BPConditionState"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo" name="compileErrorInfo" type="d4p1:CompileErrorInfo" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo" name="runtimeErrorInfo" type="d4p1:RunTimeErrorInfo" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="exception" type="d4p1:GenericException" lowerBound="0"/>
		</objectType>
		<objectType name="MessageBPConditionResult" ordered="false" sequenced="true">
			<property name="condResult" type="xs:string"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo" name="compileErrorInfo" type="d4p1:CompileErrorInfo" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo" name="runtimeErrorInfo" type="d4p1:RunTimeErrorInfo" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="exception" type="d4p1:GenericException" lowerBound="0"/>
		</objectType>
	</package>
	<package targetNamespace="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" elementFormQualified="true" attributeFormQualified="false">
		<import namespace="http://v8.1c.ru/8.1/data/core"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugBaseData"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugCalculations"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugBreakpoints"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugRTEFilter"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugMeasure"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugForegroundData"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtData"/>
		<valueType name="DBGTGTExtCmds" base="xs:string">
			<enumeration>unknown</enumeration>
			<enumeration>EnvStateVersion</enumeration>
			<enumeration>BreakOnNextLine</enumeration>
			<enumeration>StepDebuggingDataVer</enumeration>
			<enumeration>Breakpoints</enumeration>
			<enumeration>RTEProcessing</enumeration>
			<enumeration>MeasureMode</enumeration>
			<enumeration>InaccessModules</enumeration>
			<enumeration>GetCallStack</enumeration>
			<enumeration>GetMeasureResults</enumeration>
			<enumeration>ClearStepDebuggingInfo</enumeration>
			<enumeration>Terminate</enumeration>
			<enumeration>Restart</enumeration>
			<enumeration>ServerCallFullTime</enumeration>
			<enumeration>SetCallStack</enumeration>
			<enumeration>MeasureResults</enumeration>
			<enumeration>ServerCallFullTimeConfirmation</enumeration>
			<enumeration>DSChangeData</enumeration>
			<enumeration>ForegroundHelperSet</enumeration>
			<enumeration>ForegroundHelperRequest</enumeration>
			<enumeration>ForegroundHelperProcess</enumeration>
		</valueType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdAndSenderIDBase" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="senderID" type="d4p1:UUID"/>
		</objectType>
		<objectType name="DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="cmdID" type="d4p1:DBGTGTExtCmds"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="targetUUID" type="d4p1:UUID" lowerBound="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdBreakOnNextLine" base="d3p1:DBGTGTExtCmdBase">
			<property name="breakOnNextLine" type="xs:boolean"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugBaseData" name="triggeredTargetID" type="d4p1:DebugTargetIdStr"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdBreakpoints" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugBreakpoints" name="bpWorkspace" type="d4p1:BPWorkspaceInternal" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="version" type="d4p1:UUID"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdClearStepDebuggingInfo" base="d3p1:DBGTGTExtCmdBase"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdDSChangeData" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtData" name="seanceDSState" type="d4p1:DBGTGTRemoteCallDSInfoItem" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdEnvStateVersion" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="envStateVersion" type="d4p1:UUID"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdForegroundHelperProcess" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugForegroundData" name="data" type="d4p1:ForegroundWindowData" lowerBound="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdForegroundHelperRequest" base="d3p1:DBGTGTExtCmdAndSenderIDBase"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdForegroundHelperSet" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugForegroundData" name="data" type="d4p1:ForegroundWindowData" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="recipientID" type="d4p1:UUID" lowerBound="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdGetCallStack" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="callStackReceiverID" type="d4p1:UUID"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdInaccessModules" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugBaseData" name="moduleID" type="d4p1:BSLModuleIdInternal" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="version" type="d4p1:UUID"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdMeasureMode" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="measureMode" type="d4p1:UUID"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdMeasureResults" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugBaseData" name="targetIDStr" type="d4p1:DebugTargetIdStr"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugMeasure" name="measure" type="d4p1:PerformanceInfoMain"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdRTEProcessing" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugRTEFilter" name="rteProcessing" type="d4p1:RteFilterStorage"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="version" type="d4p1:UUID"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdRestart" base="d3p1:DBGTGTExtCmdBase"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdSetCallStack" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugBaseData" name="targetIDStr" type="d4p1:DebugTargetIdStr"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtData" name="callStack" type="d4p1:CallStackInfo" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="callStackReceiverID" type="d4p1:UUID"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdSrvCallFullTime" base="d3p1:DBGTGTExtCmdAndSenderIDBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="measureSessionID" type="d4p1:UUID"/>
			<property name="serverCallFullTime" type="xs:decimal"/>
			<property name="serverCallTimeInDebugger" type="xs:decimal"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdSrvCallFullTimeConfirm" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="recipientID" type="d4p1:UUID"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdStepDebuggingDataVer" base="d3p1:DBGTGTExtCmdBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="stepDebuggingDataVer" type="d4p1:UUID"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="DBGTGTExtCmdTerminate" base="d3p1:DBGTGTExtCmdBase"/>
	</package>
	<package targetNamespace="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" elementFormQualified="true" attributeFormQualified="false">
		<import namespace="http://v8.1c.ru/8.1/data/core"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugBaseData"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtData"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugCalculations"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtBP"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugBreakpoints"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugRTEFilter"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtCommands"/>
		<property name="request"/>
		<property name="response"/>
		<objectType name="DebugTargetRequestTypeBase" ordered="false" sequenced="true">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugBaseData" name="targetIDStr" type="d4p1:DebugTargetIdStr" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugBaseData" name="targetID" type="d4p1:DebugTargetId" lowerBound="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="OnEnterStackFrameRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtData" name="stackItem" type="d4p1:CallStackItemInfo"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="OnExitStackFrameRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true">
			<property name="id" type="xs:string" lowerBound="0"/>
			<property name="state" type="xs:decimal"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="OnNextLineCheckBPRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtBP" name="checkState" type="d4p1:CheckBPConditionResult"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="OnNextLineEvalExprRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugCalculations" name="evalExprResBaseData" type="d4p1:CalculationResultBaseData" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="OnNextLineEvalLocalVariablesRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugCalculations" name="evalExprResBaseData" type="d4p1:CalculationResultBaseData" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="OnNextLineMessageBPRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtBP" name="messageState" type="d4p1:MessageBPConditionResult"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="OnNextLineModifyValueRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true">
			<property name="processed" type="xs:boolean" default="false"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugCalculations" name="newValueState" type="d4p1:CalculationResultBaseData" lowerBound="0"/>
			<property name="errorStr" type="xs:base64Binary" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="modificationResultID" type="d4p1:UUID"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="OnNextLineReCallRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="OnNextLineRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true">
			<property name="lineNo" type="xs:decimal"/>
		</objectType>
		<objectType name="OnNextLineResponseType"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="OnRuntimeErrorRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo" name="runtimeErrorInfo" type="d4p1:RunTimeErrorInfo" lowerBound="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="OnStartProcessRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="OnStopProcessRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="RegisterDebugTargetRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="ShowMetadataObject" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true">
			<property name="metadataObjectName" type="xs:string"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRequestResponse" name="UnregisterDebugTargetRequestType" base="d3p1:DebugTargetRequestTypeBase" ordered="false" sequenced="true"/>
	</package>
	<package targetNamespace="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" elementFormQualified="true" attributeFormQualified="false">
		<import namespace="http://v8.1c.ru/8.1/data/core"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugBaseData"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugCalculations"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtData"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtBP"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugBreakpoints"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugRTEFilter"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugRTEInfo"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugMeasure"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugRDBGRequestResponse"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/debugForegroundData"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtErrorInfo"/>
		<import namespace="http://v8.1c.ru/8.3/debugger/dbgtgtCommands"/>
		<property name="request"/>
		<property name="response"/>
		<valueType name="CallDebuggerReason" base="xs:string">
			<enumeration>breakpoint</enumeration>
			<enumeration>breakpointError</enumeration>
			<enumeration>step</enumeration>
			<enumeration>breakOnNextLine</enumeration>
			<enumeration>runTimeError</enumeration>
			<enumeration>reCall</enumeration>
			<enumeration>suspendByOtherModule</enumeration>
		</valueType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteCallDSInfoRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtData" name="seanceDSState" type="d4p1:DBGTGTRemoteCallDSInfoItem" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteCallDSInfoResponseType" base="d3p1:DBGTGTRemoteResponseTypeBase"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteCallDebuggerCheckBPRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtBP" name="checkState" type="d4p1:CheckBPConditionResult"/>
		</objectType>
		<objectType name="DBGTGTRemoteCallDebuggerData">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="reason" type="d4p1:CallDebuggerReason"/>
			<property name="lineNo" type="xs:decimal"/>
			<property name="callStackStr" type="xs:base64Binary" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtData" name="callStack" type="d4p1:CallStackInfo" lowerBound="0"/>
			<property name="bpCondition" type="xs:string" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="bpCondException" type="d4p1:GenericException" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="runTimeException" type="d4p1:GenericException" lowerBound="0"/>
			<property name="showStack" type="xs:boolean" lowerBound="0" default="false"/>
			<property name="hasMessage" type="xs:boolean" lowerBound="0" default="false"/>
			<property name="message" type="xs:string" lowerBound="0"/>
			<property name="hitCounter" type="xs:decimal" lowerBound="0" default="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteCallDebuggerEvalProcessedRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="requestQueueID" type="d4p1:UUID" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugCalculations" name="evalExprResBaseData" type="d4p1:CalculationResultBaseData" lowerBound="0" upperBound="-1"/>
			<property name="evalExprResBaseDataStr" type="xs:base64Binary" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteCallDebuggerEvalStartStopProcessedRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase">
			<property name="start" type="xs:boolean" default="true"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteCallDebuggerMeasureResultsRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase">
			<property name="measureStr" type="xs:base64Binary"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteCallDebuggerMeasureServerTimeRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="measureSessionID" type="d4p1:UUID"/>
			<property name="serverCallFullTime" type="xs:decimal"/>
			<property name="serverCallTimeInDebugger" type="xs:decimal"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteCallDebuggerModifyValueRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="requestQueueID" type="d4p1:UUID" lowerBound="0"/>
			<property name="processed" type="xs:boolean" default="false"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugCalculations" name="newValueState" type="d4p1:CalculationResultBaseData" lowerBound="0"/>
			<property name="errorStr" type="xs:base64Binary" lowerBound="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteCallDebuggerRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase">
			<property name="data" type="xs:string"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteCallDebuggerResponseType" base="d3p1:DBGTGTRemoteResponseTypeBase" ordered="false" sequenced="true">
			<property name="resultStr" type="xs:base64Binary" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtData" name="result" type="d4p1:NextLineResultHTTP" lowerBound="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteCallRCTERequestType" base="d3p1:DBGTGTRemoteRequestTypeBase">
			<property name="requestConnection" type="xs:boolean" default="false"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugBaseData" name="addTargetIDStr" type="d4p1:DebugTargetIdStr" lowerBound="0" upperBound="-1"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugRTEInfo" name="errorInfo" type="d4p1:ErrorViewInfoData" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteCallSMORequestType" base="d3p1:DBGTGTRemoteRequestTypeBase">
			<property name="metadataObjectName" type="xs:string"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteGetDbgForegroundWndRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteGetDbgForegroundWndResponseType" base="d3p1:DBGTGTRemoteResponseTypeBase">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugForegroundData" name="data" type="d4p1:ForegroundWindowData" lowerBound="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteGetIDOfDebuggerUIRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase"/>
		<objectType name="DBGTGTRemoteGetIDOfDebuggerUIResponseType">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="idOfDebuggerUI" type="d4p1:UUID"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteGetUserRestrictionsRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase"/>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteGetUserRestrictionsResponseType" base="d3p1:DBGTGTRemoteResponseTypeBase">
			<property name="username" type="xs:string"/>
			<property name="allowPrivilegedModeDebugging" type="xs:boolean"/>
			<property name="allowMainConfigurationDebugging" type="xs:boolean"/>
			<property name="allowExpressionsEvaluation" type="xs:boolean"/>
			<property name="allowedConfigurationExtension" type="xs:string" lowerBound="0" upperBound="-1"/>
			<property name="zone" type="d3p1:DBGTGTZoneInfo" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteIsUpdateIBProcessingRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase"/>
		<objectType name="DBGTGTRemoteIsUpdateIBProcessingResponseType">
			<property name="inUpdate" type="xs:boolean" default="false"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemotePingData" base="d3p1:DebugControlCenterHTTPState">
			<property name="infoBaseAlias" type="xs:string"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="seanceID" type="d4p1:UUID"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="targetID" type="d4p1:UUID"/>
		</objectType>
		<objectType name="DBGTGTRemotePingRequest">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="data" type="d4p1:DBGTGTRemotePingData"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="commandToDbgServer" type="d4p1:DBGTGTExtCmdBase" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType name="DBGTGTRemotePingResponse">
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtCommands" name="commandFromDbgServer" type="d4p1:DBGTGTExtCmdBase" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteRegisterTargetRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase">
			<property name="setDefDbgToThisSeance" type="xs:boolean" default="false"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtData" name="dsInfo" type="d4p1:DebugDataSeparatorInfo" lowerBound="0" upperBound="-1"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteRegisterTargetResponseType" base="d3p1:DBGTGTRemoteResponseTypeBase">
			<property name="version" type="xs:string"/>
		</objectType>
		<objectType name="DBGTGTRemoteRequestTypeBase">
			<property name="infoBaseAlias" type="xs:string"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/debugBaseData" name="targetIDStr" type="d4p1:DebugTargetIdStr"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="envState" type="d4p1:DebugControlCenterHTTPState" lowerBound="0"/>
		</objectType>
		<objectType name="DBGTGTRemoteResponseTypeBase">
			<property name="envInfoStr" type="xs:string" lowerBound="0"/>
		</objectType>
		<objectType xmlns:d3p1="http://v8.1c.ru/8.3/debugger/dbgtgtRemoteRequestResponse" name="DBGTGTRemoteUnregisterTargetRequestType" base="d3p1:DBGTGTRemoteRequestTypeBase"/>
		<objectType name="DBGTGTZoneInfo">
			<property name="name" type="xs:string"/>
			<property name="value" type="xs:string"/>
		</objectType>
		<objectType name="DebugControlCenterHTTPState">
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="envStateVersion" type="d4p1:UUID" lowerBound="0"/>
			<property name="breakOnNextLine" type="xs:boolean" default="false"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="measureMode" type="d4p1:UUID" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="bpVersion" type="d4p1:UUID" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="rteProcVersion" type="d4p1:UUID" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="inacessibleModuleVersion" type="d4p1:UUID" lowerBound="0"/>
			<property xmlns:d4p1="http://v8.1c.ru/8.1/data/core" name="stepDebuggingDataVersion" type="d4p1:UUID" lowerBound="0"/>
		</objectType>
	</package>
</model>�� P �C� ����_e�A6�� (� � q 8   ��h��w]�  `� `z `V `� `R  `Q ` ` `� `H `� `, `� `�  `p  `�  `8  `� ` `�  `"  `  `  `; � 7 & ) �E �R 