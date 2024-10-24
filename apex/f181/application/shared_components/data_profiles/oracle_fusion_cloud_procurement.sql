prompt --application/shared_components/data_profiles/oracle_fusion_cloud_procurement
begin
--   Manifest
--     DATA PROFILE: Oracle Fusion Cloud Procurement
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'Oracle Fusion Cloud Procurement'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27119029518655117)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'LINKS'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'ARRAY'
,p_has_time_zone=>false
,p_selector=>'links'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27119399653655119)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'REL'
,p_sequence=>2
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(27119029518655117)
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'rel'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27119682645655120)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'HREF'
,p_sequence=>3
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(27119029518655117)
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'href'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27119917799655122)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'KIND'
,p_sequence=>4
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(27119029518655117)
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'kind'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27120217779655122)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'NAME'
,p_sequence=>5
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(27119029518655117)
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27120572693655123)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'PROPERTIES_CHANGEINDICATOR'
,p_sequence=>6
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(27119029518655117)
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'properties.changeIndicator'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27120873137655124)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'PREPARER'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'Preparer'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27121188290655125)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'CREATEDBY'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'CreatedBy'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27121485687655126)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'PREPARERID'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'PreparerId'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27121718692655127)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'DESCRIPTION'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'Description'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27122080332655128)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'FUNDSSTATUS'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'FundsStatus'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27122391789655129)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'REQUISITION'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'Requisition'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27122677518655129)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'APPROVEDBYID'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'ApprovedById'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27122994782655131)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'APPROVEDDATE'
,p_sequence=>14
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZH":"TZM'
,p_has_time_zone=>true
,p_selector=>'ApprovedDate'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27123268816655132)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'CREATIONDATE'
,p_sequence=>15
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZH":"TZM'
,p_has_time_zone=>true
,p_selector=>'CreationDate'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27123528165655132)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'REJECTEDBYID'
,p_sequence=>16
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'RejectedById'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27123881565655133)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'JUSTIFICATION'
,p_sequence=>17
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'Justification'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27124124708655134)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'LASTUPDATEDBY'
,p_sequence=>18
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'LastUpdatedBy'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27124493278655135)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'PREPAREREMAIL'
,p_sequence=>19
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'PreparerEmail'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27124708475655136)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'DOCUMENTSTATUS'
,p_sequence=>20
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'DocumentStatus'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27125054850655136)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'LASTUPDATEDATE'
,p_sequence=>21
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZH":"TZM'
,p_has_time_zone=>true
,p_selector=>'LastUpdateDate'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27125349146655137)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'REJECTEDREASON'
,p_sequence=>22
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'RejectedReason'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27125657208655138)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'SUBMISSIONDATE'
,p_sequence=>23
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZH":"TZM'
,p_has_time_zone=>true
,p_selector=>'SubmissionDate'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27125948277655139)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'APPROVEDBYEMAIL'
,p_sequence=>24
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'ApprovedByEmail'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27126227911655140)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'FUNDSSTATUSCODE'
,p_sequence=>25
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'FundsStatusCode'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27126548338655140)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'LIFECYCLESTATUS'
,p_sequence=>26
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'LifecycleStatus'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27126829530655142)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'REQUISITIONINGBU'
,p_sequence=>27
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'RequisitioningBU'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27127126785655142)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'EMERGENCYPONUMBER'
,p_sequence=>28
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'EmergencyPONumber'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27127472441655143)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'IDENTIFICATIONKEY'
,p_sequence=>29
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'IdentificationKey'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27127794272655144)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'LOCKEDBYBUYERFLAG'
,p_sequence=>30
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'LockedByBuyerFlag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27128066970655145)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'MODIFYINGAPPROVER'
,p_sequence=>31
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'ModifyingApprover'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27128316641655145)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'SOLDTOLEGALENTITY'
,p_sequence=>32
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'SoldToLegalEntity'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27128646766655146)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'DOCUMENTSTATUSCODE'
,p_sequence=>33
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'DocumentStatusCode'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27128961397655147)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'OVERRIDINGAPPROVER'
,p_sequence=>34
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'OverridingApprover'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27129285609655148)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'REQUISITIONINGBUID'
,p_sequence=>35
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'RequisitioningBUId'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27129591018655149)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'INTERFACESOURCECODE'
,p_sequence=>36
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'InterfaceSourceCode'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27129871215655150)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'LIFECYCLESTATUSCODE'
,p_sequence=>37
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'LifecycleStatusCode'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27130148804655150)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'MODIFYINGAPPROVERID'
,p_sequence=>38
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'ModifyingApproverId'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27130417724655152)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'REQUISITIONHEADERID'
,p_sequence=>39
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'RequisitionHeaderId'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27130716366655153)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'SOLDTOLEGALENTITYID'
,p_sequence=>40
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'SoldToLegalEntityId'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27131004248655154)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'SPECIALHANDLINGTYPE'
,p_sequence=>41
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'SpecialHandlingType'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27131321905655154)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'FUNDSCHKFAILWARNFLAG'
,p_sequence=>42
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'FundsChkFailWarnFlag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27131619089655155)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'HASREJECTEDLINESFLAG'
,p_sequence=>43
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'HasRejectedLinesFlag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27131942261655156)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'HASRETURNEDLINESFLAG'
,p_sequence=>44
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'HasReturnedLinesFlag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27132214833655157)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'INTERNALTRANSFERFLAG'
,p_sequence=>45
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'InternalTransferFlag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27132546018655158)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'OVERRIDINGAPPROVERID'
,p_sequence=>46
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'OverridingApproverId'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27132827954655158)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'REQUISITIONLINEGROUP'
,p_sequence=>47
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'RequisitionLineGroup'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27133175410655159)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'ACTIVEREQUISITIONFLAG'
,p_sequence=>48
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'ActiveRequisitionFlag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27133445379655160)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'EXTERNALLYMANAGEDFLAG'
,p_sequence=>49
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'ExternallyManagedFlag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27133701991655161)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'FUNDSOVERRIDEAPPROVER'
,p_sequence=>50
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'FundsOverrideApprover'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27134031569655163)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'HASWITHDRAWNLINESFLAG'
,p_sequence=>51
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'HasWithdrawnLinesFlag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27134388466655164)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'INSUFFICIENTFUNDSFLAG'
,p_sequence=>52
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'InsufficientFundsFlag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27134690142655165)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'INTERFACESOURCELINEID'
,p_sequence=>53
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'InterfaceSourceLineId'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27134994944655165)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'REJECTEDBYDISPLAYNAME'
,p_sequence=>54
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'RejectedByDisplayName'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27135216214655166)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'SOURCEAPPLICATIONCODE'
,p_sequence=>55
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'SourceApplicationCode'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27135540174655167)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'FUNCTIONALCURRENCYCODE'
,p_sequence=>56
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'FunctionalCurrencyCode'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27135819389655168)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'MODIFYINGAPPROVEREMAIL'
,p_sequence=>57
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'ModifyingApproverEmail'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27136150728655169)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'FUNDSOVERRIDEAPPROVERID'
,p_sequence=>58
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'FundsOverrideApproverId'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27136446825655169)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'OVERRIDINGAPPROVEREMAIL'
,p_sequence=>59
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'OverridingApproverEmail'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27136792777655170)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'SPECIALHANDLINGTYPECODE'
,p_sequence=>60
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'SpecialHandlingTypeCode'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27137095372655171)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'EMERGENCYREQUISITIONFLAG'
,p_sequence=>61
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'EmergencyRequisitionFlag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27137379447655172)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'FUNDSOVERRIDEAPPROVEREMAIL'
,p_sequence=>62
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'FundsOverrideApproverEmail'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27137690310655173)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'HASACTIONREQUIREDLINESFLAG'
,p_sequence=>63
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'HasActionRequiredLinesFlag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27137909727655174)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'BUDGETARYCONTROLENABLEDFLAG'
,p_sequence=>64
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'BudgetaryControlEnabledFlag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27138283305655175)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'HASPENDINGAPPROVALLINESFLAG'
,p_sequence=>65
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'HasPendingApprovalLinesFlag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(27138511283655176)
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_name=>'OVERRIDINGAPPROVERPERSONNUMBER'
,p_sequence=>66
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'OverridingApproverPersonNumber'
);
wwv_flow_imp.component_end;
end;
/
