prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.0'
,p_default_workspace_id=>4572114388865144911
,p_default_application_id=>29323
,p_default_id_offset=>0
,p_default_owner=>'APEX262_LL'
);
end;
/
 
prompt APPLICATION 29323 - Talent Acquisition Portal
--
-- Application Export:
--   Application:     29323
--   Name:            Talent Acquisition Portal
--   Date and Time:   10:06 Tuesday October 13, 2026
--   Exported By:     ROOPESH.THOKALA@ORACLE.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     16
--       Items:                   62
--       Validations:              1
--       Processes:               18
--       Regions:                 34
--       Buttons:                 21
--       Dynamic Actions:          4
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:             10
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   8
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          2
--   Version:         26.2.0
--   Instance ID:     63102946836549
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEX262_LL')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Talent Acquisition Portal')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TALENT-ACQUISITION-PORTAL')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'8B94C2B508AF04B2D98B02C1D6184C69C6E666CA8CD66A58740818B6B5D78546'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(4583705645008373047)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Talent Acquisition Portal'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Talent Acquisition Portal'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013095654Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461327055500
,p_version_scn=>'50861177943023'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_ai_remote_server_id=>4572187351983162766
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(4583706576086373056)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2471166859590295591
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(4583707468966373226)
,p_nav_bar_list_template_id=>2850970698196720012
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/credentials_for_oci_generative_ai
begin
wwv_imp_workspace.create_credential(
 p_id=>4572186934182162758
,p_name=>'Credentials for oci generative ai'
,p_static_id=>'credentials-for-oci-generative-ai'
,p_authentication_type=>'OCI'
,p_namespace=>'ocid1.tenancy.oc1..aaaaaaaansast2ca2dhk2jyp7ygazbb2l5nt6f6ocw3qfxzmgufyxmpndo3a'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://inference.generativeai.us-chicago-1.oci.oraclecloud.com',
''))
,p_prompt_on_install=>true
,p_created_on=>wwv_flow_imp.dz('20261013051955Z')
,p_updated_on=>wwv_flow_imp.dz('20261013051955Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --workspace/remote_servers/oci_generative_ai
begin
wwv_imp_workspace.create_remote_server(
 p_id=>4572187351983162766
,p_name=>'OCI Generative AI'
,p_static_id=>'oci-generative-ai'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('oci-generative-ai'),'https://inference.generativeai.us-chicago-1.oci.oraclecloud.com')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('oci-generative-ai'),'')
,p_server_type=>'GENERATIVE_AI'
,p_credential_id=>4572186934182162758
,p_ai_provider_type=>'OCI_GENAI'
,p_ai_provider_api=>'GENERIC'
,p_ai_is_builder_service=>true
,p_ai_is_default_for_new_apps=>true
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('oci-generative-ai'),'xai.grok-4.5')
,p_ai_oci_compartment_id=>nvl(wwv_flow_application_install.get_remote_server_ai_oci_comp('oci-generative-ai'),'ocid1.compartment.oc1..aaaaaaaal6p4vtvg6ykzv426wxb4cwvgfrw6ztfpti2elpkali6wj3v23yla')
,p_ai_oci_serving_mode=>nvl(wwv_flow_application_install.get_remote_server_ai_oci_srvmd('oci-generative-ai'),'ON_DEMAND')
,p_ai_oci_endpoint_id=>nvl(wwv_flow_application_install.get_remote_server_ai_oci_endpt('oci-generative-ai'),'')
,p_ai_oci_project_id=>nvl(wwv_flow_application_install.get_remote_server_ai_oci_proj('oci-generative-ai'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('oci-generative-ai'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('oci-generative-ai'),'')
,p_ai_max_tokens=>nvl(wwv_flow_application_install.get_remote_server_ai_maxtokens('oci-generative-ai'),'')
,p_prompt_on_install=>false
,p_created_on=>wwv_flow_imp.dz('20261013051955Z')
,p_updated_on=>wwv_flow_imp.dz('20261013051955Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583701219956373038)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583701542451373039)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583701823739373040)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583702164373373040)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583702436891373041)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583702757525373041)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583703008063373042)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583703397479373042)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583703604715373043)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583703993848373043)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583704261559373043)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG',
  'auto_ir_reset_button', 'Y')).to_clob
,p_version_scn=>'SH256:TC1mqO_n1hWvorH6XHVejgQzJq9VjDsWoq0rKaIQUNo'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583704570901373044)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583704840920373044)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4583705159539373045)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4583707468966373226)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20261013055500Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583831021277374831)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013055516Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583831640399374831)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(4583831021277374831)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013055516Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583832102618374832)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(4583831021277374831)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013055516Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4583706576086373056)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:xJBbCIrk41OQEvKugll6LHVb7eZNdIOsDDEx6RzzM2M'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085917Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583749038881373996)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Candidate Pipeline'
,p_static_id=>'candidate-pipeline'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055507Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4592897486715527338)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Candidate Profile'
,p_static_id=>'candidate-profile'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
,p_created_on=>wwv_flow_imp.dz('20261013071203Z')
,p_updated_on=>wwv_flow_imp.dz('20261013071203Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583721342137373354)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583779782703374710)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Interview Schedule'
,p_static_id=>'interview-schedule'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013055515Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4594852841143022181)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Job Openings'
,p_static_id=>'job-openings'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cards'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
,p_created_on=>wwv_flow_imp.dz('20261013074309Z')
,p_updated_on=>wwv_flow_imp.dz('20261013074309Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583722864055373360)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Job Requisitions'
,p_static_id=>'job-requisitions'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4587781237629495800)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Offer Management'
,p_static_id=>'offer-management'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061529Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583778137782374707)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Offers'
,p_static_id=>'offers'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4588631010608527895)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Recruitment Metrics Overview'
,p_static_id=>'recruitment-metrics-overview'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
,p_created_on=>wwv_flow_imp.dz('20261013062046Z')
,p_updated_on=>wwv_flow_imp.dz('20261013062046Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4618033963614170689)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Requisition Detail'
,p_static_id=>'requisition-detail'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
,p_created_on=>wwv_flow_imp.dz('20261013085917Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085917Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4583827128680374821)
,p_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_version_scn=>'SH256:OArDk9jPrXkbASy79tal5TKPLzPXOmtWKZMX8Wgev5o'
,p_created_on=>wwv_flow_imp.dz('20261013055516Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583828159418374823)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Candidate Pipeline'
,p_static_id=>'candidate-pipeline'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013055516Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583829165220374824)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Interview Schedule'
,p_static_id=>'interview-schedule'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013055516Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583827641002374822)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Job Requisitions'
,p_static_id=>'job-requisitions'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013055516Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583828698876374824)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Offers'
,p_static_id=>'offers'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013055516Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000BC6494441547801EC9C4D8B255719C7CF6D33D10CE84C866466951948C0F8D622688F10246630B811DDB89831228231DFC0850B2109B870E137D00822C69E851B';
wwv_flow_imp.g_varchar2_table(2) := 'C58D44260E32E0B482D8D1BC40073259A55364BA13E8BC4CD237E757F73E33752BF7DE7A39A7EADC53E70979FAD4793FE7FFFCF2D4E9AAEAAC19FD47157050400172104FBB1AA30029054E0A28404EF269670548197052400172924F3B2B40CA809302AD';
wwv_flow_imp.g_varchar2_table(3) := '01729A553B0F4601056830AE0CB31105288CEE839955011A8C2BC36C44010AA3FB6066558006E3CA301B5180C2E83E9859FB07A842BAFF9CFFEDA78B76F57BBFFE76EA56D4A342BEDEAB8303B475E1570FFDF3C2534F6C5DF8CDA5AB179E1ABF377AFFC5';
wwv_flow_imp.g_varchar2_table(4) := 'A299F1E84FA95B510F34422F0CED7A27A634611080D8F8D61498B159BB3432E6F1B1193F545A9B661728805E18DA5DB5FFD10113B6A079A7C5BD0224E0B07105C69F5F81091398FC8D5C3D522F00F15F079B5370AA1DE2DAA26F903A070878D894AB30DA';
wwv_flow_imp.g_varchar2_table(5) := 'BF9902688EF6CD7A356FDD194072BB6223CD97A53D7C2880F65BF6AC892F7C8C376F8C4E0062C1FE6F57F396AF65550A70D6C417F8A4AA6D9B7AEF00B15016DC6631DAA73B05F009BEF13D8377808CF9D8E3BE17A9E3F952C0BF6FBC02C4A18D90E96BBB';
wwv_flow_imp.g_varchar2_table(6) := '3A8E5F05F00D3EF239AA378058D8C83E10F4B9381DCBBF02F8085FF91AD91B402CCCD7A2749C6E15F0E92B2F00F924BA5BE9747451C0D781DA0B403E89960D7A4C75A8B90AF839503B03A4D167AE7756BE9003B58F28E40CD0CA2BA50B5CA2807B147206';
wwv_flow_imp.g_varchar2_table(7) := '486F5F4BFCB3E2554421D7253A01E42304BA6E40FBBB29E0EA4327800ECD9A7E04E6E6BFE0BD5D7DB8167C07BA80A00AAC99D1D75D16B0E6D279E8E71F176D62E9EB7A0E6A0D107F29108B48BACEE50AB8F8B23540CB97A4B5A928A000A5E2E98EF6D91A';
wwv_flow_imp.g_varchar2_table(8) := 'A0F7D66EDCDFD19A74D88814680D50447BD4A55628E0120C14A00A71B57AB9020AD0727DDAD526D46B90001DBCFF8EC9DEDE37D7DE7A2D4FB9A62C21BFF6B6D5410104244073ED4DC0D93307370069CF42B4672665FBBD099BCA448301882803244073FA';
wwv_flow_imp.g_varchar2_table(9) := '73F79AF507BF6CBEF6DD8773237FECEE3B73905E78E395547CDBCB3E0704D05E2E18E09CFEECBD0660F202FB837C5E6EC1B259439422AD32225A559BD4EB070110D107474AA4E17A9E01126011A516C141398011A98868A4187350376FDC94CB0602D05E';
wwv_flow_imp.g_varchar2_table(10) := '1E7100A4CA99D20620CA6D29031A003B71CF492346BBEC6D3D47A143D9A20748A20291A5BCB979F945ED32FB5B5B6621A1CFC6F973E62B05FBE64FCE9BFB1EF80255F9392AB36DF38CF71FF10D183D406D240722A28CF405C26C0A0FB0DC69A38FD4497A';
wwv_flow_imp.g_varchar2_table(11) := 'DF039F37D491A72D7DB85E64D467163431F28BDAC65C3E1880F65FBF5EDB0FB43D7AE41337DB1FDC7837BF9628936716FC203A510518A465A39C3313B7C2CC422936C90FEF3142F4001DBDED16086567CECB5F7BFEE5BCB8D80F27534894215D664427CE';
wwv_flow_imp.g_varchar2_table(12) := '4607F61953B91D876F19EBD4FA19F3F02F7E90DBFAF71F341875C035A468143D4038F1AE3B8E1BA28AC041D922BBF6FF2940473E3ED30428660A6A648A2064F676055402CE372C3C272D44D8FA231620CC82C4B0B4251D820D04A063865B12702C8208C0';
wwv_flow_imp.g_varchar2_table(13) := 'B62FFF3BF719C049042A42905736F8511C23B3B72BBA0A385C972D07C94204689905AE5C1F637E100021FC5D771C2331021120010D063818D780266DE92010705DD7DE787577A6E9C1F40CC56D6AA6624E06888852D914B8394DA22A1A0C4080F0991367';
wwv_flow_imp.g_varchar2_table(14) := '0CD12587C8DEAA8006031CBC42DDE94F9EE272C6800A28AE97C0986934CDEC5CF95F7EC558F985FD21510C386CB6F6BFD2AF7687C50D83D50C06205190E872FA53A772907032467E02D7244A495B49E9C3F5D6C54B244B6DE7CA7379FDD1C219EAC01EA8';
wwv_flow_imp.g_varchar2_table(15) := '892A79458D1F27BF78A646AB389A0C0E2064271A01851879CA1719F58046FD5F7F79D1EC4CA30C7931A21375E4694B1FAE3122D86BDB69BEA48D1E206E0358660FA54D0DE78B4D603B9E67776C9401967FD9882426D10978689B372CFDD8AD09D1EE7F27';
wwv_flow_imp.g_varchar2_table(16) := 'B015212C0D154D366A800086077458660FA54D8D673299054FBC0518DCEE808432CE4562449949DD476F83F4A3FDF6EF2F932CB5EDA72F1BA295CCB1B4710495D10284E3330B0DAF25F854A389F1D61EC33F8C911520222A000467260C68F2D41EBEA9A3';
wwv_flow_imp.g_varchar2_table(17) := '4FD9280730C0009072BDE489500219734879CC699400E1F0CCC203048003444D8C37F2187D711E6391CE33E098575E2E93DFEE00E46F3FFD9D298294836323CF33B69C7E43893EEC254A8038F3B07820206D6B021DFDB99D35B1C96B8BD9775B442AE0C8';
wwv_flow_imp.g_varchar2_table(18) := '2391BD9D3DFDAD9F1B0C70008B2845445BA5E8C3DE5D2C4E80ECAFCD2E9BA62FCF86FEF1C767F25720E44FD837F04D8C5FDD895C402740330E704C20399E3F4A001AA0A28C285537A231560C162540084BF4206D6B3C60A42F6FE0F94CA3F8FD4F9D6BFA';
wwv_flow_imp.g_varchar2_table(19) := 'D09731B2C2198A3C9000120634A4945137348B16201747F09A83FE0050E70D3C6DE7197D895A9368B46F00A9AE15A3D6BCB163294B122071CE897BEE96CB56E9F5C2AB8FCC1EEA9B188F1EB8FD65A5E8D56A21013B250910E71F34E7DB1ED236063C3C5C';
wwv_flow_imp.g_varchar2_table(20) := 'E439D1A9F533F9F73EBC4C6D62CC9BE5E0CD1EC6298FC59204C8877380877100864F387891DAD41EF9CBCF0CF00151ACB73405080A1ADACEF45D19F0004DC3EE33CD1983822CB65B198BB6A6005911DAFE4BF468DB57FA9DB4B73FC6E1202E6531A50A50';
wwv_flow_imp.g_varchar2_table(21) := '4CDE5AC1B52A402BE8949896A400C5E4AD155C6BD400F140504C7E355F418D07BDA42801E2FD12C0C8B7CFA4FB59FD3F2C1CB4477BDE5C94004DDE2FDD7A59D9B3663A5D4181E600153A87BCE4052536D4979421B56D3277B40035D9E4A2B6F2BD3329AF';
wwv_flow_imp.g_varchar2_table(22) := '2616B5D3F2C50A240D10EFB16ED9EB8B55D29A850A240D105F10F2A1D74275B4A25281A401AA54A7A2019FAEEE6EBF62C42A9ADFAC96F692DEAC88F0420172701ADF39F3BD33C675DDA1008F3E62E4F9ECB56EFF556AA700397883E7512E8E97FEDC46F9';
wwv_flow_imp.g_varchar2_table(23) := '8DD26129C1BAF60850B03D7636314EC7DA4EC02308FA93B61D23743F0528B407229F5F018ADC81A197AF0085F640E4F32B40913B30F4F215A0D01E887CFEE80192FF53189F77D4B5C87DB652CB8F01A05A82010F7FAE5CC768EBF2FCA6D6821269143D40';
wwv_flow_imp.g_varchar2_table(24) := '3C4301862616F383BB55E3327A80109487714D0CE8E8A7E6AEC020007297C198EBAFEEE6FF734DFE68B0CA68CB9C0AA231C9030404DCFEF82E68E7CA7316A26AA32D7D8028754B1E2000E0F627DF06713EAA63F4A16FEAA6001508201AD5B542B7A42F07';
wwv_flow_imp.g_varchar2_table(25) := '0D505F9EE5B30CBEE9E1FF8758C7E4DB217986D5D73ABB984701F2A02AB733CE448054D7B84D12ED3C4C1F740805C883FC800044FCBD5A5DA38F87A9830FA100057741DC0B5080E2F65FF0D5B706E8F6C3232F065FBD2E20B802AD010ABE725D8037055C';
wwv_flow_imp.g_varchar2_table(26) := '82810234CF0D5A565B0105A8B654DA709E02AD01FAD2C51FBE346F402D8B4F01175FB60608994666F42CA95ABC0A8C8D79D265F54E001D9AF1DF5D26D7BEF12BE004D09A39D408143903AE3E74026863F331052872805C7DE80410DA8DF41C840C538B2B';
wwv_flow_imp.g_varchar2_table(27) := '713DFFB05B67808CF9E04906524B5301678008811A85E284E7AB9B8F3EE1BA726780260BD02834D1219E9F3E6E5FECD60B40442106538B47011FD187DD7A0188817C11CD586ADD2AE0D357DE0082689F0BEB56C27447C747F8CA9702DE0062412C4C0FD4';
wwv_flow_imp.g_varchar2_table(28) := '28D1D87AE9806FF091CFC9BC023459981EA8273AACE24FFFBEF10E1007EA91393CB78AF2A5BC267C826F7C6BE01D2016C84259302193BC5A3805F001BEC0275DACA2138058280BDED8FCD1390E6DE4D5FA5700EDF101BEE86AF6CE0092057368632392D7';
wwv_flow_imp.g_varchar2_table(29) := 'B41F05D01CEDBB9EAD7380D8001B39BBF9E8884D9157EB4601B95DA1359A7733CBECA8BD002453B22936074898946BDA5E017A0A385DDFAE98AB6CBD0224930312064C1CF08009937A4D972B0030E885766818021C596110806472D28DCDC79E0526ECAC';
wwv_flow_imp.g_varchar2_table(30) := 'BDCDDD3EBEED7E31331A7F2775132D2445238041AF0DAB1D1A86B4E0009537CF5F08889DFDC38FFF9CBA89169296F50A9D5F3980420BA2F3375340016AA697B62E29A0009504D16C330514A0667A0DA7B5A79D28409E844C7518052855CF7BDAB702E449';
wwv_flow_imp.g_varchar2_table(31) := 'C85487518052F5BCA77D2B409E844C7518052855CF7BDAB702E449C8748699DDA90234AB87E61A2AA00035144C9BCF2AF021000000FFFF86B0963100000006494441540300AC12448A37055AF20000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4583708912442373250)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013055500Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055500Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700000E10494441547801EC9DBDAF1D4719C65711482412985C3976655B220D1F710534118A84886828298282F82F2828282928F817A810915250D2A020A408B9E0A372';
wwv_flow_imp.g_varchar2_table(2) := 'F8682E529CCA6615DB444A904082FDADEFBB7E3DF7EC3DBBE7CEEC998F27CA9B99DD997967E6799F676776B367EF737FF8DECFFF271306AD72E0B94EFF0881861190001A0EBEA6DE75128058D034021240D3E1D7E41B1680822F04B40512071A47402B40';
wwv_flow_imp.g_varchar2_table(3) := 'E304687DFA1240EB0C687CFE1240E304687DFA12408B0CD09C27042480090A655A4440026831EA9AF38480043041A14C8B0848002D465D739E109000262894690181708E124088888E9B424002682ADC9A6C8880041022A2E3A61090009A0AB7261B2220';
wwv_flow_imp.g_varchar2_table(4) := '018488E8B829041A12405371D564172220012C044AD5EA444002A833AE9AD5420424808540A95A9D08480075C655B35A888004B010A8A2AB69F0B3084800B3D0A8A00504248016A2AC39CE222001CC42A382161090005A88B2E6388B8004300B8D0A6A40';
wwv_flow_imp.g_varchar2_table(5) := '60DF1C24807D08A9BC6A042480AAC3ABC9ED434002D88790CAAB464002A83ABC9ADC3E0424807D08A9BC6A042A1640D571D3E4222120014402526ECA44400228336E1A75240424804840CA4D9908480065C64DA38E8480041009C8ACDC68308B11900016';
wwv_flow_imp.g_varchar2_table(6) := '43A58A35222001D41855CD69310212C062A854B1460424801AA3AA392D464002580C952A9680C0DA31362F808FFFFBEF0EBBF7D1FD0EFBFB87EF7718F9FE93C71DB61654D52F078166053091FE5F03F107FBF83F831006B3D071DC7FF26810C0A35110FD';
wwv_flow_imp.g_varchar2_table(7) := '20062B535A0F024D0A6024FF19E99786B21FC4C0CAD04B084B212BA25E730280C0F706F2FBE85C79E9C5EEF66B5F1DED1BDF7DBD33BBF9E52F7498AFDB0F42E825020F49D1F9A6040071FB81C016314F7CF2989591DEFCD220006C1002C766F86015B163';
wwv_flow_imp.g_varchar2_table(8) := 'A5E522509100F60701E25A2DC8CE559FD4CECDA5088155C1D765159108E6102BE77C3302E8836D0BE45F1B26DA7811843EF7F94330184F9830EE2930F2F8C2F6F950795C041A12C0A309B9705F3F152CC8B01A58359E1441683B9E4BA903C95935B0B19D';
wwv_flow_imp.g_varchar2_table(9) := '9E38CDC1B5E9F92604E0AFAC90DF93782DDAAC00D8D27623F9879B6E48BFB44D3FDCA7B032F4C1AAB5B4BDEA2D47A009012C8763594D2FA08B484A19577CEFF5E4C6B5EEEB6F7C73B46FFFF08DCEECE5575FE9305FB71F84D04B041E92E8F92604C055D8';
wwv_flow_imp.g_varchar2_table(10) := '90BB72F545CB264D216E3F10D83A31E27F6D20FF8B8308302B237DF9D5AF0C02C05EE170327CF8F14F053EA3FCC108B42100B7DF5EB37D9943D5FB98DBDA405C6B0FF98DF8766E2E4508AC0AB4B13AAC221281A111376D42007121DBEFAD0FB62D907F7F';
wwv_flow_imp.g_varchar2_table(11) := 'AB676BD0C68B20F4F96CEDF34708061B6FBE3FBA3FBECEC17D05C7F8C2CEB76AEF4C130278E1D39F9922FBF89F0FA77C8C8CF76DFE7AB7F509F7F5566749CA6A60F5586920B41DCFA5D481E4AC1AD8D8CEAD801C333E0C41F48158E7FCD67ABE0901C40E';
wwv_flow_imp.g_varchar2_table(12) := 'DEBDBFFD6372F9C2A79E8A8B939E5090DF9398F235C67D825F05F6B51DC9AF274EFB607AA6BC09015C7DFECA34694FDEE964C6192F202FAE70C89471C5F7E7AFDFBED5BDFED31F8CF6E6AF7FDC99DDFEFE6B1DE6EBF6C3AAD517B81AF8391C926F42001E';
wwv_flow_imp.g_varchar2_table(13) := '18B640983FB7268F80EEFDF5E90AE0C5851FAEC2A4D8C98D9748921BC4ED07025B47D7CF88FFAD81FCD7863C6665A4B7DF1C04800D42E0D80C1F7EFC76BEE6B40901B04DF17B75487C68509F25FFE7CFB9618F6D27D9C258FED0D4FBF0BEBD3F886BC790';
wwv_flow_imp.g_varchar2_table(14) := 'DF886FE7E65284C0AA401BABC32AD292089A1000C1F5576A5680BBEFFE99D3AB2C6CE37DAE7214B1721F6C5B20FF5AF7B4F122087DAEF55752FD6604C02A70F373D7A7D82082DFFFEA9D6EC96A405DC84F6A0EAE3E7FFEEA4F995F691E7EF08053D1CCFB';
wwv_flow_imp.g_varchar2_table(15) := '36A7BDDBFA84FB7AABB324F56D59695A59059A11002440042171D9D220028C3A66901D83F818792BC3C75657FFD33B7FB16E3BC63F1D0C99DE5DFD21305B9AE1F441FF729FE05781839C14D8A860011C8636C485C0BEF52882E1C69615C10CD2639EF8B4';
wwv_flow_imp.g_varchar2_table(16) := '6115C107F95DE6CB3C7977D5CDED1C22B2317971D9B91AD3E604401021E9174F6E75A110289B33B61F903FBC0ACFD5E7FC87C316E832DB2004747AE73D5C8DC6B8C7CCD97FFC36A5C5ABF7190C974A9A14802106A14C088801925B19790CD28FF6D9EBE7';
wwv_flow_imp.g_varchar2_table(17) := 'B62056D7A708847676EED46D61ECDCD2F4F419F29FBFE760AF6EBED8C258FED0D4FBF0BE0FF55742BBA60560014208D8CD81E40802238F8D840EFE6FAFB59B4BF16565AC027F7AFB7776B8380DDB789F8B9DA8E25E042480BD10ADAF80685835AC2522F8';
wwv_flow_imp.g_varchar2_table(18) := 'CDCFDEEE4E17AC066C99203F6DAC3DAB93E57DEA579A0777DFF74597CE7BDF977696B10309205170104148DCD3614B733A8800F3DD3E3CBB5780F87F1C568B90FCE7AEFEBE71C4FCDDB7DE9DBC31FEE9A0E24CF502E046717C3BD2BD12CC5B90310CBF17';
wwv_flow_imp.g_varchar2_table(19) := '3D2D81B8BB45F05EC78A6006E9314F7C38C72A820FF2BBCC97DDFDE553F2EEAAAB73BB11A8560013F1CFDE8E4C715387CF7EF81F5188A977CFE43DD490947B8A5008BE4E9867FB01F9D75C85EF0F5BA0078385BE961E73F5F72262DC4BDB965CAF4A018C';
wwv_flow_imp.g_varchar2_table(20) := 'E43F23FE56C1E9CF8440DFBBFA84502604C400C9AD1E790CD28F36DC8C2F213F7568677E3C81EDDCD2D4B7657C4BDB955EAF4A01F042970F0C3F61E49B3E7CDC2AA6E193AF4CF8BEE87B4E04D44308184F981004461E1B097D89274EAC02BFFDD12FE866';
wwv_flow_imp.g_varchar2_table(21) := '95856D18DF2A070557AE4E007DB01581A41822881D277CF28508FC7BDFE1187C59EC3CA261D530BF88E0ADEFFCA4634B63E7E652B64C909F365627F7ABBF8D33565A9500205E3F6C450C1CAECE90D48E53A5F4E145C0BDC145AB40EC71208290B86C6910';
wwv_flow_imp.g_varchar2_table(22) := '01E6FB83F418C47F67582D42F2B774F50797AA04C084CC203F57673B4E9D2202CCFA612BC4CD712C3BE489D32882E1E9102B8219A4C73CF11933AB486BE467DE5509C05F75B7FAFE0F20F2C2DCAE17E7288B65AC2AAC6E08AA0FB679D60704E69E225C0D';
wwv_flow_imp.g_varchar2_table(23) := 'AC7C57CA4D34E46715D9555EFBB9BA04E0BE7EE0AFC62983B805F9C3F1F7C3360F2178C1FB3A5E088801925B39790CD28FB6F08993B5AF2DAD4A00C7080E577EDFEFC98D279F3EE4E356318DCF29F29509DF17DBAC3911500F21603C616265C0C8635CF1';
wwv_flow_imp.g_varchar2_table(24) := '31EAB56C050920BF30853FA281A47CD0CAFF8E37D6A8F1C91722E8C3FBEC67B643BE8EF2F3084800F3D8EC2DE187345689AB3324B5E354297D7811706F70D12A906A1CB5F895000E8CA4BFFA437EAECE07BA5ADD0C11B0D5B2866C85B8278865F6C4A985';
wwv_flow_imp.g_varchar2_table(25) := 'D545023016AD4CB9F9B526271B7DFF87FE1E7EF0A0E3ADD1F0C539CA6219AB4A3FDC683FB1C7B1DC66E9470238302C5E005C910F74B3AA19E4DFF5D6E82A272B2B230256965AB75912C04A421CA5FA59A790FF2C3B26D76F3FF9F4211FB78A697C4ED1FF';
wwv_flow_imp.g_varchar2_table(26) := '409ECED866D528020980E81660E18F6820291FB4BA368820F6F0F1C927564211F4153E71920062B32791BFD33B4FBF0E01312169A2AE26B78800A1D909EE0D6A5B0524008B6EC6E9E99DA71FC782FC1073ABE12234B65AD65F6DAB80046091CD38E5E6D7';
wwv_flow_imp.g_varchar2_table(27) := '86E7C968E752A7882E751FC7F22F011C0BF915FDFA479E5C9157348D52D5F7C936288AD3854E5257930052232CFF59232001641D1E0D2E350212406A84E53F6B042480ACC3A3C1A5464002488DB0FC678D40C602C81A370DAE1204AA1580FDA18B30AD24';
wwv_flow_imp.g_varchar2_table(28) := '6E9A462404AA1200BF7F8D848BDC3482406502B8B2EAAFBE3412634DF30204AA1200F3E447E0FCF8DB1BE76542601702D50960D7248B3BA7016F868004B019D4EA28470424800851B13F7411A6115CCB4562042480C400CB7DDE08480079C747A34B8C80';
wwv_flow_imp.g_varchar2_table(29) := '041001603D718A00E2998BAD1309606BC4D55F5608480059854383D91A0109606BC42FD99FFDA18B30BDA4DBA979E8D78EA70A95652480CA029A7A3AB5BD6F2501A4664C45FE213FAF9A5434A52E2301D4046BBAB96CF9C4C9F745BE36F2132509001464';
wwv_flow_imp.g_varchar2_table(30) := 'CD222001341B7A4D1C0424005090358B8004D06CE8357110900040E1D8A6FE8F8680047034E8D5710E08480039444163381A0212C0D1A057C739202001E410058DE16808480047835E1D83C0B14D02387604D4FF5111684E00E1A7120F3D3E6AD4D47934';
wwv_flow_imp.g_varchar2_table(31) := '049A10006F3146432C7094D277D0950E1320D08800D27C3211F2D7F88664029E65EBB20901803E44E595DE98864F7CCBCA45E088022817348DBC1E0424807A62A9991C8080047000684B9B849F4A3CF478697FAAB71E0109603D6617B6E0C6F8C20A9728';
wwv_flow_imp.g_varchar2_table(32) := '4CE9FB12C32ABAA90410397CDC18A7202A3EF11D79B8CDBB9300125000A25EF8B4E9E456B7B61C9F0986DABC4B09A0790AB40D8004D076FC9B9FBD04500905EC1386974D2B8163F1342480C550E557911BE354A34AE93BD5980FF12B011C825A266DB831';
wwv_flow_imp.g_varchar2_table(33) := '4E41547CE23BC53473F32901E4169195E381A86B9F28EDAB8FCF95C328B6BA04506CE834F0180848003150948F621190008A0D9D061E03010920068AF2512C021B0AA0588C34F08A1190002A0EAEA6B61F0109603F46AA5131021240C5C1D5D4F6232001';
wwv_flow_imp.g_varchar2_table(34) := 'ECC748352A464002D822B8EA235B0424806C43A3816D818004B005CAEA235B0424806C43A3816D818004B005CAEA235B0424806C4353C7C0729F8504907B8434BEA408480049E195F3DC119000728F90C6971401092029BC729E3B021240EE11D2F89222';
wwv_flow_imp.g_varchar2_table(35) := '90500049C72DE742200A0212401418E5A4540424805223A771474140028802A39C948A8004506AE434EE2808480051600C9CE8B0180424806242A581A64040024881AA7C16838004504CA834D014084800295095CF621090008A095519032D6D94124069';
wwv_flow_imp.g_varchar2_table(36) := '11D378A3222001448553CE4A434002282D621A6F54042480A870CA5969084800A5454CE38D8A404401441D979C09814D1090003681599DE48A8004906B6434AE4D1090003681599DE48A8004906B6434AE4D10900062C02C1FC5222001141B3A0D3C0602';
wwv_flow_imp.g_varchar2_table(37) := '12400C14E5A3580424806243A781C74040028881A27C148B8004506CE8F21878E9A3F83F000000FFFF9FDB5F0900000006494441540300F550896A2C40080F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4583709243948373251)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013055500Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055500Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D3D8F24C779C77BD726641110DF40DD453C0256E2179D13FB684030681E2C3851E840840C2726F80D1C3030201250E0C0DFC0901382C429';
wwv_flow_imp.g_varchar2_table(2) := '50A844A040EA2010104F8A566FC90A2019916CF07812709420E956F59BD91AD5D6F6CCF474D76BD79FE073DD535DF554D5AFEAF95775CFCECC71A7FF4440049A2520016876E8D57111E83A0980668108344C4002D0F0E0ABEB6D13A0F7120028C844A051';
wwv_flow_imp.g_varchar2_table(3) := '02128046075EDD1601084800A0201381460948001A1D7875BB6D02B6F712004B42471168908004A0C141579745C012900058123A8A40830424000D0EBABADC3601B7F712009786CE45A031021280C6065CDD1501978004C0A5A17311688C8004A0B10157';
wwv_flow_imp.g_varchar2_table(4) := '77DB26E0F75E02E013D16B1168888004A0A1C1565745C0272001F089E8B50834444002D0D060ABAB6D1318EABD0460888AD244A01102128046065ADD148121021280212A4A1381460848001A196875B36D02DB7A2F01D84646E922D0000109C09641BEF3';
wwv_flow_imp.g_varchar2_table(5) := 'FCFF3D37643F7CFE9B2FCBCA65303466A46D19E6E6939B150026054630DF79FEFFDFB4F6CEF3DF3CC3CEBAE33787ECA8EBBE2E2B97C1D09891C6985ABB733EDE8C3DC63C6855099A110006D90EFC3B26C8991418C17CD69D3D77766EAD4E8496FA6DC79A';
wwv_flow_imp.g_varchar2_table(6) := 'B1C79807CC893B461810046C493C76F565B10240C033900CEA3B9B803F5B05FA2E20BAD62E8133B30820081873E6CEB9203097964A657102C0603170A83A03C9A02E75F0D4AFB804983BEB3974FCE63B66116141895B637AEF8B10001BF40C1281CFC0A5';
wwv_flow_imp.g_varchar2_table(7) := '47A91A974E0031608E2104D812FA5BB500D8C057D02F612AD6D30784004304B0925BBEAF6D550A80027FDFB0EA7A0A02880056B308542700C0D68A9F627AAB8EB10410017B6B30B64C29F9AA1100BBEA03BB14786A8708B804989B2C506E5AE9E7550800';
wwv_flow_imp.g_varchar2_table(8) := '50B5EA973E95D43E082002A5EC0668CF3E2B5E00087EA0EEEB88AE8B40490498B3CCDD92DA34D496A2050080801C6AB8D244A07402CC5DE670C9ED2C56000007C092E1A96D22B08F007398B9BC2F5FAEEB450A00C000970B8AEA1581900498CBCCE9903E';
wwv_flow_imp.g_varchar2_table(9) := 'F7F91A7BBD38010014C0C67640F944A00602CC69E676696D2D4A000004A8D220A93D22108200739B391EC257281F4509008042754C7E44A04402CC71FEA6A594B6152300A529632903A4762C91C09F7D3D66AF0EF15D840010FC28E3210D575E11A89500';
wwv_flow_imp.g_varchar2_table(10) := '9F5665CE97D0FE220440C15FC254501B521260CE97702B905D004A51C29483AFBA44604D20FFAD40560120F851C2350CFD2B026D11E05620F42EE050825905E0D0C62ABF082C8F40DE5D403601D0EABFBCA9AC1E1D4E20F72E209B001C8E4A254460A904';
wwv_flow_imp.g_varchar2_table(11) := 'F2ED02B20980EEFD973A99D5AF4309B00B38B4CC50FE2969590480EDFF94C6AA8C082C9540AE8781590440ABFF52A7B1FA359D409EDB80E402904BE9A60F8C4A8A407C02DC06E4888DE402F0A03B7E2E3E4ED52002F51198131B537B7B3CB5E0D472C7DD';
wwv_flow_imp.g_varchar2_table(12) := 'D13F4F2DAB7222B064023962E3383550B63AA9EB547D225003811CB1915400F4F4BF8669A836E62490FA39405201C80956758B401D040E7F37604EBF920AC0B1EEFFE78C95CA8A407002C7C13DEE7098E31E6747737449048A23903A46920940EA7B9BE2';
wwv_flow_imp.g_varchar2_table(13) := '46560D1281910452C64A3201C8F11EE748DECA2602D51298DBF0640230B7A12A2F02AD1048B958261380633D006C65FEAA9F3309A48C95E3996D55711110818A09241380D44F372B1E13355D04461108912999008468AC7C88400B04522E961280166694';
wwv_flow_imp.g_varchar2_table(14) := 'FA28025B0824118094EF6B6EE9A79245A02A02A96226890054455E8D15810A08846AA204201449F911810A0948002A1C34355904421190008422293F2250210109408583A626B74D2064EF930840CABF6D0E0927A5AFFBBFFF4D87A5AC5375954B2055CC';
wwv_flow_imp.g_varchar2_table(15) := '2411807231E76B19C1FEDEAF3FE8B05F7CFC6EF7DEAFCCB931CEB1FED37B1D96AF85AAB905021280C4A3BC097C13ECF77F67567D63434DE83FFDC408C0279D1583A13C4A1381B904240073091E50BE37AB3A2B3D817F40B19510B05338A48CF22E9340E8';
wwv_flow_imp.g_varchar2_table(16) := '5E49004213DDE28F00EECDAAEE5E7EF4F38F77D79FFDFB95FDD3BF7DB9B376ED6FFEB2C3DCBC8806BB0176106EBACE45600E0109C01C7A23CBF666E527806D7637F039C7EC358ED7FEDA08803104C117027610E491894008021280101477F820F87B67E5';
wwv_flow_imp.g_varchar2_table(17) := '27D859F539EE28B6B9B41203B323D82498137613E6A0FF4560360109C06C84BB1D0C05FFEE1297AFFA22C06E62EAAD00E57AB32341445C238D6B976B574A290462B443021083EAB94F82EAFC747560E55F9D4CF8071170770DBEEF7D2EC9CF33046E217A';
wwv_flow_imp.g_varchar2_table(18) := 'B3235989887907C21E49E31A797A2310FBFCE9FA32084800228E636F02CDBAF7EFE56DFA214744C0E65F05EEEF7F635F6E3DB2AAAF83FA93AD79FC0BB47B5DE69E7F49AF17464002106940093CD7B51BBC6EFA21E7EC00305BA6DFB352739D55DDE6B7C7';
wwv_flow_imp.g_varchar2_table(19) := '279EBAD27DE14B5FBC60A4D9EBF6D81B01EBF7D461F3EA5827010940A471BBFFBBDF46F13C564808DCDE04B0DB0882FCC6576F76FF60EC0B5FFA5B23007F32D2FEF5BFBE6AD2BEE81659FD0D422F11B8C024C78B58754A00629175FCBAABB6933CFBF4BE';
wwv_flow_imp.g_varchar2_table(20) := 'B9871F7242C0F65EF0DBC07FDCACFE43656C1AC2405EFB9A23BEFC1D0DE9B2FA094800EA1FC34B3D2060DD4456F67D81EFE6272F65D831D8F4A15B097B6DCC1101F16D4C39E5894B400210976F72EFBDB75DF757F3431AC46EC0CDEFFB76AF0D9D13F09B';
wwv_flow_imp.g_varchar2_table(21) := 'B71A7FB5FEB01342628D078D5C3FD4EF505D4A9B464002308D5BB652F7FABB9BBA1F7EE82F36E7F6A477B6FE3CE86335B7D70E3D52D6DD05B8BE77F9DA04BE097A6E53B06DF9B9865FC4A0F7C46B5B99D6D263F657021089EEC30F7D66E3F9DE47773B6C';
wwv_flow_imp.g_varchar2_table(22) := '9310E8E4E13FBF2800049EEBDA5FC1DD6B63CF7938E8E6F5EB70AF71CE755678029BD7BE5DBDFEB49FB479DD1BF1EA25021B1E294E24009128FBC1E9AEDC73AA7CEF67BFDC5AFCBEF3CE83BB726F2D30F282EBCBADC32F4EF012FC6E3A01FFE5FFF98F0E';
wwv_flow_imp.g_varchar2_table(23) := 'FBDA77FEBBFB1773CE1123EDFABF3FEB665FBDEBC06DC18544BD88464002100D6DD7B95BF45D813BB609EFFDFC62F03FF9D9472F1465F5B5096CDFEDF9DCA3EBCBADC3F54B7A6F5670378DE026E0AF98551F73AF714EDAF5AF3DDB2106E4250DBB6FDEDD';
wwv_flow_imp.g_varchar2_table(24) := '90084022BE49002232F603F4E4F68F27D746F0BB22F2E4671F9BEC2B46417FE55FADEE26B8C7D68510F822D0EB76A01BCB6F6A3E09C0547223CA711BE0062ACF0108E411452F645995F3B6FEBEB85C2890F8851FA80432ABFBA1CD4004B865B0E57AB3A3';
wwv_flow_imp.g_varchar2_table(25) := '6067615FEB189E8004203CD30B1E0954FF56E0101120AFBF73B8F6C8D50B75E47E41A0DA3610FC04B27D7DE8915B06B74CAF5D808B23F8B9042038D2CB0EAF7DEEEAA5E7013FF8F61B1DC1CDEAEE97200D23F0DD6D3FF9D851B0B3E0DC3737FDEEFB1FFA';
wwv_flow_imp.g_varchar2_table(26) := '9727BF767DB975E0D00FD039C18F3F0C11E188F13C80A32C0E0109401CAE97BC220204AF7B81E026C81103CC9E73C41001373F2B3F3B0A37CD3D77DF7AFC38A000B8BEDC3ADCBA39770397D753CDBD0DC047ABB701F43DB64900621376FC13BCBE083897';
wwv_flow_imp.g_varchar2_table(27) := 'B7FEAD00B71004BFBFFABA6539F7AFFFE85B6F923CCB4EDFFEE985F27E1D318293E707AE08DC77DEDEBCD018BD984D4002301BE1610E1081BF7AE2E90E2120B0B795E61A46E0B37BF0036F5B39FCDA6BACDCEEF6DDA68F3D52F6F4ED9F6CB2BBBE6DE27D';
wwv_flow_imp.g_varchar2_table(28) := 'F3969D3D7783D6A6E95836010940A6F14108086CC46015E4E6C1DE85A3796EC0F5B1816FBB815F7BCEF1D45BC1491B6B77BC1D84EF7BAC1FE52B978004A080B121C87D9BD32C84C4966717F0DDFFFD56C76A6ED3F61DC9EBDF3E0CADFEFBFCE8FA7402A9';
wwv_flow_imp.g_varchar2_table(29) := '4A4A0052914E580F62E2072CABF998DD00814F5E84C336195FDB567F6E536CBE90C70F4EDE0DE94EBEB61090006C011322990764D678BB2C94E1735FFB085802D7CD776AEEE7D90D10E4A7E6D6C035D2B8E6063E65F1812FCEF7D9C96BB7F76599747DD7';
wwv_flow_imp.g_varchar2_table(30) := '3B0F931CAAD0868004608322DC0901CADFB2F3E7B1D6FA4FD7BFF517E2884F3E3E8BF53BFE5086C02580FD9E11E4A7460C5C23CDCFC7AD043EFC74F7B57B9D55FBC3002BF7C9EB1785841D8D5BA7CEC31190008463B9FA796F1BF8EED3F180555C72D51B';
wwv_flow_imp.g_varchar2_table(31) := '61D9250404280F1A8784E092B3F304F252664CE091C7BD0D08B10B707DD096F366357348D951094020DABD5989599987029FEF040C69434DEE8D10F4A60D43D748B342B05ED51F5BFD6522816B8D40E31A814F5ECA8C35373FBB007F051FEB877CDF7BE9';
wwv_flow_imp.g_varchar2_table(32) := '550E1B737D6F1275128C80042010CADE04A0EB8A80E78740F87D3F8E210D9F98FF5B03B4A1DF2102B48F159BA0E22D46D748E31A790E35CA2124B61C2BF8141120F81110EB0751B2E73AC621200108C0D50F3A029380470402B8DFEA82AF084708DC7A7A';
wwv_flow_imp.g_varchar2_table(33) := '4F88B6160E7C0131715D1E22023C37180A7E44C9F5A9F3F00424003399F666C5ED9DA023F809CC996E0F2A8ED8B8057AD326F775AA736E21DCBA1081D7BFF28D8EDD00E65E23E83102FF0DB3ED77577E7613AD06BFCB28C5B9042030E5D4C16F9BEFEF02';
wwv_flow_imp.g_varchar2_table(34) := '783018DA78C0B94B5CB815E01902016CDBC51121C010036B043DE6063E79D9F6FBBB09D265710848006672E52D3FEB82D5DF9EA73C6EFB5871E836F080B337BB1D84A5DFB1CB208009E443EA4734D84168E53F84DAFCBC1280990C098A992E6615E763C3';
wwv_flow_imp.g_varchar2_table(35) := '7CAC78969309857B2304EC08B6152590D90D2004D8503E821E23F0110D761043F994168F80042020DB479F7C3CA0B7FDAE087EFF3B039E78EA4AC78F8184367E6300735B85F8ED1201F22204186280AD82FD91ABDDEA7CE2079EF0BB44CBD12709400EEA';
wwv_flow_imp.g_varchar2_table(36) := '01EAF4B7FD043E3FE7C5F7F8F32DBEA18DDF18C0A8C315823122E07697551E73D3749E8F8004201FFB5935BBDB7E0292C09FE5F080C2080175DA228880FB2CC4A6EB583E010940F96374A985ACFE6E2201E9BE4E714E9DEC3A6C5DBD792818CB6C1D3A86';
wwv_flow_imp.g_varchar2_table(37) := '27200108CF34BA477FF58F5EE1400577BDEF1C6417D09B0783316CDFBB0E03CDAB2E2957832500B9C807AAF789A73E1FC8D37837A76FFFB4F3BF33607CE96939111609C13476BB4A490076D129F09AFFD49F877D299B49F09FBEFDA7EF09B4755FBDFE74';
wwv_flow_imp.g_varchar2_table(38) := 'C7B70287347C5AFFF68810F4E676C3BED6711E0109C03C7E4D953E352BFFA913FC04283F01C66FFBF1831EFC264048C327BE111517746F6E35F4D0D12532FD5C02309D5D7325DDE0272809D02B66E58F0D02514168DC7AFA05ED02DC7EA53E9700A4265E';
wwv_flow_imp.g_varchar2_table(39) := '697DA766F5779B4E50BAAF639F2334888EAD87878EDA05581AD38F1280E9EC9A2A79EA6CFDDD404C0901D1E1B6C3D6A95D802531FD280198CEAE9992FE5B7E0462AECE5FF9BBA77355BDC87A25008B1CD6B09DFAF8FD8FC23A9CE1CDDD01701B30C35511';
wwv_flow_imp.g_varchar2_table(40) := '4573374202907B042AABDF0DC0CA9AAEE60E1090000C40519208B4424002D0CA48AB9F22304040023000454922908240097548004A1805B54104321190006402AF6A45A00402128080A370AFBFDBF1597DDFFC0FF004AC52AE4460160109C02C7CDDEA27';
wwv_flow_imp.g_varchar2_table(41) := 'B6AC0B3EA73F640883CDA3A30840A0149300CC1C09BEF072A60B1517816C04240033D1F305977CC32D5F7DED1A5F773DD3B58A8B40740212804088D909B8863004722D3722108D8004201A5A391681610225A54A004A1A8D096DE1937A4336C1958A3448';
wwv_flow_imp.g_varchar2_table(42) := '400250F9A0F3E59C4376EA7D8147E5DD54F32311900044022BB72250030109400DA3A4362ECD7A827A0000078F494441548640691D910094362207B687B720ADE9ADC703E1297B2701D0241081860948001A1E7C755D0424009A030711F8E0E4DDEE7B2F';
wwv_flow_imp.g_varchar2_table(43) := 'BD3A681F9A6B0739DB91F9E4F5DB83759CBC767B47A9B22F95D83A094089A352789B1081210BDDECA13A48B3F5F0A7D7F65CC769042400D3B8A95466023CF0E44FAF3337A3FAEA2500D50F61FA0EB0F25A4B51FB3AD81FEB6C9DD71EB9DA5DFBDCD51455';
wwv_flow_imp.g_varchar2_table(44) := '2FBE0E09C0E287386C07D7C1F8A809C6B585F53EEC8D0F56B1DA5BE3F570CE72534B6D9904A0D49151BB44200101094002C8AA42044A252001287564D42E11484040029000B2AA689B40C9BD9700943C3A6A9B0844262001880C58EE45A0640212809247';
wwv_flow_imp.g_varchar2_table(45) := '476D1381C80424009101CB7DDB044AEFBD04A0F41152FB44202201094044B8722D02A5139000943E426A9F08442420018808D7BAE6F7024F6EFFB80B61FCF0A8F5AB63D9046A689D0420D2283DFCD0672E78BEF7D1DD2E9459C77C3ACE9EEB2802530848';
wwv_flow_imp.g_varchar2_table(46) := '00A6501B51864FACC50C50FBA9BC114D511611D84A4002B015CDFC0B7C7C95CFAE2304210D9FFA3CFCFCF191874EDF0A1C7B12AC7702EBCFCE2308210C9FB1DB2DFFF308D4525A3B805A464AED14810804240011A096E0F2EEFB1F76FC3E6008C357097D';
wwv_flow_imp.g_varchar2_table(47) := '521BC213900084675A84C78F5702F0132302F30D5FB653BAFDB024967194002C631C57BDE0F9C2EA24E23F29EA88D8FC24AE6BAA440250D368ED692BAB33BF13C83B0EBC4D18DA78F7614F1374B932021280CA066C4C7359A5799B30B4213063EA579E7A';
wwv_flow_imp.g_varchar2_table(48) := '084800EA192BB554048213900004472A872D13A8ADEF1280DA46ACE0F6BEF1D2ABDDEB5FF946103B79ED76C13D5D4ED32400CB19CB2C3DE18163EC8AFD0F56C5AEAF25FF128096463B425F79E018530478E7410F1F230CDCB94B09C039081DA613400478';
wwv_flow_imp.g_varchar2_table(49) := 'FB91600D69F8AC29F8A713CC573289001C770FDECAD745D59C8A00C11AD252B5BBC47A52C54C12012811B0DA240222A08F036B0E8840D304B403687AF8D5F950046AF52301A875E4D46E11084040021000A25C8840AD049208C08D5B2FEA5D805A6788DA';
wwv_flow_imp.g_varchar2_table(50) := '9D8540AA984922005908AA52114844A0E66A9209C05177A45D40CD33456D5F24816402B0487AEA94084420709470B19400441840B914815A0824138007DDD9F76B81A2768AC0580231F2A58C95640290EA6F9B630C887C8AC05209241380A50254BF4420';
wwv_flow_imp.g_varchar2_table(51) := '3481948B65320148F5BE66E8C1903F11484D2065AC24130020A67CBA497D321188492086EFD4319254006200934F11581281940F00E1965800FEF00A95CA444004CA2090540052DEDB948157AD1081C308FCE3AD175E3EACC4BCDC490580A6A6BEC7A14E';
wwv_flow_imp.g_varchar2_table(52) := '9908842610C35F8ED8482E000FF4074131E68E7C2E80408ED8482E0029DFE35CC09C50171A22902336920B00CF01726C751A9A47EA6AA504888DD44D4F2E00EB0EEADD803507FD5B2381186D3EEBBA5762F8DDE7338B00E450BA7D20745D04721248FDF4';
wwv_flow_imp.g_varchar2_table(53) := 'DFF6358B0050B96E03A0201381AECBB5FAC33E9B00749D6E0318009908E424904D00B80DD02E20E7D0ABEE2904429761F5CFB5FDA72FD90480CAB50B5853D0BF22908B405601D02E20D7B0ABDE1208E45EFD61905500688076016B0AFAB73D0239B7FE96';
wwv_flow_imp.g_varchar2_table(54) := '76760160178012DA06E92802A51208D9AE52E67C7601002A4AA807829090B54080E067CE97D0D72204600D426F0BAE39E8DFA5132825F8E15C8C00E85680E1902D9D00AB7F497D2C460080823296068876C944200401E636733C84AF503E8A12003A0520';
wwv_flow_imp.g_varchar2_table(55) := '40712E1381A510604E33B74BEB4F7102002040018C739908D44E80B9CC9C2EB11F450A00A0000638CE6522502B01E63073B9D4F6172B0000031C00399789402E0253EB65EE3287A7964F51AE680100000001C9B94C046A21C09C65EE96DEDEE205008080';
wwv_flow_imp.g_varchar2_table(56) := '7CE6D60B4740E5B54C044A25C01FB41D750F6E32674B6DA3DBAE2A04C03618A812014B43C7D20830376FDCFACF9B376EBDF856696DDBD69EAA04804E2002CF6837000A59020263AAA86DD577FB549D00D8C62304282E66D374148194046CE0D7B6EABB8C';
wwv_flow_imp.g_varchar2_table(57) := 'AA15003A8108608800469A4C0462135842E05B46550B80ED042280E9D6C012D13134011BF4CCB19A577C9FCB2204C0ED9415029EC4B22B60E0DCEB3A1781B104983BEB39F4C03CD8ABEBE1DED83E2E4E006CC76F9827B188016AFDCCF943C3F5601E55F3';
wwv_flow_imp.g_varchar2_table(58) := '84D6F645C734048EBAA3B78E56F6E0267386B9B39E43F53CD53F94D46205C007C140620C2A836B770856141878BF8C5E2F8F00E36C6D3DF60F6E32179813CC8DB52D37E0FD116D4600FC8EDF38DF21585160E09F313B056B4C8A2163D2C8BA574A653034';
wwv_flow_imp.g_varchar2_table(59) := '66A4D971659CADADC7FEC5B76E98B9E0CF8F565E372B00FB06984931644C1AD90B2F97CA6068CC48DB37DEFEF5565E4B005A1969F553040608480006A02849045A2120016865A4D54F11182020011880A2A4B609B4D47B09404BA3ADBE8A80474002E001';
wwv_flow_imp.g_varchar2_table(60) := 'D14B1168898004A0A5D1565F45C0232001F080E865DB045AEBBD04A0B511577F45C02120017060E854045A232001686DC4D55F11700848001C183A6D9B408BBD9700B438EAEAB3089C1390009C83D041045A2420016871D4D56711382720013807A143DB';
wwv_flow_imp.g_varchar2_table(61) := '045AEDBD04A0D59157BF45C01090001808FA5F045A2520016875E4D56F11300424000682FE6F9B40CBBD9700B43CFAEA7BF3042400CD4F010168998004A0E5D157DF9B272001687E0AB40DA0F5DEFF110000FFFFE16D1F9400000006494441540300960A';
wwv_flow_imp.g_varchar2_table(62) := '34B523FFE4340000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4583709504407373251)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013055500Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055500Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000001FF494441547801EC945B2B445114C7FF860943A10EE59A5C0A35722F2F5E14A5943C48CA27E0037893370FBE8227E5419278F0E445A2462E259732A35C725CA6';
wwv_flow_imp.g_varchar2_table(2) := 'C68CDB8C31C6ACCD9C664E7BDADB3135A573EADFD97BEDBDD7FAF5DFEB1C8B6378369C4A5990E2C704301D301D9076C09BF90E35DD07F79B37A91FAE140015556A4B60EF6A45717B355E3FFC4CCFF96158ED0A1B1BA59202B05933E3F2BF0603C86B2E43';
wwv_flow_imp.g_varchar2_table(3) := 'C3606704A8069FCAF77AA0320B9E52FCCA2539808C2CA83B2E1C6EECC27D7603253B0F9EAB070DAAA0BC9015AD1EEA40F7F4289A26FBA55D910220CBA99AF5398CE0E31B2B66710722504E1C2F6DC3BB7F0D9E4B7446242100DD3FCA7250D7D7A629989B';
wwv_flow_imp.g_varchar2_table(4) := '06BA06D5E1825FF5B1B12DE2D2C1D42AD627E6E05A70309744C5695D08409B2AEAABE8A549A92D45CB586F9CA8216943C8E9C5D3C91D7389E62259441B64D65D5B4728E8AC44CFE2B8A6E2C146A93E480A0041DA47BAE8A589E6744D5A20C1400840CDB5';
wwv_flow_imp.g_varchar2_table(5) := 'B7B299E0F8DFC3628048735183C59652779C20DB636346C742005E623D10ED591E98A197269AD3FF420B24181802E0E5D243E9E7BC33149302A03EB83C3947547430599203A03EB80DC1F623B2D67375CFFA807A2170EB33CC2305C0CB5EF4920DEBE913';
wwv_flow_imp.g_varchar2_table(6) := '53EE631AFB151FCE6F202ADE195ECC30803E19DD7970ED0251914BFA3DBC79D20078C965622680E9C0FF7740F4257C010000FFFF1F448E94000000064944415403002197101001C50F750000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4583708648659373249)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013055500Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055500Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD3FAF2CC77927E0C14284C80B9094088A37D2256025F21F6E623B110C018605270E1D6821C3DFC2C1060E1D38D057D86861010A143A11B4';
wwv_flow_imp.g_varchar2_table(2) := '3020080AD676B2B265274780A9885483126580A4C00576E777C8BE3CF7DC39D33533DD3D5D558FC0E69CE9AEAE7ADFA72E546FD7CC3DFC2FFFFBBFFD8FFFE760E0CF803F03FE0CF833E0CF405F7F06FECBCEFF08102040800081CE04763B054077532E61';
wwv_flow_imp.g_varchar2_table(3) := '0204081020A000F06780000102040874279084ED0044C14180000102043A1350007436E1D22540800081DE053EC95F01F089837F132040800081AE0414005D4DB76409102040A07781317F05C028E19500010204087424A000E868B2A54A80000102BD0B';
wwv_flow_imp.g_varchar2_table(4) := '7C96BF02E0330B3F1120408000816E041400DD4CB54409102040A07781BBF92B00EE6AF89900010204087422A000E864A2A54980000102BD0B3C9BBF02E0590FEF08102040804017020A802EA6599204081020D0BBC0FDFC1500F745BC2740800001021D';
wwv_flow_imp.g_varchar2_table(5) := '0828003A9864291220408040EF02CFE7AF0078DEC4190204081020D0BC8002A0F929962001020408F42E70287F05C02115E7081020408040E3020A80C627587A04081020D0BBC0E1FC1500875D9C2540800001024D0B28009A9E5EC91120408040EF020F';
wwv_flow_imp.g_varchar2_table(6) := 'E5AF007848C6790204081020D0B08002A0E1C9951A01020408F42EF070FE0A80876D5C214080000102CD0A28009A9D5A891120408040EF02C7F257001CD3718D0001020408342AA000687462A54580000102BD0B1CCF5F0170DCC7550204081020D0A480';
wwv_flow_imp.g_varchar2_table(7) := '02A0C969951401020408F42E3095BF02604AC8750204081020D0A08002A0C149951201020408F42E309DBF0260DA480B0204081020D09C8002A0B929951001020408F42E5092BF02A044491B0204081020D0988002A0B109950E01020408F42E5096BF02';
wwv_flow_imp.g_varchar2_table(8) := 'A0CC492B0204081020D0948002A0A9E9940C01020408F42E509ABF02A0544A3B0204081020D0908002A0A1C9940A01020408F42E509EBF02A0DC4A4B0204081020D08C8002A099A9940801020408F42E704AFE0A8053B4B42540800001028D0828001A99';
wwv_flow_imp.g_varchar2_table(9) := '48691020408040EF02A7E5AF0038CD4B6B0204081020D0848002A08969940401020408F42E706AFE0A8053C5B42740800001020D0828001A9844291020408040EF02A7E7AF0038DDCC1D0408102040A07A010540F553280102040810E85DE09CFC1500E7';
wwv_flow_imp.g_varchar2_table(10) := 'A8B9870001020408542EA000A87C02854F80000102BD0B9C97BF02E03C3777112040800081AA051400554F9FE009102040A0778173F357009C2BE73E020408102050B18002A0E2C9133A01020408F42E707EFE0A80F3EDDC498000010204AA155000543B';
wwv_flow_imp.g_varchar2_table(11) := '75022740800081DE052EC95F0170899E7B091020408040A5020A804A274ED804081020D0BBC065F92B002EF373370102040810A852400150E5B4099A000102047A17B8347F05C0A582EE274080000102150A28002A9C34211320408040EF0297E7AF00B8';
wwv_flow_imp.g_varchar2_table(12) := 'DC500F0408102040A03A0105407553266002040810E85D608EFC15007328EA8300010204085426A000A86CC2844B80000102BD0BCC93BF02601E47BD102040800081AA041400554D976009102040A07781B9F25700CC25A91F020408102050918002A0A2';
wwv_flow_imp.g_varchar2_table(13) := 'C9122A01020408F42E305FFE0A80F92CF5448000010204AA115000543355022540800081DE05E6CC5F0130A7A6BE08102040804025020A804A264A9804081020D0BBC0BCF92B00E6F5D41B0102040810A842400150C5340992000102047A17983B7F05C0';
wwv_flow_imp.g_varchar2_table(14) := 'DCA2FA234080000102150828002A9824211220408040EF02F3E7AF0098DF548F040810204060F3020A80CD4F910009102040A0778125F257002CA1AA4F0204081020B0710105C0C627487804081020D0BBC032F92B009671D52B0102040810D8B4800260';
wwv_flow_imp.g_varchar2_table(15) := 'D3D3233802040810E85D60A9FC15004BC9EA9700010204086C584001B0E1C9111A01020408F42EB05CFE0A80E56CF54C8000010204362BA000D8ECD4088C000102047A1758327F05C092BAFA2640800001021B1550006C7462844580000102BD0B2C9BBF';
wwv_flow_imp.g_varchar2_table(16) := '0260595FBD1320408000814D0A280036392D822240800081DE0596CE5F01B0B4B0FE0910204080C0060514001B9C14211120408040EF02CBE7AF0058DED80804081020406073020A80CD4D898008102040A0778135F25700ACA16C0C0204081020B03101';
wwv_flow_imp.g_varchar2_table(17) := '05C0C626443804081020D0BBC03AF92B00D671360A0102040810D89480026053D3211802040810E85D60ADFC15006B491B8700010204086C484001B0A1C9100A01020408F42EB05EFE0A80F5AC8D4480000102043623A000D8CC540884000102047A1758';
wwv_flow_imp.g_varchar2_table(18) := '337F05C09ADAC62240800001021B1150006C6422844180000102BD0BAC9BBF02605D6FA31120408000814D08280036310D822040800081DE05D6CE5F01B0B6B8F10810204080C0060414001B9804211020408040EF02EBE7AF0058DFDC880408102040E0';
wwv_flow_imp.g_varchar2_table(19) := 'EA020A80AB4F810008102040A077816BE4AF00B886BA310910204080C095051400579E00C31320408040EF02D7C95F01701D77A3122040800081AB0A2800AECA6F7002040810E85DE05AF92B00AE256F5C020408102070450105C015F10D4D80000102BD';
wwv_flow_imp.g_varchar2_table(20) := '0B5C2F7F05C0F5EC8D4C8000010204AE26A000B81ABD8109102040A077816BE6AF00B8A6BEB10910204080C0950414005782372C01020408F42E70DDFC1500D7F5373A0102040810B88A8002E02AEC062540800081DE05AE9DBF02E0DA3360FC8B053EF8';
wwv_flow_imp.g_varchar2_table(21) := 'BF1FED860FDFBF3DDEFECF7776E3F1EFEFFDC72EC7F83EAF63BBBC5E3CB00E08102050B18002A0E2C9EB35F42CF839B2A0DF2EF0BF7E67BFF8FFEAF6F8E0E38F76E331FA8CEFF33A7CF849BBBCE6DEE1D3C2616CEB95000102EB085C7F1405C0F5E74004';
wwv_flow_imp.g_varchar2_table(22) := '8502E3A2FFF67EC1CF9105BDF0D6079B0D9F1604290652500CFB82E0C1C62E102040A0210105404393D96A2A7717FE3916FD879CD2F7B02F08520C0C0A8187989C27406006812D74A100D8C22C88E1A0C05A0BFFA1C10785C02116E7081068484001D0D0';
wwv_flow_imp.g_varchar2_table(23) := '64B6944AB6E3E7DAE6BFC42585C06037E01242F71220F09CC0364E2800B6310FA2F854204FFDD982CF76FCA7A7AEFE327CBA1B90D8AE1E8C0008102030938002602648DD5C2E30EC9FB4F3D47F794FCBF490D812E332BDEB9500815E04B692A702602B33';
wwv_flow_imp.g_varchar2_table(24) := 'D1791C595887FD93F6B90CAF7EE98BBB27BFF35BBBB7BEFEFB4F8F3FFAF36FEC72DC3D973639CE1D27310EFB42E5DCFBDD47800081AD082800B632131DC79105753863F1CFA29FC57D5CE49FFCF66FED726E3C46D2F17D5ED32647EE492190636C57FA9A';
wwv_flow_imp.g_varchar2_table(25) := '5807454029977604083C23B09D370A80EDCC45979164211D4E5CFCB3686701CFE29F45FD5CB8140239D257FA3CA59FC43C28024E21D39600818D0928003636213D859305743861F1CF629F453F8BF6DC4EE9F3D44220B10F8A80B9A7427F049A16D85272';
wwv_flow_imp.g_varchar2_table(26) := '0A802DCD4647B1E41BF5C3098B7F16FE1C290296644A2190714AC7480EC9A5B4BD76040810D88A8002602B33D1591CF9467D49CA59F0B320E7B5A4FD1C6D32567603F25AD25F692E257D69438040CB02DBCA4D01B0ADF9E8229AA170DB3C9FCBAFBDF8DF';
wwv_flow_imp.g_varchar2_table(27) := '9D808C9D18EE9E7BE8E7FCE2A287AE394F8000812D0A2800B6382B0DC794C57F28D8FACFC29BEDF86B532486C43215477E71918F02A6945C27D0B7C0D6B257006C6D461A8FA764F1CFD67B16DEAD502496C43415CF50B8B331D5CFDCD7539824B61CD9A9';
wwv_flow_imp.g_varchar2_table(28) := '188FFCC6C51CE3FBBCA6CD78CC1D87FE0810D8968002605BF3D1743459584A12CCD67B49BB35DB94C4B4955D802CF839B2A0DF2EF0BF7E6737EC775D72DCC6F8F147BBBC8E7EF9793CD2663C72EFB02F6A728C6DBD122070AEC0F6EE53006C6F4E9A8D68';
wwv_flow_imp.g_varchar2_table(29) := 'D82F4253C9952CB4537D2C75BD24B661BF602E35FE54BFE3A29F2F25E6C8A23E75CFD4F5613F6739520CA4A018AE98DF54ACAE1320709A8002E0342FADCF14285938F2597BC956FB99215C7C5B62CB71ACA32CBA59888FB599FB5AC6CBE23CD7A2FF507C';
wwv_flow_imp.g_varchar2_table(30) := 'C96DD8170429060685C0434CCE133828B0C5930A802DCE4A833165919A4A2B9FB54FB5B9F6F59218D75A1C63BAC6C27FC87C50081C62718E4055020A80AAA6ABDE60F3F4782CFA3CFD1FBBBE956BD901988A35B966715E32E66B2DFCF7734A2130D80DB8';
wwv_flow_imp.g_varchar2_table(31) := 'CFE23D817B02DB7CAB00D8E6BC341555C90251F264BD15946BC69AC2225BF02932B6E2317CBA1B90D8B61293380810981650004C1B69B1B0C0D413F5C2C39FD57D76028EDD382CF0549C3EF339FFB171AF792DB125C66BC6606C025B14D86A4C0A80ADCE';
wwv_flow_imp.g_varchar2_table(32) := '4C43710DFB27C486D2B94D656A1760EE27F4615F500C1738BEF6E537765FF9DAEFEDFEF09B7FFCF4F8D3BFFAE62EC7DD736993E336C933FE9518877DAC67DCEA16020456165000AC0CDEDB70258BC1D462BA45B3A91D80C43CD796780C873316FF2CFA59';
wwv_flow_imp.g_varchar2_table(33) := 'DCB3C8FFC17EE1FFCAD77E77F7C57D21301E8931C7F83EAF699323F7A410C89136A71C897550049C42A66DD302DB4D4E01B0DDB9E922B21AB7FFC789992A023EF8F83763D3B35FB3900E272EFE59B4B38067D1CFA27EEEE0290472A4AFF4794A3F897950';
wwv_flow_imp.g_varchar2_table(34) := '049C42A62D81D5051400AB931BB01581A902E0D23CB3800E272CFEE3137F16ED4BC7BE7F7FFA3CB51048EC8322E03EA5F79D096C395D05C09667A781D8A6B6C15F7DFD8BD5663915FB54EEC712CFBDC3098B7FB6FA2F7DE23F16CF782D8540C61ADF4FBD';
wwv_flow_imp.g_varchar2_table(35) := '2687E432D5CE750204D6175000AC6F6E44029302F946FD64A37D83F1A9FF92ADFE7D3727FD93B1B21B90B14B6E2CCDA5A42F6D08D425B0ED681500DB9E1FD1752830146E9BE773F9359EFA1F9A828C9D181EBA7EF77C7E71D1DDF77E2640E0FA020A80EB';
wwv_flow_imp.g_varchar2_table(36) := 'CF41D3117CF0F14747F35BFA73F4A3835F78712AF6A9DC0F0D9FC57F28D8FACFC29BEDF8437DAC792E312496A93163E1A3802925D75B13D87A3E0A80ADCF90F8BA122859FCB3F59E85772B308925314DC53314EE6C4CF533F7F51426892D47762AC623BF';
wwv_flow_imp.g_varchar2_table(37) := '7131C7F83EAF69331E73C7A13F026B0B2800D616EF6CBC472FBC7834E3F77FF1CBA3D7B77C712AF6A9DCEFE79685E5FEB943EFB3F57EE8FC35CF95C4B4955D802CF839B2A0DF2EF0BF7E6737EC775D72DCC6B8DFB5CAEBE8999FC7236DC623F70EFBA226';
wwv_flow_imp.g_varchar2_table(38) := 'C7D8D62B81CF04B6FF930260FB7324C24E0486FD223495EA29DFC09FEA6BEEEB25B10DFB0573EE714BFB1B17FD7C29314716F5D27B1F6A37ECE72C478A811414C315F37B2846E7093C24A0007848C679022B0A942C1CF9AC3DDFC05F31AC93864A6C531F';
wwv_flow_imp.g_varchar2_table(39) := '0564D1CD427C52C71736CE78599CE75AF41F0A27B90DFB8220C5C0A0107888A99BF33524AA00A861962A8EF1D1E7263E02182AFE086022F6A9DCEF4E6B16A9BBEF0FFD9CCFDA0F9DDFD2B99218D75A1C63BAC6C27FC87F50081C62716E63020A808D4D48';
wwv_flow_imp.g_varchar2_table(40) := '6FE14C7D8EDE8B479E1E8FE59AA7FF63D7B7722DBB0053B126D72CCE4BC67CAD85FF7E4E290406BB01F7593A785F478A0A803AE6A9DA281FBDF0F9A3B1D75C00BCFDD39F1DCDADF462C90251F2645D3ADED2EDAE196B0A8B6CC1A7C8583ACFD2FE874F77';
wwv_flow_imp.g_varchar2_table(41) := '03125BE93DDA1158434001B08672C763946C83D75804BCFD6FD38BFFEB2FBD3ACBCC4F3D51CF32C8CC9D4C7D176058E0A9387DE673FE995399ADBBC4961867EB50479B15A8253005402D3355719C537F1DAE6431AD2DFDD75FFA4271C8C3FE09B1B87125';
wwv_flow_imp.g_varchar2_table(42) := '0DA77601E67E421FF605C57081E3E3B7DEDCBDF5175FDF7DE36FFFF2E9F1ADBFFFEB5D8EBBBD4D01770000100049444154E7D226C7B9D39018877DACE7DEEF3E02730A2800E6D4D4D74181A927E12A77006CFF1F9CEBF164BE0B30FEFCD0EB5C5BE25950';
wwv_flow_imp.g_varchar2_table(43) := '873316FF2CFA59DCB3C8FFC97EE17FEB5B5FDFBDB12F04C6638C7B7C9FD7B4C9917B5208E418DB95BE26D6411150CA5561BB7A425600D433574D475AD32E4049AC53454FE964D6B8FD3FE6F6DA97DF187F3CF8FAC1C7BF3978FE94935948871317FF2CDA';
wwv_flow_imp.g_varchar2_table(44) := '59C0B3E8BFB15FF04F19EF6EDB140239D257FABC7B6DEAE7C43C2802A6985C5F584001B030B0EE77BB7C0F60F26380FD13752D3B01535FFE9BCAB5973F1325BB00975864011D4E58FCC727FE2CDA978C7BE8DEF4796A2190D80745C021CEAACFD514BC02';
wwv_flow_imp.g_varchar2_table(45) := 'A0A6D9AA38D69227E29227EB6B1394C49882A734CEA96DF0D7BEFCA5D2AE36D76E2AF6A9DC8F25947B871316FF6CF55FFAC47F2C9EF15A0A818C35BE9F7A4D0EC965AA9DEB04961050002CA1AACFE704B2284E3D19670720C773376FE444629B7AFA4FA8';
wwv_flow_imp.g_varchar2_table(46) := '25C54EDA39CE17C837EA4BEE7EBCDFE2CF827CC9567FC93877DB64ACEC0664ECBBE71FFAB9349787EE777E4B0275C5A200A86BBEAA8EB66461FCC90FFF799785768B8926B6A9B84EF9F6FF545FAE1F16180AB7CDF3B9FC1A4FFD87A3DCED32766278E8FA';
wwv_flow_imp.g_varchar2_table(47) := 'DDF3F9C54577DFFB99C01A020A8035948D712B50B20B908625DBEC69B7E651B2F8279E922227EDC6E3838F3F1A7F3CF8BAF4E7E807079DE9E454EC53B91F0A238BFF50B0F59F8537DBF187FA58F35C62482C5363C6C24701534ADBBF5E5B840A80DA66AC';
wwv_flow_imp.g_varchar2_table(48) := 'F2784B16C8EC006CA908482C89698ADED3FF94D0E5D74B16FF6CBD67E1BD7CB4797A482C8969AAB7A1706763AA1FD709940A28004AA5B49B45A07817E0A73FDB65E19D65D00B3A490C659FFB7F615752DCDC0F65EA7B11BFFCF9BBF76FA9E6FD54EC53B9';
wwv_flow_imp.g_varchar2_table(49) := 'DF4FB47481CCD6FBFD7BAFFDBE2426BB00D79EA54BC7AFEF7E05407D73567DC44F5E7EBC2BF93FFF2CBCA55BEF4BA064ECC450D2F7398B7F49BFDA7C2630146CFDE70B7F9FDDB1AD9F4A621BEC026C6BD21A8F4601D0F8046F35BDD205335BEF3FFADE0F';
wwv_flow_imp.g_varchar2_table(50) := '56FD62E0A9633E79E5F156999B89AB6461CC67EDF906FE56934E6C531F05D805D8EAEC4DC755630B05408DB3D640CCF928E094CFCC6F9FC60BFE033C97D064E1CF38394AFB490EC9A5B4FDFD7653F7BEF7F35FDCBFA59AF753B14FE57E37D1922FC8E5B3';
wwv_flow_imp.g_varchar2_table(51) := 'F6BBF76CF1E71429537195143B537DB84EA044400150A2A4CD2202D905C8025ADA79B6E3B31B90CFE54BEF296D973EB3F0A70828BD27B12787D2F6E7B49BFA1CFD9C3E6BBC274FC6C7E22E59588FDDBFD6B5EC024CC59A5C4B0A9EB562364E89409D6D14';
wwv_flow_imp.g_varchar2_table(52) := '0075CE5B33516701CD427A4A42770B812CDCA7DC7BB76D16FB2CFAB745C54F7F76F7D2E4CF8939B14F369C68F0E885CF1F6DF15EC55F02BCF9F1BF1CCDADF462C913710D4FFF63BE35C53AC6ECB54D0105409BF35A55565948B3A09E1A740A811CB70BF8';
wwv_flow_imp.g_varchar2_table(53) := 'FEE381140359D4C763EC6F7C9FD7B41917FDBCE6DCD8AEF435B126E6D2F6C7DA956C83D7B80B70F3E37F3D96F6EDB5B90CA79EA86F07DBD8BFA6BE0B5052F46C2CA5AEC3A935790540AD33D758DC590CB2B09E9B560A811C59D4C72385418EF17D5ED3E6';
wwv_flow_imp.g_varchar2_table(54) := '9C457F8C2B3126D6F1FD1CAF537F23A264319D238E35FB8863E97843C1B7FF4BFBDA4ABBA9A2251F036C255671B42BA00068776EABCB2C0BEB96BF519FD812E3DCB0537DD6F831C08DEDFFA37F4CF25D80A30DF6177D0F608F50C53FF506A900A877EE9A';
wwv_flow_imp.g_varchar2_table(55) := '8C3C5BE25F7DEDCDDD294F884B43E4093D3125B6A5C77AA8FF9B822DF587EE5DFB7C49AC53454F69CC534FD2A5FD5CA3DDD4C7001F7CFC9B6B8465CC8E0414001D4D764DA96681481190C5F75A7167EC3CF5E717172D19430A8B8C756C8C9BFD13752DDF';
wwv_flow_imp.g_varchar2_table(56) := '0548ACC77299CAF5D8BD2D5D7BE3BFBED9523ADDE65273E20A809A67AFF1D8530464F14D21B066AA59A0C6853F8BF31A6327D7A9716E2AD8052889F114D3A96DF0A9A7E829D36B5E9F8A7D2AF76BC66EEC360414006DCC63D3596471CC167C0A812CCE4B';
wwv_flow_imp.g_varchar2_table(57) := '259BBED75EF8C75CB22866FCF1FDA1D77C1760CBBB0089ED66BF537128F6BBE7329F77DFFB9940BD027547AE00A87BFEBA8A3E0B477604C6622005C1A50059746F17FD571EEFD27716E24BFB3CF7FEE43775EF3F7EF71F765968A7DA5DE37A629B1A778E';
wwv_flow_imp.g_varchar2_table(58) := '399B1AC3750204CA041400654E5A6D4C208B658E140359C0B3B0E4C8823E1E63C8E3FBBCA64D8EDC737B6FFEC3449F7B7177CD85FF699C89E38517C7B70FBEDE6CF0A3807FDA17260F067CE742E6ECCEDBC91F3FF8F8A3A36D4ABE4D7FB4832B5E9C8A7D';
wwv_flow_imp.g_varchar2_table(59) := '2AF72B866EE84F056A7F5100D43E83E2BF5DBCB3B0E4C853FC786481CF31BECF6BDAE4D8C2827F68EA12DBA1F377CFE5A3802D1501892531DD8DF1D0CF29BC0E9D778E0081EB082800AEE36E54020705529864A7E2E0C53B276FF69FB5DF6C60272031DC';
wwv_flow_imp.g_varchar2_table(60) := 'EC63B913DAC11FB3F8971437F76F9EB278F727FF71FF966ADE4FC53E957B3589361B68FD892900EA9F43193426909D8A92FFF3CFC25BBAF5BE0451C64E0C257D9FB3F897F4AB0D0102E70B2800CEB7732781C5044A17CC6CBD7FFFDBDF5DF58B81BFFCF9';
wwv_flow_imp.g_varchar2_table(61) := 'BBBB8C99B14B00F27D8B9276DA10A849A0855815002DCCA21C9A13C84701D9362F4D2CDFC0BF59F823812CFC79EACF58A5712587E452DAFE7EBBA97BDFA9F82380A9D8A772BF6FE53D8153051400A78A694F602581EC0264012D1DEE66FF597C9ECC6F16';
wwv_flow_imp.g_varchar2_table(62) := '2804D26716FED2A7FEC49CD893437E5EEA78F7FFD4FB1D80A54CF4BB86401B632800DA984759342A9005340BE929E9DDDC29046E2E2806C627FE4F8A8A7F392584DBFF9643623FE9A6038D1FBDF0F903673F3B35F514FD59CBEDFDF493BFFBE1F6821251';
wwv_flow_imp.g_varchar2_table(63) := '57020A80AEA65BB2350A64213DB508489E37FB4220C7270BF8BFEE6EF6C54016F5F1489B1CE3FBBCA64DB6F973CFA94FFCE92B47624DCCF9F9D2A3641BFCDD0A3F06F8C977A617FFB90C2F9D03F73F2FD0CA1905402B33B9F13CF27BCD870FDFDFBDFD9F';
wwv_flow_imp.g_varchar2_table(64) := 'EF3C3DFEFDBDFFD8B5728C7925C7E43AF7746431C8C27A6EBF379F160359D4C7238B7C8EF17D5ED3EE946DFEFBF124C6C47AFFFC25EFA7FE46448B4FD271BCC4CCBD044A041400254ADA9C259085300B6316F9B77FFDCE6EF8F057BBFC76B3F138ABD38D';
wwv_flow_imp.g_varchar2_table(65) := 'DE34E6941C936B721EF6054F8EB942CEC2BAE56FD427B6C43857BE633F537DD6F831408B45CB385FEDBFB693A102A09DB9DC4C2659F4B2006621CCC2B899C0560E64D8173C396231EC8B813986CF96787EBBE1969E10F3849E9812DB1C399ED347C996FA';
wwv_flow_imp.g_varchar2_table(66) := '39FD2E714F49AC5345CF1271E9B33F0105407F73BE58C6E313FFB05FF8161BA4D28E63326721900522454016DF6B9164EC3CF5E717172D19430A8B8C756C8C3C51D7F25D80C47A2C97A95C8FDDEBDAF2022D8DA000686936AF984BB6FA7B7FE22FE14F21';
wwv_flow_imp.g_varchar2_table(67) := '30CCB41B9022208B6F0A8192B1E76A93056A5CF8B338CFD5EFB17E92EBB1EBB936B5B0A6CDB58F92A7FFB54CAF6D61FCEB0B2800AE3F075547303EF5F7BCD57FEA040EFB1D92EC06C4EED47B0FB5CFE2982DF81402599C0FB599E35CFA5E7BE11FE3CEA2';
wwv_flow_imp.g_varchar2_table(68) := '98F1C7F7875EF35D802DEF0224B6922225F379283FE7B620D0560C0A80B6E673D56C86FD93ACA7FEF3C96317C3F37B78F6CE2C1CD911188B811404CFB638FD5D16DDDB45FF95C7BBF49D85F8F45EE6B923F94DF5F483FFFE3F775968A7DA5DE37A629B1A';
wwv_flow_imp.g_varchar2_table(69) := '778E399B1AC37502A380026094F07A924016AE61FF247BD24D1A3F2710C3B97602EE769EC532478A812CE059587264411F8FB1FDF83EAF699323F7DCDEFBF2E3DBFFDCF23517FEA7717EEEC55D621CDF3FF45AF294FDD0BD4B9DFF5FFBC2A4A4EFCC5949';
wwv_flow_imp.g_varchar2_table(70) := '3B6DAE23D0DAA80A80D66674857CB26065E13A75A857BFF4C5DD5B5FFFFDA7C71FFDF937762D1CC9E9C9EFFCD66E3C4E75C94E404C4FBDAFB47D16EF2C2C39F2143F1E59E0738CEFF39A3639724F69FF6BB64B6C53E3E5A38092CFDAA7FA99EB7A62494C';
wwv_flow_imp.g_varchar2_table(71) := '53FDA5F09A6AE33A8139051400736A76D25716AC5352CDC298853E0B658A80F138A58F2DB74D3E4F7E7B5F007C7A24D7E47C4ACCA79A9ED2774B6D539894EE0264E1BD76EE89A16447228B7F497173ED7CFA1EBFBDEC1500EDCDE9A219E5DBFEA5036411';
wwv_flow_imp.g_varchar2_table(72) := 'BC5D0CF70B63E93DADB44B41709BFB7E67A034A7536C4BFB6CB15D762A4A8B80D2ADF7259C3276C9E29FB12DFE5170AC2DA000585BBCE2F1860FDFBFFD4D7E2529E4693F8B6049DB96DBC4208550498EF99B144B7E145012432D6D4A17CC6CBD7FE7CFFE';
wwv_flow_imp.g_varchar2_table(73) := '66D52F06E64B8819336397783E79E57149336DAE2CD0E2F00A80166775A19C86822FFD653B3C8B7F5E170AA3BA6E5304C4A424F0615F6495B4EBBD4D3E0AC8B679A943BE819FEDF8D2F6E7B4CBC29FA7FE8C557A7F72482EA5EDB52330A78002604ECD86';
wwv_flow_imp.g_varchar2_table(74) := 'FB2A5D98B2D059FC9FFF831093D83C7FE5D93376019EF538F62EBB0059408FB5B97B2DDBF179325FA210489F59F84B9FFA1357624F0EF9D9B1758136E35300B439AFB36735143CFD972C70B307565187A545C06017A07856B38066212DBE61DFF06E2190';
wwv_flow_imp.g_varchar2_table(75) := '857B7FEAAC7FC627FEDBA2E2EF7E78521F8939B19F7493C60466165000CC0CDA6277250B523EE7CE02D762FE73E614A31CC7FAB40B704CE7F96B5948B3A03E7FE5F8991402396E17F0EFFC709762208BFA788C778FEFF39A36D9E6CF3DA73EF18FFD25D6';
wwv_flow_imp.g_varchar2_table(76) := 'C43CBEF7BA7D8156235400B43AB32BE795CFB9571EB2DAE14A764AF2D702F3EB825B39F2371C72A4985CE28B8E5950B3B09EFB872285408E2CEAE391453EC7F83EAF6973CA36FFFD78126362BD7FDE7B02D71050005C43BDB2318789EDFF3CFD5796D2D5';
wwv_flow_imp.g_varchar2_table(77) := 'C3EDCDEC7657E3E38F76F9B3341637C3FEA38E1C734D4616D62D7FA33EB125C6B9F2D5CF5A02ED8EA30068776E67C9ACE4FFA03DFD9F46FDF6BFFD6CF7FE2F7E79DA4D0DB61EF685658EEC720CFB62608E14F38DFAFC76C33C69CFD1DF1C7DE4771624A6';
wwv_flow_imp.g_varchar2_table(78) := 'C436477FFA2030978002602EC94EFBE9ED49F69269CEA2FFA3EFFD60F7F64F1500F71D877D313067219027ED1401597CEF8FB5D6FB8C9DA7FEFCE2A2B5C634CEFC022DF7A80068797667C86D89CF6B6708ABBA2E7EF2C37FDEE5A82EF095034E2130CCB4';
wwv_flow_imp.g_varchar2_table(79) := '1B9022208B6F0A8135D3B8BBF07BEA5F53DE58A70A28004E15D3FE1981575FFFE233EFBD7956607CEACFEBB357BC7B4860F8743760AEE2338540B6E0530864717E68DC4BCFA7EFF189DFC27FA9E656EE6F3B0E0540DBF32BBB2B0AE4B37E4FFDE74F40BE';
wwv_flow_imp.g_varchar2_table(80) := '2C38CCB41B902852086447602C065210E4FC25C7D345FF95C7BBF46DE1BF44D3BD6B0B2800D616AF6CBC7C7BFB58C8537FA7FDD8BD2D5FCBE29FCFFA5BCE718DDC86FD6EC05C3B0177E34D319023C5409EDA530CE4C8823E1E63FBF17D5ED32647EEB9BD';
wwv_flow_imp.g_varchar2_table(81) := 'F7E5C7BB2CFA39C6F65EDB11683D130540EB332CBFD505B2DD7FCEE2FFDA97DFD8FDE137FFF8E9F1A77FF5CD5D0B4772FACAD77E6F371EA74E487602962802C638B278A718C891A7F8F1C8029F637C9FD7B4C9917BC6FBBD12A855400150EBCC897BB302';
wwv_flow_imp.g_varchar2_table(82) := 'A76EFB6761CC42FF07FBC5FF8BFB22603C369BE08981259FAF7CED77F705C02747724DCEA7749322E094F6DA12B85CA0FD1E1400EDCFB10C5714C8D67FE97059043F590C7FB7F49666DAA520F824F7DF2BCE29BF49B0B8B18604084C0A28002689342050';
wwv_flow_imp.g_varchar2_table(83) := '2690C5BF74EBFF936DF1FE16FEFB9229045208DD3F7FE87DBE8FB2E4470187C674AE5F811E325700F430CB725CD4253F1B000010004944415445A064F11F3FE7CFB6F82A415530488A80144425A10E33FEAD8092F1B421D0B28002A0E5D995DB6A0279FA';
wwv_flow_imp.g_varchar2_table(84) := '2F196CFC9CBFA46D4F6D521095140176017AFA5371CD5CFB185B01D0C73CCB72618192A7FF92056EE13037DD7D6911601760D3D328B88A041400154D9650B72950F2F49FCFB9B3C06D3383ED4415A37C4C722C22BB00C7745C9B43A0973E1400BDCCB43C';
wwv_flow_imp.g_varchar2_table(85) := 'AF2A90CFB9AF1A404583E76392A970F3D702F31F0F6AE1C8DF6E188FEC6EE498CADF750273082800E650D447D70253DBFF79FAEF1AE88CE47B32BBDDD1F8F8A35D5E870F7FB5CB91C266F8F0FDFDCFEF9FA1E796CB04FAB95B01D0CF5CCB740181FCD6BF';
wwv_flow_imp.g_varchar2_table(86) := 'A96E3DFD4F093D7BFDE6C7FFBAFBE5CFDF7DF66487EF867BC5408704525E584001B030B0EEDB16787FF8E5D1047B7A923D0A5170318BFEF7BFFDDDDDCD8FFF65F79E02E019B11403E3AEC03317BC995DA0A70E15003DCDB65C671728D901987DD0063BFC';
wwv_flow_imp.g_varchar2_table(87) := 'A7EFFEC3EE1FF74783A9CD9A520A817C5F60D64E75D6AD8002A0DBA997F81A02AF7DF94B6B0C53ED18E353BF27FEF229CC7705B21BE0B722969B95B7ECABA502A0AFF996EDCC027600CE07BDD97FD6EFA9FF7CBFFC4D88E1435F123C5FD09D0A007F0608';
wwv_flow_imp.g_varchar2_table(88) := '2C2890BFD7BE60F7D5769DC5FF66FF597FB5096C24F0E1F68B828A80B9A6A3B77E1400BDCDB87C095C5920DBFEE72CFE8FDF7A73F78DBFFDCBA7C7B7FEFEAF772D1C634E6FFDC5D777394E9D9E14013E0E38554DFB082800A2E0204060358153B7FDB328';
wwv_flow_imp.g_varchar2_table(89) := '66A1FF93FDE2FFC6BE08188FD5025E78A0319FB7BEB52F00F647724DCEA70C3BF828E014AE07DAF6775A01D0DF9CCB98C0D5046EF69FFB970E9E45F07631DC2F8AA5F7B4D22EC5C06DEEFB5D81929CF2C5407F3BA0444A9BBB020A80BB1A7E2640603181';
wwv_flow_imp.g_varchar2_table(90) := '2CFE37859FFB675B3C8BE062C154D2710C6251126E8A001F0594481D6ED3E35905408FB32E670257102859FCC7CFF9B32D7E85103739642CB21B109BA9007D143025E4FA5D0105C05D0D3F1320B088C04DE1D6FFF839FF224154DE693E12994A21BB008A';
wwv_flow_imp.g_varchar2_table(91) := '8029A543D7FB3CA700E873DE654D6055819B82ADFFD2ADEE5503DFD060D90928311A3EFCD586A216CA960514005B9E1DB1116840E0A6E0E93F4FB759E01A4877D1146214ABA9417C17604AE8D9EBBDBE5300F43AF3F226B021817CD96D43E16C3A9412AB';
wwv_flow_imp.g_varchar2_table(92) := 'C15F0BDCF41C6E253805C05666421C041A15B899D8FE2F79A26D94E6ECB4A6CCF25D80B33BEFEEC67E135600F43BF73227B0B8407EEBDFD420254FB4537DF476BDC4CCC700BDFDA9383D5F05C0E966EE2040A050E0BD9FFFE268CBA927D9A337777E71EA';
wwv_flow_imp.g_varchar2_table(93) := 'AF057EF0F16F3A172A4BBFE7560A809E675FEE04161628D90158388466BB9F2A9EEC00343BF5B325A600988D524704089C2A30F5147B6A7FDA13384DA0EFD60A80BEE75FF604161578EFE7EF2EDABFCE0910385F400170BE9D3B0910B850207FAFFDC22E';
wwv_flow_imp.g_varchar2_table(94) := 'BABD7DCAEE838F3FEAD6A634F1DEDB29007AFF13207F02040810E8524001D0E5B44B9A000102BD0BC85F01E0CF000102040810E8504001D0E1A44B99000102BD0BC87FB75300F8534080000102043A1450007438E95226408040DF02B28F8002200A0E02';
wwv_flow_imp.g_varchar2_table(95) := '04081020D0998002A0B309972E0102047A1790FF27020A804F1CFC9B00010204087425A000E86ABA254B800081DE05E43F0A28004609AF0408102040A02301054047932D55020408F42E20FFCF0414009F59F88900010204087423A000E866AA254A8000';
wwv_flow_imp.g_varchar2_table(96) := '81DE05E47F5740017057C3CF0408102040A01301054027132D4D020408F42E20FF67051400CF7A7877A2C08FBEF783DD25C789C3694E800001023309280066826CB59B472FBCD86A6AF22240A02B01C9DE175000DC17F1FE1981479F53003C03E20D0102';
wwv_flow_imp.g_varchar2_table(97) := '041A1150003432914BA5F1E885CF2FD5B57E091020B09A80819E1750003C6FE2CC1D81EC00BCFED217EE9CF12301020408B420A00068611617CEE1F5975EDD29021646D63D01020B0AE8FA908002E0908A73CF0928029E237182000102550B2800AA9EBE';
wwv_flow_imp.g_varchar2_table(98) := '75834F11F0D5D7DEBCDD0DF0B703D6B5371A0102E70BB8F3B08002E0B08BB3470452083C79F9F12EC5C0D471A41B9708102040E08A020A802BE21B9A000102049616D0FF43020A8087649C2740800001020D0B28001A9E5CA9112040A07701F93F2CA000';
wwv_flow_imp.g_varchar2_table(99) := '78D8C6150204081020D0AC8002A0D9A995180102047A1790FF310105C0311DD7081020408040A3020A804627565A040810E85D40FEC7051400C77D5C257091C0F7BFFDDDDD25C74583BB990001024704140047705C22408000815A05C43D25A000981272';
wwv_flow_imp.g_varchar2_table(100) := '9D00010204083428A000687052A544800081DE05E43F2DA0009836D28200010204083427A000686E4A2544800081DE05E45F22A0002851D28600010204083426A000686C42A543800081DE05E45F26A0002873D28AC059025F7DEDCDDDB1E3AC4EDD4480';
wwv_flow_imp.g_varchar2_table(101) := '0081190414003320EA8200010204B622208E52010540A994760408102040A02101054043932915020408F42E20FF72010540B995960408102040A01901054033532911020408F42E20FF53041400A768694B80000102041A115000343291D220408040EF';
wwv_flow_imp.g_varchar2_table(102) := '02F23F4D4001709A97D60408CC28F09D3FFB9BDD25C78CA15CA5AB4B72CFBD5709DAA0CD0828009A994A89102040E03381472FBCF8D99B2E7E92E4A9020A8053C5B42740804005028F3EA700A8609AAE1AA202E0AAFC06274080C03202AFBFF4EA321D6F';
wwv_flow_imp.g_varchar2_table(103) := 'B457619D2EA00038DDCC1D040810D8B4C0EB2F7D61D3F1096E1B020A806DCC8328081020308B4016FFFE9EFE67A1EBAE13054077532E6102045A15B0F8B73AB3CBE4A50058C655AF040810584520DFF6CFC2FFE495C7BB5E9FFC57816E7010054083932A';
wwv_flow_imp.g_varchar2_table(104) := '2502B5087CF5B53777C78E5AF2582ACE6336E3B5272F7FB2F0FBD6FF52B3D06EBF0A8076E75666040810E840408AE70A2800CE95731F0102040810A858400150F1E4099D000102BD0BC8FF7C0105C0F976EE244080000102D50A2800AA9D3A81132040A0';
wwv_flow_imp.g_varchar2_table(105) := '7701F95F22A000B844CFBD0408102040A052010540A513276C020408F42E20FFCB04140097F9B99B00010204085429A000A872DA044D800081DE05E47FA98002E05241F71320408000810A051400154E9A90091020D0BB80FC2F1750005C6EA807020408';
wwv_flow_imp.g_varchar2_table(106) := '1020509D8002A0BA2913300102047A1790FF1C020A803914F54180000102042A135000543661C225408040EF02F29F474001308FA35E08102040804055020A80AAA64BB0040810E85D40FE73092800E692D40F0102040810A848400150D1640995000102';
wwv_flow_imp.g_varchar2_table(107) := 'BD0BC87F3E0105C07C967A224080000102D5082800AA992A81122040A07701F9CF29A0009853535F0408102040A0120105402513254C020408F42E20FF79051400F37AEA8D00010204085421A000A8629A0449800081DE05E43FB78002606E51FD112040';
wwv_flow_imp.g_varchar2_table(108) := '8000810A041400154C9210091020D0BB80FCE7175000CC6FAA470204081020B0790105C0E6A74880040810E85D40FE4B0828009650D5270102040810D8B8800260E313243C020408F42E20FF65041400CBB8EAB550E047DFFBC1AEE6A3304DCD081020B0';
wwv_flow_imp.g_varchar2_table(109) := '390105C0E6A6A4AD801EBDF0625B099D904DCFB99FC0A42981090197971250002C25ABDF5B81479FEBB800E838F7DBC9F72F0204362DA000D8F4F4D41FDCA3173E5F7F126766F0FA4BAF9E79A7DB08101805BC2E27A00058CE56CF7B81EC00BCFED217F6';
wwv_flow_imp.g_varchar2_table(110) := '3FF5F54F8F39F735C3B22550BF8002A0FE39DC7C067912EE69414CAEC979F3132340029B1710E092020A802575F5FD54200B6216C6A7271AFD213926D746D3931601020D0928001A9ACCADA79285F1ABAFBDB9CB22D9D237E4934B727AF2CAE37D6E3EF7';
wwv_flow_imp.g_varchar2_table(111) := 'DFFA9F43F1D52320D265051400CBFAEAFD80400A81272F3FDEA51868E1482EC929DF773890AE53040810D8A480026093D32228020408F42E20FFA50514004B0BEB9F00010204086C504001B0C14911120102047A1790FFF2020A80E58D8D408000010204';
wwv_flow_imp.g_varchar2_table(112) := '3627A000D8DC940888000102BD0BC87F0D0105C01ACAC62040800001021B1350006C6C428443800081DE05E4BF8E8002601D67A310384BE0FBDFFEEEAEE6E3ACA4DD4480C02A020A8055980D42E0B0407E8BE0E12BED9FED39F7F667F7920CDDBB968002';
wwv_flow_imp.g_varchar2_table(113) := '602D69E3103820D0F36F0FEC39F7037F149C22B0BA80026075720312F84CE0D10B9FFFEC4D673FE5D7277796B2740B0434594F4001B09EB591083C2790A7E0FC87849EBBD0F8891E736E7C4AA557A18002A0C24913725B027912EE69414CAEC9B9AD5994';
wwv_flow_imp.g_varchar2_table(114) := 'CD3C027A59534001B0A6B6B1083C209005310BE303979B399D1C936B3309498440C5020A808A274FE86D096461CC7F1E398B644BDF904F2EC9E9C92B8F77C9B1AD5993CD9C02FA5A574001B0AEB7D1084C0A64917CF2F2E35D8A81168EE4929CF27D87C9';
wwv_flow_imp.g_varchar2_table(115) := 'E435204060350105C06AD406224080008187055C595B4001B0B6B8F10810204080C0060414001B980421102040A07701F9AF2FA00058DFDC880408102040E0EA020A80AB4F8100081020D0BB80FCAF21A000B886BA310910204080C095051400579E00C3';
wwv_flow_imp.g_varchar2_table(116) := '132040A07701F95F474001701D77A312203083C077FEEC6F76351F3310E882C0D9020A80B3E9DC4880C0D202F92D824B8FB1D5FEFBC97DAB33D07E5C0A80F6E7588604AA15E8F9B707F69C7BB57F602B0B5C0150D9840997404F028F5EF87C4FE93E936B';
wwv_flow_imp.g_varchar2_table(117) := '7E7DF233271A7D23ADEB092800AE676F6402042604F2149CFF90D044B3E62EF7987373935841420A800A264988047A16C893704F0B62724DCE7DCCB92CAF29A000B8A6BEB109102812C8829885B1A871C58D926372AD3805A15724A000A868B2844AA067';
wwv_flow_imp.g_varchar2_table(118) := '812C8CF9CF2367916CE91BF2C925393D79E5F12E39F634C772BDAE8002E0BAFE462740E044812C924F5E7EBC4B31D0C2915C9253BEEF702285E6042E1250005CC4E76602040810384FC05DD71650005C7B068C4F8000010204AE20A000B802BA21091020';
wwv_flow_imp.g_varchar2_table(119) := 'D0BB80FCAF2FA000B8FE1C88800001020408AC2EA000589DDC80040810E85D40FE5B1050006C6116C440800001020456165000AC0C6E38020408F42E20FF6D082800B6310FA2204080000102AB0A280056E536180102047A1790FF560414005B99097110';
wwv_flow_imp.g_varchar2_table(120) := '2040800081150514002B621B8A000102BD0BC87F3B020A80EDCC85480810204080C06A020A80D5A80D44800081DE05E4BF250105C09666432C040810204060250105C04AD08621408040EF02F2DF968002605BF3211A0204081020B08A80026015668310';
wwv_flow_imp.g_varchar2_table(121) := '2040A07701F96F4D4001B0B519110F010204081058414001B002B221081020D0BB80FCB727A000D8DE9C888800010204082C2EA000589CD800040810E85D40FE5B1450006C7156C4448000010204161650002C0CAC7B020408F42E20FF6D0A2800B6392F';
wwv_flow_imp.g_varchar2_table(122) := 'A22240800001028B0A280016E5D5390102047A1790FF560514005B9D1971112040800081050514000BE2EA9A000102BD0BC87FBB020A80EDCE8DC80810204080C062020A80C568754C800081DE05E4BF650105C09667476C040810204060210105C042B0';
wwv_flow_imp.g_varchar2_table(123) := 'BA25408040EF02F2DFB6800260DBF3233A0204081020B08880026011569D122040A07701F96F5D4001B0F519121F010204081058404001B000AA2E091020D0BB80FCB72FA000D8FE1C89900001020408CC2EA000989D5487040810E85D40FE350828006A';
wwv_flow_imp.g_varchar2_table(124) := '982531122040800081990514003383EA8E000102BD0BC8BF0E0105401DF3244A020408102030AB800260564E9D112040A07701F9D7BF44E023000004C44944415422A000A865A6C449800001020466145000CC88A92B020408F42E20FF7A041400F5CC95';
wwv_flow_imp.g_varchar2_table(125) := '480910204080C06C020A80D9287544800081DE05E45F938002A0A6D9122B0102040810984940013013A46E081020D0BB80FCEB125000D4355FA2254080000102B30828006661D4090102047A17907F6D020A80DA664CBC040810204060060105C00C88BA';
wwv_flow_imp.g_varchar2_table(126) := '20408040EF02F2AF4F400150DF9C899800010204085C2CA000B8985007040810E85D40FE350A28006A9C35311320408000810B0514001702BA9D000102BD0BC8BF4E0105409DF3266A020408102070918002E0223E37132040A07701F9D72AA000A875E6';
wwv_flow_imp.g_varchar2_table(127) := 'C44D80000102042E1050005C80E756020408F42E20FF7A051400F5CE9DC80910204080C0D9020A80B3E9DC48800081DE05E45FB38002A0E6D9133B01020408103853400170269CDB081020D0BB80FCEB165000D43D7FA227408000010267092800CE6273';
wwv_flow_imp.g_varchar2_table(128) := '130102047A17907FED020A80DA6750FC0408102040E00C0105C019686E21408040EF02F2AF5F400150FF1CCA8000010204089C2CA0003899CC0D040810E85D40FE2D0828005A984539102040800081130514002782694E800081DE05E4DF868002A08D79';
wwv_flow_imp.g_varchar2_table(129) := '9405010204081038494001701297C6040810E85D40FEAD0828005A994979102040800081130414002760694A800081DE05E4DF8E8002A09DB9940901020408102816500014536948800081DE05E4DF928002A0A5D9940B01020408102814500014426946';
wwv_flow_imp.g_varchar2_table(130) := '800081DE05E4DF968002A0ADF9940D01020408102812500014316944800081DE05E4DF9A8002A0B519950F01020408102810500014206942800081DE05E4DF9E8002A0BD3995110102040810981450004C126940800081DE05E4DFA28002A0C559951301';
wwv_flow_imp.g_varchar2_table(131) := '02040810981050004C00B94C800081DE05E4DFA68002A0CD7995150102040810382AA00038CAE3220102047A17907FAB020A805667565E0408102040E0888002E0088E4B040810E85D40FEED0A2800DA9D5B99112040800081070514000FD2B840800081';
wwv_flow_imp.g_varchar2_table(132) := 'DE05E4DFB28002A0E5D9951B010204081078404001F0008CD3040810E85D40FE6D0B2800DA9E5FD911204080008183020A80832C4E122040A07701F9B72EA000687D86E54780000102040E0828000EA03845800081DE05E4DFBE8002A0FD399621010204';
wwv_flow_imp.g_varchar2_table(133) := '0810784E4001F01C8913040810E85D40FE3D0828007A9865391220408000817B020A807B20DE122040A07701F9F721A000E8639E654980000102049E1150003CC3E10D0102047A17907F2F020A805E665A9E0408102040E08E8002E00E861F091020D0BB';
wwv_flow_imp.g_varchar2_table(134) := '80FCFB115000F433D7322540800001024F0514004F29FC40800081DE05E4DF938002A0A7D9962B0102040810F8544001F0298417020408F42E20FFBE0414007DCDB76C0910204080C0AD8002E096C1BF081020D0BB80FC7B135000F436E3F22540800001';
wwv_flow_imp.g_varchar2_table(135) := '027B0105C01EC13F040810E85D40FEFD092800FA9B73191320408000819D02C01F02020408742F00A0470105408FB32E6702040810E85E4001D0FD1F01000408F42E20FF3E0514007DCEBBAC09102040A073010540E77F00A44F8040EF02F2EF554001D0';
wwv_flow_imp.g_varchar2_table(136) := 'EBCCCB9B00010204BA165000743DFD922740A07701F9F72BA000E877EE654E800001021D0B28003A9E7CA91320D0BB80FC7B165000F43CFB7227408000816E051400DD4EBDC40910E85D40FE7D0BFC7F000000FFFFD5CF8C6100000006494441540300A9';
wwv_flow_imp.g_varchar2_table(137) := 'F02D2D563048AB0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4583709859076373252)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013055500Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055500Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(4583711151717373253)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20261013055500Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055500Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4583829963235374827)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(4583829963235374827)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20261013055516Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4583830632252374830)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4583830286893374828)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tms_candidates_first_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4587768290992495755)
,p_lov_name=>'TMS_CANDIDATES.FIRST_NAME'
,p_static_id=>'tms-candidates-first-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TMS_CANDIDATES'
,p_return_column_name=>'CANDIDATE_ID'
,p_display_column_name=>'FIRST_NAME'
,p_default_sort_column_name=>'FIRST_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:0v8aEtcAXhhm0wMTi02LkyUic30xlZp5rx3MNbPaZ84'
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tms_departments_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4583726121832373565)
,p_lov_name=>'TMS_DEPARTMENTS.NAME'
,p_static_id=>'tms-departments-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TMS_DEPARTMENTS'
,p_return_column_name=>'DEPT_ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:JBT3jhsjzWOaf4wOnKmr5bUDZCclmGNI-OFatrUn58I'
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055503Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tms_interview_stages
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4618445088766267184)
,p_lov_name=>'TMS_INTERVIEW.STAGES'
,p_static_id=>'tms-interview-stages'
,p_lov_query=>'.'||wwv_flow_imp.id(4618445088766267184)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:LN8vQ-_rUdBCBVcvCPt0bHzzcEjephhuHEx2xup7F5c'
,p_created_on=>wwv_flow_imp.dz('20261013091521Z')
,p_updated_on=>wwv_flow_imp.dz('20261013091522Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4618445214843267185)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Applied'
,p_lov_return_value=>'Applied'
,p_static_id=>'applied'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4618446774051267188)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Hired'
,p_lov_return_value=>'Hired'
,p_static_id=>'hired'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4618445903831267187)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Interview'
,p_lov_return_value=>'Interview'
,p_static_id=>'interview'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4618446386010267188)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Offer'
,p_lov_return_value=>'Offer'
,p_static_id=>'offer'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4618447170105267189)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Rejected'
,p_lov_return_value=>'Rejected'
,p_static_id=>'rejected'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4618445526137267187)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Screening'
,p_lov_return_value=>'Screening'
,p_static_id=>'screening'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tms_interviewers_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4618428969532260825)
,p_lov_name=>'TMS_INTERVIEWERS.NAME'
,p_static_id=>'tms-interviewers-name'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT first_name || '' '' || last_name d,',
'       employee_id r',
'  FROM tms_employees',
' WHERE status = ''Active'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:Y5YMXzov-ocJlX7FxxcR6C16c4NFQSV55s-1IXvcZVw'
,p_created_on=>wwv_flow_imp.dz('20261013091418Z')
,p_updated_on=>wwv_flow_imp.dz('20261013091418Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tms_job_requisitions_requested_by
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4583752659393374652)
,p_lov_name=>'TMS_JOB_REQUISITIONS.REQUESTED_BY'
,p_static_id=>'tms-job-requisitions-requested-by'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TMS_JOB_REQUISITIONS'
,p_return_column_name=>'REQ_ID'
,p_display_column_name=>'REQUESTED_BY'
,p_default_sort_column_name=>'REQUESTED_BY'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:L4ZNNVCycMMRz4MYv8G3uoxfsVQO5fhkRHjk5ofyCSM'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tms_jobs_title
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4583725498938373559)
,p_lov_name=>'TMS_JOBS.TITLE'
,p_static_id=>'tms-jobs-title'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TMS_JOBS'
,p_return_column_name=>'JOB_ID'
,p_display_column_name=>'TITLE'
,p_default_sort_column_name=>'TITLE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:SoSbcOcgLMcARq6hix-r_UyA3r9scKwCEEX5RMoUGZo'
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055503Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tms_offer_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4615751945913584845)
,p_lov_name=>'TMS_OFFER.STATUS'
,p_static_id=>'tms-offer-status'
,p_lov_query=>'.'||wwv_flow_imp.id(4615751945913584845)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:5rsz22l847EYHfTyFvPYQwYRvIIHA_uzRujM7QSWB1Y'
,p_created_on=>wwv_flow_imp.dz('20261013091656Z')
,p_updated_on=>wwv_flow_imp.dz('20261013091656Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615753360924584851)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Accepted'
,p_lov_return_value=>'Accepted'
,p_static_id=>'accepted'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615752198908584848)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Draft'
,p_lov_return_value=>'Draft'
,p_static_id=>'draft'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615752536012584850)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Pending Approval'
,p_lov_return_value=>'Pending Approval'
,p_static_id=>'pending-approval'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615753756402584851)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Rejected'
,p_lov_return_value=>'Rejected'
,p_static_id=>'rejected'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615752931089584850)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Sent'
,p_lov_return_value=>'Sent'
,p_static_id=>'sent'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615754144229584852)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Withdrawn'
,p_lov_return_value=>'Withdrawn'
,p_static_id=>'withdrawn'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(4583711446852373257)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(4583706053649373051)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085917Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4583777432333374706)
,p_short_name=>'Candidate Pipeline'
,p_static_id=>'candidate-pipeline'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4592898850691527376)
,p_short_name=>'Candidate Profile'
,p_static_id=>'candidate-profile'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
,p_created_on=>wwv_flow_imp.dz('20261013071203Z')
,p_updated_on=>wwv_flow_imp.dz('20261013071203Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4583706239009373052)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4583781070849374712)
,p_short_name=>'Interview Schedule'
,p_static_id=>'interview-schedule'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
,p_created_on=>wwv_flow_imp.dz('20261013055515Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4594853825044022215)
,p_short_name=>'Job Openings'
,p_static_id=>'job-openings'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20261013074310Z')
,p_updated_on=>wwv_flow_imp.dz('20261013074310Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4583748369522373994)
,p_short_name=>'Job Requisitions'
,p_static_id=>'job-requisitions'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055507Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4587789887635496123)
,p_short_name=>'Offer Management'
,p_static_id=>'offer-management'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20261013061529Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061529Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4583779329059374710)
,p_short_name=>'Offers'
,p_static_id=>'offers'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20261013055515Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4588632024717527930)
,p_short_name=>'Recruitment Metrics Overview'
,p_static_id=>'recruitment-metrics-overview'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20261013062047Z')
,p_updated_on=>wwv_flow_imp.dz('20261013062047Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4618035050715170723)
,p_short_name=>'Requisition Detail'
,p_static_id=>'requisition-detail'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20261013085917Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085917Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(4583706956636373062)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>4194319937007846
,p_default_page_template=>4075783602716660119
,p_default_dialog_template=>2103835248774687739
,p_error_template=>2104585595298951431
,p_printer_friendly_template=>4075783602716660119
,p_login_template=>2104585595298951431
,p_default_button_template=>4075790603270660137
,p_default_region_template=>4075786578761660127
,p_default_chart_template=>4075786578761660127
,p_default_form_template=>4075786578761660127
,p_default_reportr_template=>4075786578761660127
,p_default_wizard_template=>4075786578761660127
,p_default_menur_template=>2534890969069732905
,p_default_listr_template=>4075786578761660127
,p_default_irr_template=>2103954283454391425
,p_default_report_template=>2542081983073888486
,p_default_label_template=>1612549609962752680
,p_default_menu_template=>4075790987805660140
,p_default_list_template=>4075788786379660133
,p_default_top_nav_list_temp=>2530182346535839887
,p_default_side_nav_list_temp=>2471166859590295591
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2129856781885180476
,p_default_dialogr_template=>4504868307683981366
,p_default_option_label=>1612549609962752680
,p_default_required_label=>1612549789555753698
,p_default_navbar_list_template=>2850970698196720012
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4075791579648660165,2000,'universal-theme',8842.262)
,p_version_scn=>'SH256:_ZA2OCAT0oe8zXeYXS4pqku9eJXOHXBko77-CJUyv6E'
,p_version_scn_master=>'SH256:S3Fh7S4ZMPpy-ID1j0RgxJIrTUyM6ZXOJB4KD7haOtc'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055500Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(4583705338951373045)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(4583705645008373047)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20261013055458Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055458Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20261013055500Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013071932Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4472946937026473015)
,p_plug_name=>'Hiring Info'
,p_static_id=>'hiring-info'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'AFTER_LOGO'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'<strong>Now Hiring:</strong> Open Roles at ACME Corp. <a href="f?p=&APP_ID.:2:&SESSION.">View Jobs </a>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013071921Z')
,p_updated_on=>wwv_flow_imp.dz('20261013071932Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Talent Acquisition Portal'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013072046Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4472947040849473016)
,p_plug_name=>'Active Candidates'
,p_static_id=>'active-candidates'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_active_candidates number;',
'begin',
'    select count(*)',
'      into l_active_candidates',
'      from tms_candidates',
'     where current_stage not in (''Hired'', ''Rejected'');',
'',
'    return ''<p>Active candidates: '' || apex_escape.html(to_char(l_active_candidates)) || ''</p>'';',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_created_on=>wwv_flow_imp.dz('20261013072046Z')
,p_updated_on=>wwv_flow_imp.dz('20261013072046Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4583829407024374825)
,p_plug_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(4583827128680374821)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2890197131116233323
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20261013055516Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4583722264371373357)
,p_plug_name=>'Talent Acquisition Portal'
,p_static_id=>'talent-acquisition-portal'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Job Requisitions'
,p_alias=>'JOB-REQUISITIONS'
,p_step_title=>'Job Requisitions'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.</p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013073549Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4583747754278373993)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(4583706053649373051)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055507Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4583739983201373948)
,p_plug_name=>'Job Requisitions'
,p_static_id=>'job-requisitions'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TMS_JOB_REQUISITIONS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>true
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073549Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4583740069737373948)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP:P3_REQ_ID:\#REQ_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>4583740069737373948
,p_ai_search_mode=>'A'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073549Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583742851211373977)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073548Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583744416115373982)
,p_db_column_name=>'CLOSE_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Close Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073548Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583744855699373984)
,p_db_column_name=>'CREATED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073548Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583745236986373985)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073548Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583742039602373974)
,p_db_column_name=>'DEPT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dept'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(4583726121832373565)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_ai_column_hint=>'Organizational department name (e.g., Sales, Engineering, HR)'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073548Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583743264521373978)
,p_db_column_name=>'HEADCOUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Headcount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073548Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583741647168373973)
,p_db_column_name=>'JOB_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(4583725498938373559)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073548Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583744031151373981)
,p_db_column_name=>'OPEN_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Open Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073548Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583742435779373976)
,p_db_column_name=>'REQUESTED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Requested By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073548Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583741245273373970)
,p_db_column_name=>'REQ_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Req ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073548Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583743621049373980)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_ai_column_hint=>'Requisition status; values include Open, Filled, Pending Approval, Draft'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073548Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583745643788373986)
,p_db_column_name=>'UPDATED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073548Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583746028140373988)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073549Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4583781840671374740)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JOB_ID:DEPT_ID:REQUESTED_BY:APPROVED_BY:HEADCOUNT:STATUS:OPEN_DATE:CLOSE_DATE'
,p_sort_column_1=>'JOB_ID'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20261013055515Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4583746442136373989)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4583739983201373948)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055507Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4583746875212373990)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4583739983201373948)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055507Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4583747254713373991)
,p_event_id=>wwv_flow_imp.id(4583746875212373990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4583739983201373948)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055507Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055507Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Job Requisition'
,p_alias=>'JOB-REQUISITION'
,p_page_mode=>'MODAL'
,p_step_title=>'Job Requisition'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4583734638039373578)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055503Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4583724525604373549)
,p_plug_name=>'Job Requisition'
,p_static_id=>'job-requisition'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TMS_JOB_REQUISITIONS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4583735068183373579)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4583734638039373578)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055503Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(4583735575223373580)
,p_button_id=>wwv_flow_imp.id(4583735068183373579)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055503Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4583736872005373584)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4583734638039373578)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_REQ_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055503Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4583736046343373583)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4583734638039373578)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_REQ_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055507Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4583736497895373584)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4583734638039373578)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_REQ_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055503Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583727119495373567)
,p_name=>'P3_APPROVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_item_source_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_prompt=>'Approved By'
,p_source=>'APPROVED_BY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583728729295373570)
,p_name=>'P3_CLOSE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_item_source_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_prompt=>'Close Date'
,p_source=>'CLOSE_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583729130264373570)
,p_name=>'P3_CREATED'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_item_source_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583729575905373571)
,p_name=>'P3_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_item_source_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583726070551373565)
,p_name=>'P3_DEPT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_item_source_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_prompt=>'Dept'
,p_source=>'DEPT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TMS_DEPARTMENTS.NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583727511969373568)
,p_name=>'P3_HEADCOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_item_source_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_prompt=>'Headcount'
,p_source=>'HEADCOUNT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583725240474373557)
,p_name=>'P3_JOB_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_item_source_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_prompt=>'Job'
,p_source=>'JOB_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TMS_JOBS.TITLE'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583728368132373569)
,p_name=>'P3_OPEN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_item_source_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_prompt=>'Open Date'
,p_source=>'OPEN_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583726709335373566)
,p_name=>'P3_REQUESTED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_item_source_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_prompt=>'Requested By'
,p_source=>'REQUESTED_BY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583724824889373549)
,p_name=>'P3_REQ_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_item_source_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_prompt=>'Req ID'
,p_source=>'REQ_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1612549789555753698
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583727921154373568)
,p_name=>'P3_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_item_source_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583729993181373572)
,p_name=>'P3_UPDATED'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_item_source_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583730339919373572)
,p_name=>'P3_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_item_source_plug_id=>wwv_flow_imp.id(4583724525604373549)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4583738007939373585)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4583738007939373585
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055503Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4583737248305373584)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4583724525604373549)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Job Requisition'
,p_static_id=>'initialize-form-job-requisition'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>4583737248305373584
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055503Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4583737653183373585)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4583724525604373549)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Job Requisition'
,p_static_id=>'process-form-job-requisition'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4583737653183373585
,p_created_on=>wwv_flow_imp.dz('20261013055503Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055503Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Candidate Pipeline'
,p_alias=>'CANDIDATE-PIPELINE'
,p_step_title=>'Candidate Pipeline'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.</p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013085625Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4472946763234473013)
,p_plug_name=>'Applied'
,p_static_id=>'applied'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>5
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    candidate_id,',
'    first_name || '' '' || last_name as candidate_name,',
'    current_stage,',
'    ''Applied: '' || to_char(applied_date, ''DD-Mon-YYYY'') as applied_on',
'from tms_candidates',
'order by applied_date desc'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20261013071658Z')
,p_updated_on=>wwv_flow_imp.dz('20261013071800Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(4472946888220473014)
,p_region_id=>wwv_flow_imp.id(4472946763234473013)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CANDIDATE_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CURRENT_STAGE'
,p_body_adv_formatting=>false
,p_body_column_name=>'APPLIED_ON'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'CANDIDATE_NAME'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20261013071800Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4583767764237374671)
,p_plug_name=>'Candidates'
,p_static_id=>'candidate-pipeline'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.candidate_id,',
'    c.req_id,',
'    c.first_name',
'    || '' ''',
'    || c.last_name                  AS candidate_name,',
'    d.NAME                          AS department_name,',
'    c.email,',
'    c.phone,',
'    c.resume_blob,',
'    c.source,',
'    c.current_stage                 AS stage,',
'    c.applied_date,',
'    Trunc(sysdate - c.applied_date) AS days_since_applied,',
'    c.diversity_flag,',
'    c.ai_score,',
'    c.created_by,',
'    c.created,',
'    c.updated_by,',
'    c.updated',
'FROM   tms_candidates c',
'    LEFT JOIN tms_job_requisitions r',
'            ON c.req_id = r.req_id',
'    LEFT JOIN tms_departments d',
'            ON r.dept_id = d.dept_id',
'WHERE  :P4_REQ_ID IS NULL',
'        OR c.req_id = :P4_REQ_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085625Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4583767887669374671)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_CANDIDATE_ID:\#CANDIDATE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>4583767887669374671
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085326Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583773525525374695)
,p_db_column_name=>'AI_SCORE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Ai Score'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583772771004374692)
,p_db_column_name=>'APPLIED_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Applied Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583769137468374678)
,p_db_column_name=>'CANDIDATE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Candidate ID'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::P11_CANDIDATE_ID:#CANDIDATE_ID#'
,p_column_linktext=>'#CANDIDATE_ID#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085326Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4472947387724473019)
,p_db_column_name=>'CANDIDATE_NAME'
,p_display_order=>36
,p_column_identifier=>'R'
,p_column_label=>'Candidate Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013073002Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073002Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583773999448374696)
,p_db_column_name=>'CREATED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583774302745374698)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4472947522871473021)
,p_db_column_name=>'DAYS_SINCE_APPLIED'
,p_display_order=>56
,p_column_identifier=>'T'
,p_column_label=>'Days Since Applied'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013073002Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073002Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4594983756789740411)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>66
,p_column_identifier=>'U'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013084737Z')
,p_updated_on=>wwv_flow_imp.dz('20261013084737Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583773144056374693)
,p_db_column_name=>'DIVERSITY_FLAG'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Diversity Flag'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583770748647374684)
,p_db_column_name=>'EMAIL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583771108640374686)
,p_db_column_name=>'PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4472947220455473018)
,p_db_column_name=>'REQ_ID'
,p_display_order=>26
,p_column_identifier=>'Q'
,p_column_label=>'Req Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013073002Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073002Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4594983813234740412)
,p_db_column_name=>'RESUME_BLOB'
,p_display_order=>76
,p_column_identifier=>'V'
,p_column_label=>'Resume Blob'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013084737Z')
,p_updated_on=>wwv_flow_imp.dz('20261013084737Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583771918735374689)
,p_db_column_name=>'SOURCE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4472947403597473020)
,p_db_column_name=>'STAGE'
,p_display_order=>46
,p_column_identifier=>'S'
,p_column_label=>'Stage'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013073002Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073002Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583774756594374700)
,p_db_column_name=>'UPDATED'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4583775152437374702)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4583802812985374786)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STAGE:CANDIDATE_ID:REQ_ID:PHONE:SOURCE:APPLIED_DATE:DIVERSITY_FLAG:AI_SCORE:CANDIDATE_NAME:DAYS_SINCE_APPLIED'
,p_sort_column_1=>'APPLIED_DATE'
,p_sort_direction_1=>'DESC'
,p_break_on=>'STAGE'
,p_break_enabled_on=>'STAGE'
,p_created_on=>wwv_flow_imp.dz('20261013055515Z')
,p_updated_on=>wwv_flow_imp.dz('20261013084737Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4617633468978089281)
,p_report_id=>wwv_flow_imp.id(4583802812985374786)
,p_static_id=>'ir-condition'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STAGE'
,p_operator=>'='
,p_expr=>'Rejected'
,p_condition_sql=>' (case when ("STAGE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Rejected''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
,p_created_on=>wwv_flow_imp.dz('20261013084542Z')
,p_updated_on=>wwv_flow_imp.dz('20261013084542Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4617633000939089280)
,p_report_id=>wwv_flow_imp.id(4583802812985374786)
,p_static_id=>'ir-condition-2'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STAGE'
,p_operator=>'='
,p_expr=>'Hired'
,p_condition_sql=>' (case when ("STAGE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Hired''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
,p_created_on=>wwv_flow_imp.dz('20261013084542Z')
,p_updated_on=>wwv_flow_imp.dz('20261013084542Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4617673581686094900)
,p_application_user=>'ROOPESH.THOKALA@ORACLE.COM'
,p_name=>'Active Candidates'
,p_report_seq=>10
,p_report_columns=>'STAGE:CANDIDATE_ID:REQ_ID:PHONE:SOURCE:APPLIED_DATE:DIVERSITY_FLAG:AI_SCORE:CANDIDATE_NAME:DAYS_SINCE_APPLIED'
,p_sort_column_1=>'APPLIED_DATE'
,p_sort_direction_1=>'DESC'
,p_break_on=>'STAGE'
,p_break_enabled_on=>'STAGE'
,p_created_on=>wwv_flow_imp.dz('20261013084639Z')
,p_updated_on=>wwv_flow_imp.dz('20261013084737Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4617673880939094901)
,p_report_id=>wwv_flow_imp.id(4617673581686094900)
,p_static_id=>'ir-condition'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STAGE'
,p_operator=>'='
,p_expr=>'Rejected'
,p_condition_sql=>' (case when ("STAGE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Rejected''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
,p_created_on=>wwv_flow_imp.dz('20261013084639Z')
,p_updated_on=>wwv_flow_imp.dz('20261013084639Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4617673704755094901)
,p_report_id=>wwv_flow_imp.id(4617673581686094900)
,p_static_id=>'ir-condition-2'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STAGE'
,p_operator=>'='
,p_expr=>'Hired'
,p_condition_sql=>' (case when ("STAGE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Hired''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
,p_created_on=>wwv_flow_imp.dz('20261013084639Z')
,p_updated_on=>wwv_flow_imp.dz('20261013084639Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4617673681410094901)
,p_report_id=>wwv_flow_imp.id(4617673581686094900)
,p_static_id=>'ir-condition-3'
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'STAGE'
,p_operator=>'not in'
,p_expr=>'Hired,Rejected'
,p_condition_sql=>'"STAGE" not in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''Hired, Rejected''  '
,p_enabled=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261013084639Z')
,p_updated_on=>wwv_flow_imp.dz('20261013084639Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4617862974223120556)
,p_application_user=>'APEXAI'
,p_name=>'My Dashboard'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_columns=>'STAGE:CANDIDATE_ID:REQ_ID:PHONE:SOURCE:APPLIED_DATE:DIVERSITY_FLAG:AI_SCORE:CANDIDATE_NAME:DAYS_SINCE_APPLIED:DEPARTMENT_NAME'
,p_sort_column_1=>'APPLIED_DATE'
,p_sort_direction_1=>'DESC'
,p_break_on=>'STAGE'
,p_break_enabled_on=>'STAGE'
,p_created_on=>wwv_flow_imp.dz('20261013085055Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085055Z')
,p_created_by=>'APEXAI'
,p_updated_by=>'APEXAI'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4617863206209120557)
,p_report_id=>wwv_flow_imp.id(4617862974223120556)
,p_static_id=>'ir-condition'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STAGE'
,p_operator=>'='
,p_expr=>'Rejected'
,p_condition_sql=>' (case when ("STAGE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Rejected''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
,p_created_on=>wwv_flow_imp.dz('20261013085055Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085055Z')
,p_created_by=>'APEXAI'
,p_updated_by=>'APEXAI'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4617863122130120557)
,p_report_id=>wwv_flow_imp.id(4617862974223120556)
,p_static_id=>'ir-condition-2'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STAGE'
,p_operator=>'='
,p_expr=>'Hired'
,p_condition_sql=>' (case when ("STAGE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Hired''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
,p_created_on=>wwv_flow_imp.dz('20261013085055Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085055Z')
,p_created_by=>'APEXAI'
,p_updated_by=>'APEXAI'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4617863037493120556)
,p_report_id=>wwv_flow_imp.id(4617862974223120556)
,p_static_id=>'ir-condition-3'
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DEPARTMENT_NAME'
,p_operator=>'in'
,p_expr=>'Sales,Engineering'
,p_condition_sql=>'"DEPARTMENT_NAME" in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''Sales, Engineering''  '
,p_enabled=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261013085055Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085055Z')
,p_created_by=>'APEXAI'
,p_updated_by=>'APEXAI'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(4617863315558120557)
,p_report_id=>wwv_flow_imp.id(4617862974223120556)
,p_group_by_columns=>'STAGE'
,p_function_01=>'COUNT'
,p_function_column_01=>'CANDIDATE_NAME'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Count Candidate Name'
,p_function_format_mask_01=>'999G999G999G999G999G999G990'
,p_function_sum_01=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013085055Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085055Z')
,p_created_by=>'APEXAI'
,p_updated_by=>'APEXAI'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4472946633813473012)
,p_plug_name=>'Open Requisitions'
,p_static_id=>'open-requisitions'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_06'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_open_count number;',
'begin',
'    select count(*)',
'      into l_open_count',
'      from tms_job_requisitions',
'     where status = ''Open'';',
'',
'    return ''Open Requisitions: '' || apex_escape.html(to_char(l_open_count));',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_created_on=>wwv_flow_imp.dz('20261013071528Z')
,p_updated_on=>wwv_flow_imp.dz('20261013071528Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4583775562481374704)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4583767764237374671)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4594984022440740414)
,p_name=>'P4_REQ_ID'
,p_item_sequence=>20
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013085625Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085625Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4583775992351374704)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4583767764237374671)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4583776367118374705)
,p_event_id=>wwv_flow_imp.id(4583775992351374704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4583767764237374671)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Candidate'
,p_alias=>'CANDIDATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Candidate'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261013055512Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4583763644875374665)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4583751899964374650)
,p_plug_name=>'Candidate'
,p_static_id=>'candidate'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TMS_CANDIDATES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4583764022901374666)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4583763644875374665)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(4583764524720374666)
,p_button_id=>wwv_flow_imp.id(4583764022901374666)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4583765859768374668)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4583763644875374665)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_CANDIDATE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4583765082170374667)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4583763644875374665)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_CANDIDATE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4583765426743374668)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4583763644875374665)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_CANDIDATE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583756887972374659)
,p_name=>'P5_AI_SCORE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Ai Score'
,p_source=>'AI_SCORE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583756069570374658)
,p_name=>'P5_APPLIED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Applied Date'
,p_source=>'APPLIED_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583752195854374652)
,p_name=>'P5_CANDIDATE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Candidate ID'
,p_source=>'CANDIDATE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1612549789555753698
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583757205575374659)
,p_name=>'P5_CREATED'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583757621889374660)
,p_name=>'P5_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583755690746374657)
,p_name=>'P5_CURRENT_STAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Current Stage'
,p_source=>'CURRENT_STAGE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583756457522374658)
,p_name=>'P5_DIVERSITY_FLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Diversity Flag'
,p_source=>'DIVERSITY_FLAG'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583754012699374655)
,p_name=>'P5_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>320
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583753222237374654)
,p_name=>'P5_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583753645910374655)
,p_name=>'P5_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583754415225374656)
,p_name=>'P5_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Phone'
,p_source=>'PHONE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583752565633374652)
,p_name=>'P5_REQ_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Req'
,p_source=>'REQ_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TMS_JOB_REQUISITIONS.REQUESTED_BY'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583754811770374656)
,p_name=>'P5_RESUME_BLOB'
,p_source_data_type=>'BLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Resume Blob'
,p_source=>'RESUME_BLOB'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_copy_paste', 'N',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583755246640374657)
,p_name=>'P5_SOURCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Source'
,p_source=>'SOURCE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583758056018374660)
,p_name=>'P5_UPDATED'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583758453055374661)
,p_name=>'P5_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_item_source_plug_id=>wwv_flow_imp.id(4583751899964374650)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055516Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4583767050442374670)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4583767050442374670
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4583766260281374669)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4583751899964374650)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Candidate'
,p_static_id=>'initialize-form-candidate'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>4583766260281374669
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4583766636513374670)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4583751899964374650)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Candidate'
,p_static_id=>'process-form-candidate'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4583766636513374670
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Offers'
,p_alias=>'OFFERS'
,p_step_title=>'Offers'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4583778877621374709)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(4583706053649373051)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261013055514Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055514Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Interview Schedule'
,p_alias=>'INTERVIEW-SCHEDULE'
,p_step_title=>'Interview Schedule'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20261013055515Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013095654Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4583780414809374712)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(4583706053649373051)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261013055515Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055515Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4472947610436473022)
,p_plug_name=>'Interview Stages'
,p_static_id=>'interview-stages'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TMS_INTERVIEW_STAGES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20261013073929Z')
,p_updated_on=>wwv_flow_imp.dz('20261013095424Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472949112032473037)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20261013073930Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472949244308473038)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20261013073930Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472947982075473025)
,p_name=>'CANDIDATE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANDIDATE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Candidate Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261013073930Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472948736797473033)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Created'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261013073951Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472948824159473034)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Created By'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261013073951Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472948534167473031)
,p_name=>'FEEDBACK_NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK_NOTES'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'CLOB'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Feedback Notes'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261013073930Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472948298264473028)
,p_name=>'INTERVIEWER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERVIEWER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Interviewer Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261013073930Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472948498706473030)
,p_name=>'OUTCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Outcome'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261013073930Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472948016245473026)
,p_name=>'REQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Req Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261013073930Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472948330958473029)
,p_name=>'SCHEDULED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULED_DATE'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Scheduled Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261013073930Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472948624690473032)
,p_name=>'SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCORE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Score'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261013073930Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472947884670473024)
,p_name=>'STAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261013073929Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472948104027473027)
,p_name=>'STAGE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Stage Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261013073930Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472948935898473035)
,p_name=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Updated'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261013073951Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472949073876473036)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Updated By'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261013073951Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4472947772246473023)
,p_internal_uid=>4472947772246473023
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20261013095424Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4594574792361691975)
,p_interactive_grid_id=>wwv_flow_imp.id(4472947772246473023)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20261013073930Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4594574814569691977)
,p_report_id=>wwv_flow_imp.id(4594574792361691975)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594575416715691988)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4472947884670473024)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594576224601691992)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4472947982075473025)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594577156666691994)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4472948016245473026)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594578022894691996)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4472948104027473027)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594578967859691999)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4472948298264473028)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594579892510692001)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4472948330958473029)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594580712269692003)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4472948498706473030)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594581685466692005)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4472948534167473031)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594582552004692007)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4472948624690473032)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594583417732692008)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4472948736797473033)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594584393383692010)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4472948824159473034)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594585241270692012)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4472948935898473035)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594586160295692014)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4472949073876473036)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594587036632692015)
,p_view_id=>wwv_flow_imp.id(4594574814569691977)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(4472949112032473037)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4594986157590740435)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4583780414809374712)
,p_button_name=>'ADD_FEEDBACK'
,p_static_id=>'add-feedback'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Feedback'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261013095424Z')
,p_updated_on=>wwv_flow_imp.dz('20261013095552Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4594986275441740436)
,p_name=>'DIALOG_CLOSED'
,p_static_id=>'dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4594986157590740435)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261013095654Z')
,p_updated_on=>wwv_flow_imp.dz('20261013095654Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4594986389166740437)
,p_event_id=>wwv_flow_imp.id(4594986275441740436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472947610436473022)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013095654Z')
,p_updated_on=>wwv_flow_imp.dz('20261013095654Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4472949358465473039)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4472947610436473022)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Interview Stages - Save Interactive Grid Data'
,p_static_id=>'interview-stages-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4472949358465473039
,p_created_on=>wwv_flow_imp.dz('20261013073929Z')
,p_updated_on=>wwv_flow_imp.dz('20261013073929Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Offer Management'
,p_alias=>'OFFER-MANAGEMENT'
,p_step_title=>'Offer Management'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013061537Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4587789941703496123)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(4583706053649373051)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261013061529Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061529Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4587781820402496097)
,p_plug_name=>'Offer Management'
,p_static_id=>'offer-management'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "OFFER_ID",',
'       "CANDIDATE_ID",',
'       "REQ_ID",',
'       "OFFERED_SALARY",',
'       "START_DATE",',
'       "EXPIRY_DATE",',
'       "STATUS",',
'       sys.dbms_lob.getlength( "OFFER_LETTER_BLOB" ) "OFFER_LETTER_BLOB",',
'       "APPROVED_BY",',
'       "CREATED",',
'       "CREATED_BY",',
'       "UPDATED",',
'       "UPDATED_BY"',
'  from "TMS_OFFERS"'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261013061528Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061537Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4587781971320496097)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_OFFER_ID:\#OFFER_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>4587781971320496097
,p_created_on=>wwv_flow_imp.dz('20261013061528Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061537Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4587786216708496112)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013061529Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061529Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4587783591243496103)
,p_db_column_name=>'CANDIDATE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Candidate'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(4587768290992495755)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013061528Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061528Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4587786620512496114)
,p_db_column_name=>'CREATED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013061529Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061529Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4587787004584496115)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013061529Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061529Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4587785176238496109)
,p_db_column_name=>'EXPIRY_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Expiry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013061528Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061528Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4587784328931496106)
,p_db_column_name=>'OFFERED_SALARY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Offered Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013061528Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061528Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4587783107455496101)
,p_db_column_name=>'OFFER_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Offer ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261013061528Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061528Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4587785815863496111)
,p_db_column_name=>'OFFER_LETTER_BLOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Offer Letter Blob'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:TMS_OFFERS:OFFER_LETTER_BLOB:OFFER_ID::::::attachment'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013061529Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061529Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4587783964312496105)
,p_db_column_name=>'REQ_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Req'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(4583752659393374652)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013061528Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061528Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4587784706763496107)
,p_db_column_name=>'START_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013061528Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061528Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4587785441576496110)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013061529Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061529Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4587787463824496116)
,p_db_column_name=>'UPDATED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013061529Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061529Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4587787877222496117)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013061529Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061529Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4586019691160188742)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OFFER_ID:CANDIDATE_ID:REQ_ID:OFFERED_SALARY:START_DATE:EXPIRY_DATE:STATUS:OFFER_LETTER_BLOB:APPROVED_BY:CREATED:CREATED_BY:UPDATED:UPDATED_BY'
,p_created_on=>wwv_flow_imp.dz('20261013061537Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061537Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4587788272338496119)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4587781820402496097)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
,p_created_on=>wwv_flow_imp.dz('20261013061529Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061529Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4587788668326496119)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4587781820402496097)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261013061529Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061529Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4587789001980496120)
,p_event_id=>wwv_flow_imp.id(4587788668326496119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4587781820402496097)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061529Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061529Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Form on Offers'
,p_alias=>'FORM-ON-OFFERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on Offers'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261013061523Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013094243Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4587777131598495764)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4587767479887495753)
,p_plug_name=>'Form on Offers'
,p_static_id=>'form-on-offers'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TMS_OFFERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4587777557014495795)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4587777131598495764)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(4587778092106495796)
,p_button_id=>wwv_flow_imp.id(4587777557014495795)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4587779386290495797)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4587777131598495764)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_OFFER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4587778507568495797)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4587777131598495764)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_OFFER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4587778956466495797)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4587777131598495764)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_OFFER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4587771244858495759)
,p_name=>'P9_APPROVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_source_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_prompt=>'Approved By'
,p_source=>'APPROVED_BY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094242Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4587768172916495755)
,p_name=>'P9_CANDIDATE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_source_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_prompt=>'Candidate Id'
,p_source=>'CANDIDATE_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TMS_CANDIDATES.FIRST_NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4587771610592495759)
,p_name=>'P9_CREATED'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_source_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094242Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4587772021373495760)
,p_name=>'P9_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_source_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094243Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4587770033241495757)
,p_name=>'P9_EXPIRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_source_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_prompt=>'Expiry Date'
,p_source=>'EXPIRY_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094242Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4587769250351495757)
,p_name=>'P9_OFFERED_SALARY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_source_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_prompt=>'Offered Salary'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'OFFERED_SALARY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013092822Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4587767757141495754)
,p_name=>'P9_OFFER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_source_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_source=>'OFFER_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4587770861011495758)
,p_name=>'P9_OFFER_LETTER_BLOB'
,p_source_data_type=>'BLOB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_source_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_prompt=>'Offer Letter Blob'
,p_source=>'OFFER_LETTER_BLOB'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_copy_paste', 'N',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094242Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4587768846928495756)
,p_name=>'P9_REQ_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_source_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_prompt=>'Req Id'
,p_source=>'REQ_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TMS_JOB_REQUISITIONS.REQUESTED_BY'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4594986021067740434)
,p_name=>'P9_SALARY_BAND_DISPLAY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT ''Band: $'' || min_salary || '' \2013 $'' || max_salary'),
'  FROM tms_jobs j',
'  JOIN tms_job_requisitions r',
'    ON j.job_id = r.job_id',
' WHERE r.req_id = :P9_REQ_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Salary Band Display'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013093000Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094243Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4587769617825495757)
,p_name=>'P9_START_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_source_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'START_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094242Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4587770497759495758)
,p_name=>'P9_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_source_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TMS_OFFER.STATUS'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Offer Status--'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094242Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4587772406039495760)
,p_name=>'P9_UPDATED'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_source_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094243Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4587772888052495761)
,p_name=>'P9_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_item_source_plug_id=>wwv_flow_imp.id(4587767479887495753)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094243Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4587780585082495799)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4587780585082495799
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4587779778132495798)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4587767479887495753)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on Offers'
,p_static_id=>'initialize-form-form-on-offers'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>4587779778132495798
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4587780154827495798)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4587767479887495753)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on Offers'
,p_static_id=>'process-form-form-on-offers'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4587780154827495798
,p_created_on=>wwv_flow_imp.dz('20261013061525Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061525Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Recruitment Metrics Overview'
,p_alias=>'RECRUITMENT-METRICS-OVERVIEW'
,p_step_title=>'Recruitment Metrics Overview'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20261013062046Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013062051Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4588631408465527896)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(4583706053649373051)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261013062047Z')
,p_updated_on=>wwv_flow_imp.dz('20261013062047Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4588633256064528321)
,p_plug_name=>'Recruitment Metrics Overview'
,p_static_id=>'recruitment-metrics-overview'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "REQ_ID",',
'       "JOB_ID",',
'       ( select l1."TITLE" from "TMS_JOBS" l1 where l1."JOB_ID" = m."JOB_ID") "JOB_ID_L$1",',
'       "DEPT_ID",',
'       ( select l2."NAME" from "TMS_DEPARTMENTS" l2 where l2."DEPT_ID" = m."DEPT_ID") "DEPT_ID_L$2",',
'       "REQUESTED_BY",',
'       "APPROVED_BY",',
'       "HEADCOUNT",',
'       "STATUS",',
'       "OPEN_DATE",',
'       "CLOSE_DATE",',
'       "CREATED",',
'       "CREATED_BY",',
'       "UPDATED",',
'       "UPDATED_BY"',
'from "TMS_JOB_REQUISITIONS" m'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P10_ORDER_BY", "orderBys": [{"key":"REQUESTED_BY","expr":"\"REQUESTED_BY\" asc"},{"key":"APPROVED_BY","expr":"\"APPROVED_BY\" asc"}]}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20261013062051Z')
,p_updated_on=>wwv_flow_imp.dz('20261013062051Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(4588633598872528327)
,p_region_id=>wwv_flow_imp.id(4588633256064528321)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'REQUESTED_BY'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'APPROVED_BY'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20261013062051Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4588634460485528337)
,p_name=>'P10_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4588633256064528321)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'REQUESTED_BY'
,p_prompt=>'Order By'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Requested By;REQUESTED_BY,Approved By;APPROVED_BY'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013062051Z')
,p_updated_on=>wwv_flow_imp.dz('20261013062051Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Candidate Profile'
,p_alias=>'CANDIDATE-PROFILE'
,p_step_title=>'Candidate Profile'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20261013071203Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013085224Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4472946540340473011)
,p_plug_name=>'Application History'
,p_static_id=>'application-history'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013071306Z')
,p_updated_on=>wwv_flow_imp.dz('20261013071306Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4592897832205527340)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(4583706053649373051)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261013071203Z')
,p_updated_on=>wwv_flow_imp.dz('20261013071203Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4472946487045473010)
,p_plug_name=>'Candidate Details'
,p_static_id=>'candidate-details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013071247Z')
,p_updated_on=>wwv_flow_imp.dz('20261013071247Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4594983972252740413)
,p_name=>'P11_CANDIDATE_ID'
,p_item_sequence=>30
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013085224Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085224Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Job Openings'
,p_alias=>'JOB-OPENINGS'
,p_step_title=>'Job Openings'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
,p_created_on=>wwv_flow_imp.dz('20261013074309Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013090158Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4594853213250022182)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(4583706053649373051)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261013074310Z')
,p_updated_on=>wwv_flow_imp.dz('20261013074310Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4594854657185022555)
,p_plug_name=>'Job Openings'
,p_static_id=>'job-openings'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        R.REQ_ID,',
'        J.TITLE,',
'        D.NAME AS DEPARTMENT,',
'        R.HEADCOUNT AS HEADCOUNT,',
'        TO_CHAR(R.OPEN_DATE, ''DD-Mon-YYYY'') AS OPEN_DATE',
'    FROM',
'        TMS_JOB_REQUISITIONS R',
'        JOIN TMS_JOBS J',
'            ON R.JOB_ID = J.JOB_ID',
'        JOIN TMS_DEPARTMENTS D',
'            ON R.DEPT_ID = D.DEPT_ID',
'    WHERE',
'        R.STATUS = ''Open'''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20261013074313Z')
,p_updated_on=>wwv_flow_imp.dz('20261013090158Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(4594854959552022558)
,p_region_id=>wwv_flow_imp.id(4594854657185022555)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'DEPARTMENT'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>Headcount:</strong> &HEADCOUNT.',
'<br>',
'<strong>Open since:</strong> &OPEN_DATE.'))
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-briefcase'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20261013090158Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(4594984104634740415)
,p_card_id=>wwv_flow_imp.id(4594854959552022558)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'View Applicants'
,p_static_id=>'action'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::P14_REQ_ID:&REQ_ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
,p_updated_on=>wwv_flow_imp.dz('20261013090158Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4472949466846473040)
,p_plug_name=>'Smart Filters'
,p_static_id=>'smart-filters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(4594854657185022555)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013074603Z')
,p_updated_on=>wwv_flow_imp.dz('20261013074603Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4472949634443473042)
,p_name=>'P12_DEPARTMENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4472949466846473040)
,p_prompt=>'Department'
,p_source=>'DEPARTMENT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_exclude_allowed=>true
,p_suggestions_type=>'DYNAMIC'
,p_created_on=>wwv_flow_imp.dz('20261013074603Z')
,p_updated_on=>wwv_flow_imp.dz('20261013074603Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4472949759786473043)
,p_name=>'P12_HEADCOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4472949466846473040)
,p_prompt=>'Headcount Range'
,p_source=>'HEADCOUNT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'N')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_exclude_allowed=>true
,p_suggestions_type=>'DYNAMIC'
,p_created_on=>wwv_flow_imp.dz('20261013074603Z')
,p_updated_on=>wwv_flow_imp.dz('20261013074603Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4472949554333473041)
,p_name=>'P12_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4472949466846473040)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013074603Z')
,p_updated_on=>wwv_flow_imp.dz('20261013074603Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Interview Feedback'
,p_alias=>'INTERVIEW-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Interview Feedback'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261013094951Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013095259Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4622136222971474228)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4622126421198474215)
,p_plug_name=>'Interview Feedback'
,p_static_id=>'interview-feedback'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TMS_INTERVIEW_STAGES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4622136680051474253)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4622136222971474228)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(4622137185910474254)
,p_button_id=>wwv_flow_imp.id(4622136680051474253)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4622138408551474256)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4622136222971474228)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_STAGE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4622137654628474255)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4622136222971474228)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_STAGE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4622138002454474255)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4622136222971474228)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_STAGE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4622127102156474217)
,p_name=>'P13_CANDIDATE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_item_source_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_prompt=>'Candidate Id'
,p_source=>'CANDIDATE_ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'TMS_CANDIDATES.FIRST_NAME'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013095217Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4622129917919474221)
,p_name=>'P13_FEEDBACK_NOTES'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_item_source_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_prompt=>'Feedback Notes'
,p_source=>'FEEDBACK_NOTES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4622128341757474219)
,p_name=>'P13_INTERVIEWER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_item_source_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_prompt=>'Interviewer Id'
,p_source=>'INTERVIEWER_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TMS_INTERVIEWERS.NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013095217Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4622129501832474221)
,p_name=>'P13_OUTCOME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_item_source_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_prompt=>'Outcome'
,p_source=>'OUTCOME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Proceed;Proceed,Hold;Hold,Reject;Rejected'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013095217Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4622127524042474218)
,p_name=>'P13_REQ_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_item_source_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_prompt=>'Req Id'
,p_source=>'REQ_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TMS_JOB_REQUISITIONS.REQUESTED_BY'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4622128723931474219)
,p_name=>'P13_SCHEDULED_DATE'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_item_source_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_prompt=>'Scheduled Date'
,p_source=>'SCHEDULED_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4622130343869474222)
,p_name=>'P13_SCORE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_item_source_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_prompt=>'Score'
,p_source=>'SCORE'
,p_display_as=>'NATIVE_STAR_RATING'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_stars', '5',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013095217Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4622126764247474216)
,p_name=>'P13_STAGE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_item_source_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_source=>'STAGE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4622127925922474218)
,p_name=>'P13_STAGE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_item_source_plug_id=>wwv_flow_imp.id(4622126421198474215)
,p_prompt=>'Stage Name'
,p_source=>'STAGE_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4622129197896474220)
,p_validation_name=>'P13_SCHEDULED_DATE must be timestamp'
,p_static_id=>'p13-scheduled-date-must-be-timestamp'
,p_validation_sequence=>50
,p_validation=>'P13_SCHEDULED_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(4622128723931474219)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4622139612259474257)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4622139612259474257
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4622138804204474256)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4622126421198474215)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Interview Feedback'
,p_static_id=>'initialize-form-interview-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>4622138804204474256
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4622139257580474257)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4622126421198474215)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Interview Feedback'
,p_static_id=>'process-form-interview-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4622139257580474257
,p_created_on=>wwv_flow_imp.dz('20261013094952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013094952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Requisition Detail'
,p_alias=>'REQUISITION-DETAIL'
,p_step_title=>'Requisition Detail'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20261013085917Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013090120Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4618034394914170691)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(4583706053649373051)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261013085917Z')
,p_updated_on=>wwv_flow_imp.dz('20261013085917Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4594985057009740424)
,p_plug_name=>'Candidates'
,p_static_id=>'candidates'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT candidate_id, first_name || '' '' || last_name as name,',
'       current_stage, applied_date',
'FROM TMS_candidates',
'WHERE req_id = :P14_REQ_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_on=>wwv_flow_imp.dz('20261013090120Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594985648623740430)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594985744346740431)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20261013090055Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594985560044740429)
,p_name=>'APPLIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Applied Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261013090120Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594985268069740426)
,p_name=>'CANDIDATE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANDIDATE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Candidate Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261013090120Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594985493483740428)
,p_name=>'CURRENT_STAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_STAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Current Stage'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>120
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594985374042740427)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261013090120Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4594985157325740425)
,p_internal_uid=>4594985157325740425
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4618109672343180475)
,p_interactive_grid_id=>wwv_flow_imp.id(4594985157325740425)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4618109769266180475)
,p_report_id=>wwv_flow_imp.id(4618109672343180475)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4618110269033180477)
,p_view_id=>wwv_flow_imp.id(4618109769266180475)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4594985268069740426)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4618111106490180480)
,p_view_id=>wwv_flow_imp.id(4618109769266180475)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4594985374042740427)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4618112038194180482)
,p_view_id=>wwv_flow_imp.id(4618109769266180475)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4594985493483740428)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4618112981728180484)
,p_view_id=>wwv_flow_imp.id(4618109769266180475)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4594985560044740429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4618113869619180486)
,p_view_id=>wwv_flow_imp.id(4618109769266180475)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(4594985648623740430)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4594984362851740417)
,p_name=>'Requisition info'
,p_static_id=>'requisition-info'
,p_template=>4075786578761660127
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.req_id, j.title, d.name as department, r.headcount,',
'       r.status, TO_CHAR(r.open_date,''DD-Mon-YYYY'') as open_since',
'FROM TMS_job_requisitions r',
'JOIN TMS_jobs j ON r.job_id = j.job_id',
'JOIN TMS_departments d ON r.dept_id = d.dept_id',
'WHERE r.req_id = :P14_REQ_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_on=>wwv_flow_imp.dz('20261013090054Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4594984642856740420)
,p_query_column_id=>3
,p_column_alias=>'DEPARTMENT'
,p_column_display_sequence=>30
,p_column_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4594984779906740421)
,p_query_column_id=>4
,p_column_alias=>'HEADCOUNT'
,p_column_display_sequence=>40
,p_column_heading=>'Headcount'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4594984917705740423)
,p_query_column_id=>6
,p_column_alias=>'OPEN_SINCE'
,p_column_display_sequence=>60
,p_column_heading=>'Open Since'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4594984493438740418)
,p_query_column_id=>1
,p_column_alias=>'REQ_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Req Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4594984828321740422)
,p_query_column_id=>5
,p_column_alias=>'STATUS'
,p_column_display_sequence=>50
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4594984542326740419)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Title'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4594984294588740416)
,p_name=>'P14_REQ_ID'
,p_item_sequence=>10
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_on=>wwv_flow_imp.dz('20261013090054Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4594985880157740432)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4594985057009740424)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Candidates - Save Interactive Grid Data'
,p_static_id=>'candidates-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4594985880157740432
,p_created_on=>wwv_flow_imp.dz('20261013090054Z')
,p_updated_on=>wwv_flow_imp.dz('20261013090054Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Talent Acquisition Portal - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2104585595298951431
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20261013055500Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4583715141459373294)
,p_plug_name=>'Talent Acquisition Portal'
,p_static_id=>'talent-acquisition-portal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677585639786677191
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4583716892406373341)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4583715141459373294)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583716180018373335)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4583715141459373294)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583716543474373339)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4583715141459373294)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4583715767943373335)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4583715141459373294)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4583720973121373349)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4583720973121373349
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4583720585564373349)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>4583720585564373349
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4583717249001373342)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4583717249001373342
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4583718201505373345)
,p_page_process_id=>wwv_flow_imp.id(4583717249001373342)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4583718750253373346)
,p_page_process_id=>wwv_flow_imp.id(4583717249001373342)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4583717794036373344)
,p_page_process_id=>wwv_flow_imp.id(4583717249001373342)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4583719102316373347)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4583719102316373347
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4583720178640373349)
,p_page_process_id=>wwv_flow_imp.id(4583719102316373347)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4583719634353373348)
,p_page_process_id=>wwv_flow_imp.id(4583719102316373347)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20261013055501Z')
,p_updated_on=>wwv_flow_imp.dz('20261013055501Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(4592094104378764104)
,p_deinstall_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013070008Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013070125Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/deployment/install/install_tms_ddl
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '-- TMS supporting objects extracted from APEX_262_LL_Exp (schema APEX262_LL).'||wwv_flow.LF||
'-- Run this script bef';
wwv_flow_imp.g_varchar2_table(2) := 'ore TMS_SUPPORTING_OBJECTS_DML.sql.'||wwv_flow.LF||
'-- Rerunning drops the 14 TMS tables and their dependent indexes';
wwv_flow_imp.g_varchar2_table(3) := ' and triggers.'||wwv_flow.LF||
'SET DEFINE OFF'||wwv_flow.LF||
'WHENEVER SQLERROR EXIT SQL.SQLCODE'||wwv_flow.LF||
''||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    PROCEDURE drop_table(p';
wwv_flow_imp.g_varchar2_table(4) := '_table_name IN VARCHAR2) IS'||wwv_flow.LF||
'    BEGIN'||wwv_flow.LF||
'        EXECUTE IMMEDIATE ''DROP TABLE '' || p_table_name || '' C';
wwv_flow_imp.g_varchar2_table(5) := 'ASCADE CONSTRAINTS'';'||wwv_flow.LF||
'    EXCEPTION'||wwv_flow.LF||
'        WHEN OTHERS THEN'||wwv_flow.LF||
'            IF SQLCODE != -942 THEN'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(6) := '            RAISE;'||wwv_flow.LF||
'            END IF;'||wwv_flow.LF||
'    END drop_table;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    drop_table(''TMS_INTERVIEW_STAGE';
wwv_flow_imp.g_varchar2_table(7) := 'S'');'||wwv_flow.LF||
'    drop_table(''TMS_OFFERS'');'||wwv_flow.LF||
'    drop_table(''TMS_ONBOARDING_TASKS'');'||wwv_flow.LF||
'    drop_table(''TMS_LEAVE';
wwv_flow_imp.g_varchar2_table(8) := '_REQUESTS'');'||wwv_flow.LF||
'    drop_table(''TMS_LEAVE_BALANCES'');'||wwv_flow.LF||
'    drop_table(''TMS_EMPLOYEES'');'||wwv_flow.LF||
'    drop_table(''';
wwv_flow_imp.g_varchar2_table(9) := 'TMS_CANDIDATES'');'||wwv_flow.LF||
'    drop_table(''TMS_JOB_REQUISITIONS'');'||wwv_flow.LF||
'    drop_table(''TMS_JOBS'');'||wwv_flow.LF||
'    drop_table';
wwv_flow_imp.g_varchar2_table(10) := '(''TMS_DEPARTMENTS'');'||wwv_flow.LF||
'    drop_table(''TMS_LEAVE_TYPES'');'||wwv_flow.LF||
'    drop_table(''TMS_HR_POLICY'');'||wwv_flow.LF||
'    drop_ta';
wwv_flow_imp.g_varchar2_table(11) := 'ble(''TMS_AUDIT_LOG'');'||wwv_flow.LF||
'    drop_table(''TMS_CANDIDATE_PIPELINE'');'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "TMS_AUDIT_LOG"';
wwv_flow_imp.g_varchar2_table(12) := ''||wwv_flow.LF||
'   (	"LOG_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 99999999999999999';
wwv_flow_imp.g_varchar2_table(13) := '99999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE,';
wwv_flow_imp.g_varchar2_table(14) := ''||wwv_flow.LF||
'	"TABLE_NAME" VARCHAR2(255 BYTE) NOT NULL ENABLE,'||wwv_flow.LF||
'	"OPERATION" VARCHAR2(50 BYTE) NOT NULL ENABLE,'||wwv_flow.LF||
'	';
wwv_flow_imp.g_varchar2_table(15) := '"OLD_VALUES" CLOB,'||wwv_flow.LF||
'	"NEW_VALUES" CLOB,'||wwv_flow.LF||
'	"CHANGED_BY" VARCHAR2(255 BYTE) NOT NULL ENABLE,'||wwv_flow.LF||
'	"CHANGED_A';
wwv_flow_imp.g_varchar2_table(16) := 'T" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"ROW_VERSION" NUMBER(*,0) NOT NULL ENABLE,'||wwv_flow.LF||
'	"CREATED_ON" DATE NOT NULL ENA';
wwv_flow_imp.g_varchar2_table(17) := 'BLE,'||wwv_flow.LF||
'	"CREATED_BY" VARCHAR2(255 BYTE) NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED_ON" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED';
wwv_flow_imp.g_varchar2_table(18) := '_BY" VARCHAR2(255 BYTE) NOT NULL ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "TMS_CANDIDATES"'||wwv_flow.LF||
'   (	"CANDIDATE_ID" NU';
wwv_flow_imp.g_varchar2_table(19) := 'MBER DEFAULT ON NULL to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') NOT NULL ENABLE,'||wwv_flow.LF||
'	"RE';
wwv_flow_imp.g_varchar2_table(20) := 'Q_ID" NUMBER,'||wwv_flow.LF||
'	"FIRST_NAME" VARCHAR2(80 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"LAST_NAME" VARCHAR2(80 CHAR) NOT NU';
wwv_flow_imp.g_varchar2_table(21) := 'LL ENABLE,'||wwv_flow.LF||
'	"EMAIL" VARCHAR2(320 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"PHONE" VARCHAR2(50 CHAR),'||wwv_flow.LF||
'	"RESUME_BLOB" B';
wwv_flow_imp.g_varchar2_table(22) := 'LOB,'||wwv_flow.LF||
'	"SOURCE" VARCHAR2(100 CHAR),'||wwv_flow.LF||
'	"CURRENT_STAGE" VARCHAR2(30 CHAR),'||wwv_flow.LF||
'	"APPLIED_DATE" DATE,'||wwv_flow.LF||
'	"DIVER';
wwv_flow_imp.g_varchar2_table(23) := 'SITY_FLAG" VARCHAR2(1 CHAR),'||wwv_flow.LF||
'	"AI_SCORE" NUMBER,'||wwv_flow.LF||
'	"CREATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"CREATED_BY" VARC';
wwv_flow_imp.g_varchar2_table(24) := 'HAR2(255 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED_BY" VARCHAR2(255 CHAR) NO';
wwv_flow_imp.g_varchar2_table(25) := 'T NULL ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "TMS_CANDIDATE_PIPELINE"'||wwv_flow.LF||
'   (	"ID" NUMBER GENERATED BY DEFAULT ON';
wwv_flow_imp.g_varchar2_table(26) := ' NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE';
wwv_flow_imp.g_varchar2_table(27) := ' 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE,'||wwv_flow.LF||
'	"CANDIDATE_NAME" VARCHAR2(100 BYTE),'||wwv_flow.LF||
'	"FIRS';
wwv_flow_imp.g_varchar2_table(28) := 'T_NAME" VARCHAR2(100 BYTE),'||wwv_flow.LF||
'	"LAST_NAME" VARCHAR2(100 BYTE),'||wwv_flow.LF||
'	"EMAIL" VARCHAR2(50 BYTE),'||wwv_flow.LF||
'	"JOB_TITLE';
wwv_flow_imp.g_varchar2_table(29) := '" VARCHAR2(100 BYTE),'||wwv_flow.LF||
'	"DEPARTMENT" VARCHAR2(50 BYTE),'||wwv_flow.LF||
'	"REQUISITION_STATUS" VARCHAR2(50 BYTE),'||wwv_flow.LF||
'	"SO';
wwv_flow_imp.g_varchar2_table(30) := 'URCE" VARCHAR2(50 BYTE),'||wwv_flow.LF||
'	"CURRENT_STAGE" VARCHAR2(50 BYTE),'||wwv_flow.LF||
'	"APPLIED_DATE" DATE,'||wwv_flow.LF||
'	"SCREENING_DATE"';
wwv_flow_imp.g_varchar2_table(31) := ' DATE,'||wwv_flow.LF||
'	"INTERVIEW_DATE" DATE,'||wwv_flow.LF||
'	"OFFER_DATE" DATE,'||wwv_flow.LF||
'	"HIRED_DATE" DATE,'||wwv_flow.LF||
'	"REJECTED_DATE" DATE,'||wwv_flow.LF||
'	"DAYS';
wwv_flow_imp.g_varchar2_table(32) := '_IN_PIPELINE" NUMBER,'||wwv_flow.LF||
'	"AI_SCORE" NUMBER,'||wwv_flow.LF||
'	"INTERVIEW_SCORE" NUMBER,'||wwv_flow.LF||
'	"OFFER_STATUS" VARCHAR2(50 BYT';
wwv_flow_imp.g_varchar2_table(33) := 'E),'||wwv_flow.LF||
'	"OFFERED_SALARY" NUMBER,'||wwv_flow.LF||
'	"START_DATE" DATE,'||wwv_flow.LF||
'	"RECRUITER" VARCHAR2(50 BYTE),'||wwv_flow.LF||
'	"HIRING_MANAGER" ';
wwv_flow_imp.g_varchar2_table(34) := 'VARCHAR2(50 BYTE),'||wwv_flow.LF||
'	"LOCATION" VARCHAR2(50 BYTE),'||wwv_flow.LF||
'	"DIVERSITY_FLAG" BOOLEAN'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "TM';
wwv_flow_imp.g_varchar2_table(35) := 'S_DEPARTMENTS"'||wwv_flow.LF||
'   (	"DEPT_ID" NUMBER DEFAULT ON NULL to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXX';
wwv_flow_imp.g_varchar2_table(36) := 'XXXXXXXX'') NOT NULL ENABLE,'||wwv_flow.LF||
'	"NAME" VARCHAR2(100 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"MANAGER_ID" NUMBER,'||wwv_flow.LF||
'	"LOCA';
wwv_flow_imp.g_varchar2_table(37) := 'TION" VARCHAR2(150 CHAR),'||wwv_flow.LF||
'	"COLOR" VARCHAR2(30 CHAR),'||wwv_flow.LF||
'	"CREATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"CREATED_BY"';
wwv_flow_imp.g_varchar2_table(38) := ' VARCHAR2(255 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED_BY" VARCHAR2(255 CHA';
wwv_flow_imp.g_varchar2_table(39) := 'R) NOT NULL ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "TMS_EMPLOYEES"'||wwv_flow.LF||
'   (	"EMPLOYEE_ID" NUMBER DEFAULT ON NULL to';
wwv_flow_imp.g_varchar2_table(40) := '_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') NOT NULL ENABLE,'||wwv_flow.LF||
'	"CANDIDATE_ID" NUMBER,'||wwv_flow.LF||
'	"J';
wwv_flow_imp.g_varchar2_table(41) := 'OB_ID" NUMBER,'||wwv_flow.LF||
'	"DEPT_ID" NUMBER,'||wwv_flow.LF||
'	"FIRST_NAME" VARCHAR2(80 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"LAST_NAME" VARC';
wwv_flow_imp.g_varchar2_table(42) := 'HAR2(80 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"EMAIL" VARCHAR2(320 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"MANAGER_ID" NUMBER,'||wwv_flow.LF||
'	"';
wwv_flow_imp.g_varchar2_table(43) := 'SALARY" NUMBER,'||wwv_flow.LF||
'	"HIRE_DATE" DATE,'||wwv_flow.LF||
'	"STATUS" VARCHAR2(30 CHAR),'||wwv_flow.LF||
'	"PHOTO_BLOB" BLOB,'||wwv_flow.LF||
'	"CREATED" DATE ';
wwv_flow_imp.g_varchar2_table(44) := 'NOT NULL ENABLE,'||wwv_flow.LF||
'	"CREATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(45) := '	"UPDATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "TMS_HR_POLICY"'||wwv_flow.LF||
'   (	"POLICY_I';
wwv_flow_imp.g_varchar2_table(46) := 'D" NUMBER DEFAULT ON NULL to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') NOT NULL ENABLE,';
wwv_flow_imp.g_varchar2_table(47) := ''||wwv_flow.LF||
'	"CATEGORY" VARCHAR2(100 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"TITLE" VARCHAR2(200 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"CONT';
wwv_flow_imp.g_varchar2_table(48) := 'ENT" CLOB,'||wwv_flow.LF||
'	"CREATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"CREATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDA';
wwv_flow_imp.g_varchar2_table(49) := 'TED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"EMBEDDING_VECTOR" VEC';
wwv_flow_imp.g_varchar2_table(50) := 'TOR'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "TMS_INTERVIEW_STAGES"'||wwv_flow.LF||
'   (	"STAGE_ID" NUMBER DEFAULT ON NULL to_number(sys';
wwv_flow_imp.g_varchar2_table(51) := '_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') NOT NULL ENABLE,'||wwv_flow.LF||
'	"CANDIDATE_ID" NUMBER,'||wwv_flow.LF||
'	"REQ_ID" NUMB';
wwv_flow_imp.g_varchar2_table(52) := 'ER,'||wwv_flow.LF||
'	"STAGE_NAME" VARCHAR2(60 CHAR),'||wwv_flow.LF||
'	"INTERVIEWER_ID" NUMBER,'||wwv_flow.LF||
'	"SCHEDULED_DATE" TIMESTAMP (6),'||wwv_flow.LF||
'	"OU';
wwv_flow_imp.g_varchar2_table(53) := 'TCOME" VARCHAR2(30 CHAR),'||wwv_flow.LF||
'	"FEEDBACK_NOTES" CLOB,'||wwv_flow.LF||
'	"SCORE" NUMBER,'||wwv_flow.LF||
'	"CREATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(54) := '	"CREATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED_BY" VAR';
wwv_flow_imp.g_varchar2_table(55) := 'CHAR2(255 CHAR) NOT NULL ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "TMS_JOBS"'||wwv_flow.LF||
'   (	"JOB_ID" NUMBER DEFAULT ON NULL';
wwv_flow_imp.g_varchar2_table(56) := ' to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') NOT NULL ENABLE,'||wwv_flow.LF||
'	"DEPT_ID" NUMBER,'||wwv_flow.LF||
'	"TIT';
wwv_flow_imp.g_varchar2_table(57) := 'LE" VARCHAR2(150 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"MIN_SALARY" NUMBER,'||wwv_flow.LF||
'	"MAX_SALARY" NUMBER,'||wwv_flow.LF||
'	"CREATED" DATE ';
wwv_flow_imp.g_varchar2_table(58) := 'NOT NULL ENABLE,'||wwv_flow.LF||
'	"CREATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(59) := '	"UPDATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "TMS_JOB_REQUISITIONS"'||wwv_flow.LF||
'   (	"R';
wwv_flow_imp.g_varchar2_table(60) := 'EQ_ID" NUMBER DEFAULT ON NULL to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') NOT NULL ENA';
wwv_flow_imp.g_varchar2_table(61) := 'BLE,'||wwv_flow.LF||
'	"JOB_ID" NUMBER,'||wwv_flow.LF||
'	"DEPT_ID" NUMBER,'||wwv_flow.LF||
'	"REQUESTED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"APPR';
wwv_flow_imp.g_varchar2_table(62) := 'OVED_BY" VARCHAR2(255 CHAR),'||wwv_flow.LF||
'	"HEADCOUNT" NUMBER,'||wwv_flow.LF||
'	"STATUS" VARCHAR2(30 CHAR),'||wwv_flow.LF||
'	"OPEN_DATE" DATE,'||wwv_flow.LF||
'	"';
wwv_flow_imp.g_varchar2_table(63) := 'CLOSE_DATE" DATE,'||wwv_flow.LF||
'	"CREATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"CREATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE,';
wwv_flow_imp.g_varchar2_table(64) := ''||wwv_flow.LF||
'	"UPDATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TA';
wwv_flow_imp.g_varchar2_table(65) := 'BLE "TMS_LEAVE_BALANCES"'||wwv_flow.LF||
'   (	"BALANCE_ID" NUMBER DEFAULT ON NULL to_number(sys_guid(), ''XXXXXXXXXXX';
wwv_flow_imp.g_varchar2_table(66) := 'XXXXXXXXXXXXXXXXXXXXX'') NOT NULL ENABLE,'||wwv_flow.LF||
'	"EMPLOYEE_ID" NUMBER,'||wwv_flow.LF||
'	"LEAVE_TYPE_ID" NUMBER,'||wwv_flow.LF||
'	"YEAR" NUM';
wwv_flow_imp.g_varchar2_table(67) := 'BER,'||wwv_flow.LF||
'	"ACCRUED" NUMBER,'||wwv_flow.LF||
'	"USED" NUMBER,'||wwv_flow.LF||
'	"REMAINING" NUMBER,'||wwv_flow.LF||
'	"CREATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"CREA';
wwv_flow_imp.g_varchar2_table(68) := 'TED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED_BY" VARCHAR2(';
wwv_flow_imp.g_varchar2_table(69) := '255 CHAR) NOT NULL ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "TMS_LEAVE_REQUESTS"'||wwv_flow.LF||
'   (	"REQUEST_ID" NUMBER DEFAULT';
wwv_flow_imp.g_varchar2_table(70) := ' ON NULL to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') NOT NULL ENABLE,'||wwv_flow.LF||
'	"EMPLOYEE_ID" N';
wwv_flow_imp.g_varchar2_table(71) := 'UMBER,'||wwv_flow.LF||
'	"LEAVE_TYPE_ID" NUMBER,'||wwv_flow.LF||
'	"START_DATE" DATE,'||wwv_flow.LF||
'	"END_DATE" DATE,'||wwv_flow.LF||
'	"DAYS_REQUESTED" NUMBER,'||wwv_flow.LF||
'	"RE';
wwv_flow_imp.g_varchar2_table(72) := 'ASON" CLOB,'||wwv_flow.LF||
'	"STATUS" VARCHAR2(30 CHAR),'||wwv_flow.LF||
'	"APPROVER_ID" NUMBER,'||wwv_flow.LF||
'	"CREATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"C';
wwv_flow_imp.g_varchar2_table(73) := 'REATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED_BY" VARCHA';
wwv_flow_imp.g_varchar2_table(74) := 'R2(255 CHAR) NOT NULL ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "TMS_LEAVE_TYPES"'||wwv_flow.LF||
'   (	"LEAVE_TYPE_ID" NUMBER DEFA';
wwv_flow_imp.g_varchar2_table(75) := 'ULT ON NULL to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') NOT NULL ENABLE,'||wwv_flow.LF||
'	"NAME" VARCH';
wwv_flow_imp.g_varchar2_table(76) := 'AR2(100 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"MAX_DAYS_PER_YEAR" NUMBER,'||wwv_flow.LF||
'	"CREATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"CREAT';
wwv_flow_imp.g_varchar2_table(77) := 'ED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED_BY" VARCHAR2(2';
wwv_flow_imp.g_varchar2_table(78) := '55 CHAR) NOT NULL ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "TMS_OFFERS"'||wwv_flow.LF||
'   (	"OFFER_ID" NUMBER DEFAULT ON NULL to';
wwv_flow_imp.g_varchar2_table(79) := '_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') NOT NULL ENABLE,'||wwv_flow.LF||
'	"CANDIDATE_ID" NUMBER,'||wwv_flow.LF||
'	"R';
wwv_flow_imp.g_varchar2_table(80) := 'EQ_ID" NUMBER,'||wwv_flow.LF||
'	"OFFERED_SALARY" NUMBER,'||wwv_flow.LF||
'	"START_DATE" DATE,'||wwv_flow.LF||
'	"EXPIRY_DATE" DATE,'||wwv_flow.LF||
'	"STATUS" VARCHAR2';
wwv_flow_imp.g_varchar2_table(81) := '(30 CHAR),'||wwv_flow.LF||
'	"OFFER_LETTER_BLOB" BLOB,'||wwv_flow.LF||
'	"APPROVED_BY" VARCHAR2(255 CHAR),'||wwv_flow.LF||
'	"CREATED" DATE NOT NULL EN';
wwv_flow_imp.g_varchar2_table(82) := 'ABLE,'||wwv_flow.LF||
'	"CREATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED_B';
wwv_flow_imp.g_varchar2_table(83) := 'Y" VARCHAR2(255 CHAR) NOT NULL ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE TABLE "TMS_ONBOARDING_TASKS"'||wwv_flow.LF||
'   (	"TASK_ID" NUM';
wwv_flow_imp.g_varchar2_table(84) := 'BER DEFAULT ON NULL to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') NOT NULL ENABLE,'||wwv_flow.LF||
'	"EMP';
wwv_flow_imp.g_varchar2_table(85) := 'LOYEE_ID" NUMBER,'||wwv_flow.LF||
'	"TASK_NAME" VARCHAR2(200 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"ASSIGNED_TO" VARCHAR2(255 CHAR)';
wwv_flow_imp.g_varchar2_table(86) := ','||wwv_flow.LF||
'	"CATEGORY" VARCHAR2(80 CHAR),'||wwv_flow.LF||
'	"DUE_DATE" DATE,'||wwv_flow.LF||
'	"STATUS" VARCHAR2(30 CHAR),'||wwv_flow.LF||
'	"COMPLETED_DATE" DA';
wwv_flow_imp.g_varchar2_table(87) := 'TE,'||wwv_flow.LF||
'	"CREATED" DATE NOT NULL ENABLE,'||wwv_flow.LF||
'	"CREATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED" DA';
wwv_flow_imp.g_varchar2_table(88) := 'TE NOT NULL ENABLE,'||wwv_flow.LF||
'	"UPDATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'ALTER TABLE "TMS_AUDIT_';
wwv_flow_imp.g_varchar2_table(89) := 'LOG" ADD CONSTRAINT "TMS_AUDIT_LOG_PK" PRIMARY KEY ("LOG_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TM';
wwv_flow_imp.g_varchar2_table(90) := 'S_CANDIDATES" ADD CONSTRAINT "TMS_CANDIDATES_CANDIDATE_ID_PK" PRIMARY KEY ("CANDIDATE_ID")'||wwv_flow.LF||
'  USING I';
wwv_flow_imp.g_varchar2_table(91) := 'NDEX  ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_CANDIDATE_PIPELINE" ADD PRIMARY KEY ("ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE;'||wwv_flow.LF||
'ALT';
wwv_flow_imp.g_varchar2_table(92) := 'ER TABLE "TMS_DEPARTMENTS" ADD CONSTRAINT "TMS_DEPARTMENTS_DEPT_ID_PK" PRIMARY KEY ("DEPT_ID")'||wwv_flow.LF||
'  USI';
wwv_flow_imp.g_varchar2_table(93) := 'NG INDEX  ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_EMPLOYEES" ADD CONSTRAINT "TMS_EMPLOYEES_EMPLOYEE_ID_PK" PRIMARY ';
wwv_flow_imp.g_varchar2_table(94) := 'KEY ("EMPLOYEE_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_HR_POLICY" ADD CONSTRAINT "TMS_HR_POLICY';
wwv_flow_imp.g_varchar2_table(95) := '_POLICY_ID_PK" PRIMARY KEY ("POLICY_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_INTERVIEW_STAGES" A';
wwv_flow_imp.g_varchar2_table(96) := 'DD CONSTRAINT "TMS_INTERVIEW_STAGES_STAGE_ID_PK" PRIMARY KEY ("STAGE_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE;'||wwv_flow.LF||
'ALT';
wwv_flow_imp.g_varchar2_table(97) := 'ER TABLE "TMS_JOBS" ADD CONSTRAINT "TMS_JOBS_JOB_ID_PK" PRIMARY KEY ("JOB_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE';
wwv_flow_imp.g_varchar2_table(98) := ';'||wwv_flow.LF||
'ALTER TABLE "TMS_JOB_REQUISITIONS" ADD CONSTRAINT "TMS_JOB_REQUISITIONS_REQ_ID_PK" PRIMARY KEY ("R';
wwv_flow_imp.g_varchar2_table(99) := 'EQ_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_LEAVE_BALANCES" ADD CONSTRAINT "TMS_LEAVE_BALANCES_B';
wwv_flow_imp.g_varchar2_table(100) := 'ALANCE_ID_PK" PRIMARY KEY ("BALANCE_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_LEAVE_REQUESTS" ADD';
wwv_flow_imp.g_varchar2_table(101) := ' CONSTRAINT "TMS_LEAVE_REQUESTS_REQUEST_ID_PK" PRIMARY KEY ("REQUEST_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE;'||wwv_flow.LF||
'ALT';
wwv_flow_imp.g_varchar2_table(102) := 'ER TABLE "TMS_LEAVE_TYPES" ADD CONSTRAINT "TMS_LEAVE_TYPES_LEAVE_TYPE_ID_PK" PRIMARY KEY ("LEAVE_TYP';
wwv_flow_imp.g_varchar2_table(103) := 'E_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_OFFERS" ADD CONSTRAINT "TMS_OFFERS_OFFER_ID_PK" PRIMA';
wwv_flow_imp.g_varchar2_table(104) := 'RY KEY ("OFFER_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_ONBOARDING_TASKS" ADD CONSTRAINT "TMS_ON';
wwv_flow_imp.g_varchar2_table(105) := 'BOARDING_TASKS_TASK_ID_PK" PRIMARY KEY ("TASK_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_AUDIT_LOG';
wwv_flow_imp.g_varchar2_table(106) := '" ADD CONSTRAINT "TMS_AUDIT_LOG_OP_CK" CHECK (operation in (''INSERT'', ''UPDATE'', ''DELETE'')) ENABLE;'||wwv_flow.LF||
'A';
wwv_flow_imp.g_varchar2_table(107) := 'LTER TABLE "TMS_CANDIDATES" ADD CONSTRAINT "TMS_CANDIDATES_CURRENT_STAGE_CK" CHECK (current_stage in';
wwv_flow_imp.g_varchar2_table(108) := ' (''Applied'',''Screening'',''Interview'',''Offer'',''Hired'',''Rejected'')) ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_CANDIDATES';
wwv_flow_imp.g_varchar2_table(109) := '" ADD CONSTRAINT "TMS_CANDIDATES_DIVERSITY_FLAG_CK" CHECK (diversity_flag in (''Y'',''N'')) ENABLE;'||wwv_flow.LF||
'ALTE';
wwv_flow_imp.g_varchar2_table(110) := 'R TABLE "TMS_EMPLOYEES" ADD CONSTRAINT "TMS_EMPLOYEES_STATUS_CK" CHECK (status in (''Onboarding'',''Act';
wwv_flow_imp.g_varchar2_table(111) := 'ive'',''Inactive'',''Terminated'')) ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_INTERVIEW_STAGES" ADD CONSTRAINT "TMS_INTERV';
wwv_flow_imp.g_varchar2_table(112) := 'IEW_STAGES_STAGE_NAME_CK" CHECK (stage_name in (''Screening'',''Phone Screen'',''Technical Interview'',''Ma';
wwv_flow_imp.g_varchar2_table(113) := 'nager Interview'',''HR Interview'',''Offer Review'',''Final'')) ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_INTERVIEW_STAGES" ';
wwv_flow_imp.g_varchar2_table(114) := 'ADD CONSTRAINT "TMS_INTERVIEW_STAGES_OUTCOME_CK" CHECK (outcome in (''Scheduled'',''Proceed'',''Hold'',''Re';
wwv_flow_imp.g_varchar2_table(115) := 'jected'',''No Show'',''Completed'',''Cancelled'')) ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_JOB_REQUISITIONS" ADD CONSTRAIN';
wwv_flow_imp.g_varchar2_table(116) := 'T "TMS_JOB_REQUISITIONS_STATUS_CK" CHECK (status in (''Draft'',''Pending Approval'',''Open'',''Filled'',''Can';
wwv_flow_imp.g_varchar2_table(117) := 'celled'',''Closed'')) ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_LEAVE_REQUESTS" ADD CONSTRAINT "TMS_LEAVE_REQUESTS_STATU';
wwv_flow_imp.g_varchar2_table(118) := 'S_CK" CHECK (status in (''Draft'',''Submitted'',''Approved'',''Rejected'',''Cancelled'')) ENABLE;'||wwv_flow.LF||
'ALTER TABLE ';
wwv_flow_imp.g_varchar2_table(119) := '"TMS_OFFERS" ADD CONSTRAINT "TMS_OFFERS_STATUS_CK" CHECK (status in (''Draft'',''Pending Approval'',''Sen';
wwv_flow_imp.g_varchar2_table(120) := 't'',''Accepted'',''Rejected'',''Expired'',''Withdrawn'')) ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_ONBOARDING_TASKS" ADD CONS';
wwv_flow_imp.g_varchar2_table(121) := 'TRAINT "TMS_ONBOARDING_TASKS_STATUS_CK" CHECK (status in (''Not Started'',''In Progress'',''Completed'',''B';
wwv_flow_imp.g_varchar2_table(122) := 'locked'',''Cancelled'',''Overdue'')) ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_CANDIDATES" ADD CONSTRAINT "TMS_CANDIDATES_';
wwv_flow_imp.g_varchar2_table(123) := 'REQ_ID_FK" FOREIGN KEY ("REQ_ID")'||wwv_flow.LF||
'	  REFERENCES "TMS_JOB_REQUISITIONS" ("REQ_ID") ENABLE;'||wwv_flow.LF||
'ALTER TABL';
wwv_flow_imp.g_varchar2_table(124) := 'E "TMS_EMPLOYEES" ADD CONSTRAINT "TMS_EMPLOYEES_CANDIDATE_ID_FK" FOREIGN KEY ("CANDIDATE_ID")'||wwv_flow.LF||
'	  REF';
wwv_flow_imp.g_varchar2_table(125) := 'ERENCES "TMS_CANDIDATES" ("CANDIDATE_ID") ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_EMPLOYEES" ADD CONSTRAINT "TMS_EM';
wwv_flow_imp.g_varchar2_table(126) := 'PLOYEES_JOB_ID_FK" FOREIGN KEY ("JOB_ID")'||wwv_flow.LF||
'	  REFERENCES "TMS_JOBS" ("JOB_ID") ENABLE;'||wwv_flow.LF||
'ALTER TABLE "T';
wwv_flow_imp.g_varchar2_table(127) := 'MS_EMPLOYEES" ADD CONSTRAINT "TMS_EMPLOYEES_DEPT_ID_FK" FOREIGN KEY ("DEPT_ID")'||wwv_flow.LF||
'	  REFERENCES "TMS_D';
wwv_flow_imp.g_varchar2_table(128) := 'EPARTMENTS" ("DEPT_ID") ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_INTERVIEW_STAGES" ADD CONSTRAINT "TMS_INTERVIEW_STA';
wwv_flow_imp.g_varchar2_table(129) := 'GES_CANDIDATE_ID_FK" FOREIGN KEY ("CANDIDATE_ID")'||wwv_flow.LF||
'	  REFERENCES "TMS_CANDIDATES" ("CANDIDATE_ID") EN';
wwv_flow_imp.g_varchar2_table(130) := 'ABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_INTERVIEW_STAGES" ADD CONSTRAINT "TMS_INTERVIEW_STAGES_REQ_ID_FK" FOREIGN KEY';
wwv_flow_imp.g_varchar2_table(131) := ' ("REQ_ID")'||wwv_flow.LF||
'	  REFERENCES "TMS_JOB_REQUISITIONS" ("REQ_ID") ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_JOBS" ADD CONST';
wwv_flow_imp.g_varchar2_table(132) := 'RAINT "TMS_JOBS_DEPT_ID_FK" FOREIGN KEY ("DEPT_ID")'||wwv_flow.LF||
'	  REFERENCES "TMS_DEPARTMENTS" ("DEPT_ID") ENAB';
wwv_flow_imp.g_varchar2_table(133) := 'LE;'||wwv_flow.LF||
'ALTER TABLE "TMS_JOB_REQUISITIONS" ADD CONSTRAINT "TMS_JOB_REQUISITIONS_JOB_ID_FK" FOREIGN KEY (';
wwv_flow_imp.g_varchar2_table(134) := '"JOB_ID")'||wwv_flow.LF||
'	  REFERENCES "TMS_JOBS" ("JOB_ID") ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_JOB_REQUISITIONS" ADD CONSTRA';
wwv_flow_imp.g_varchar2_table(135) := 'INT "TMS_JOB_REQUISITIONS_DEPT_ID_FK" FOREIGN KEY ("DEPT_ID")'||wwv_flow.LF||
'	  REFERENCES "TMS_DEPARTMENTS" ("DEPT';
wwv_flow_imp.g_varchar2_table(136) := '_ID") ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_LEAVE_BALANCES" ADD CONSTRAINT "TMS_LEAVE_BALANCES_EMPLOYEE_ID_FK" FO';
wwv_flow_imp.g_varchar2_table(137) := 'REIGN KEY ("EMPLOYEE_ID")'||wwv_flow.LF||
'	  REFERENCES "TMS_EMPLOYEES" ("EMPLOYEE_ID") ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_LEA';
wwv_flow_imp.g_varchar2_table(138) := 'VE_BALANCES" ADD CONSTRAINT "TMS_LEAVE_BALANCES_LEAVE_TYPE_ID_FK" FOREIGN KEY ("LEAVE_TYPE_ID")'||wwv_flow.LF||
'	  R';
wwv_flow_imp.g_varchar2_table(139) := 'EFERENCES "TMS_LEAVE_TYPES" ("LEAVE_TYPE_ID") ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_LEAVE_REQUESTS" ADD CONSTRAIN';
wwv_flow_imp.g_varchar2_table(140) := 'T "TMS_LEAVE_REQUESTS_EMPLOYEE_ID_FK" FOREIGN KEY ("EMPLOYEE_ID")'||wwv_flow.LF||
'	  REFERENCES "TMS_EMPLOYEES" ("EM';
wwv_flow_imp.g_varchar2_table(141) := 'PLOYEE_ID") ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_LEAVE_REQUESTS" ADD CONSTRAINT "TMS_LEAVE_REQUESTS_LEAVE_TYPE_I';
wwv_flow_imp.g_varchar2_table(142) := 'D_FK" FOREIGN KEY ("LEAVE_TYPE_ID")'||wwv_flow.LF||
'	  REFERENCES "TMS_LEAVE_TYPES" ("LEAVE_TYPE_ID") ENABLE;'||wwv_flow.LF||
'ALTER ';
wwv_flow_imp.g_varchar2_table(143) := 'TABLE "TMS_OFFERS" ADD CONSTRAINT "TMS_OFFERS_CANDIDATE_ID_FK" FOREIGN KEY ("CANDIDATE_ID")'||wwv_flow.LF||
'	  REFER';
wwv_flow_imp.g_varchar2_table(144) := 'ENCES "TMS_CANDIDATES" ("CANDIDATE_ID") ENABLE;'||wwv_flow.LF||
'ALTER TABLE "TMS_OFFERS" ADD CONSTRAINT "TMS_OFFERS_';
wwv_flow_imp.g_varchar2_table(145) := 'REQ_ID_FK" FOREIGN KEY ("REQ_ID")'||wwv_flow.LF||
'	  REFERENCES "TMS_JOB_REQUISITIONS" ("REQ_ID") ENABLE;'||wwv_flow.LF||
'ALTER TABL';
wwv_flow_imp.g_varchar2_table(146) := 'E "TMS_ONBOARDING_TASKS" ADD CONSTRAINT "TMS_ONBOARDING_TASKS_EMPLOYEE_ID_FK" FOREIGN KEY ("EMPLOYEE';
wwv_flow_imp.g_varchar2_table(147) := '_ID")'||wwv_flow.LF||
'	  REFERENCES "TMS_EMPLOYEES" ("EMPLOYEE_ID") ENABLE;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE INDEX "TMS_CANDIDATES_I1" ON "TM';
wwv_flow_imp.g_varchar2_table(148) := 'S_CANDIDATES" ("REQ_ID");'||wwv_flow.LF||
'CREATE INDEX "TMS_EMPLOYEES_I1" ON "TMS_EMPLOYEES" ("CANDIDATE_ID");'||wwv_flow.LF||
'CREAT';
wwv_flow_imp.g_varchar2_table(149) := 'E INDEX "TMS_EMPLOYEES_I2" ON "TMS_EMPLOYEES" ("JOB_ID");'||wwv_flow.LF||
'CREATE INDEX "TMS_EMPLOYEES_I3" ON "TMS_EM';
wwv_flow_imp.g_varchar2_table(150) := 'PLOYEES" ("DEPT_ID");'||wwv_flow.LF||
'CREATE INDEX "TMS_INTERVIEW_STAGES_I1" ON "TMS_INTERVIEW_STAGES" ("CANDIDATE_I';
wwv_flow_imp.g_varchar2_table(151) := 'D");'||wwv_flow.LF||
'CREATE INDEX "TMS_INTERVIEW_STAGES_I2" ON "TMS_INTERVIEW_STAGES" ("REQ_ID");'||wwv_flow.LF||
'CREATE INDEX "TMS_';
wwv_flow_imp.g_varchar2_table(152) := 'JOBS_I1" ON "TMS_JOBS" ("DEPT_ID");'||wwv_flow.LF||
'CREATE INDEX "TMS_JOB_REQUISITIONS_I1" ON "TMS_JOB_REQUISITIONS"';
wwv_flow_imp.g_varchar2_table(153) := ' ("JOB_ID");'||wwv_flow.LF||
'CREATE INDEX "TMS_JOB_REQUISITIONS_I2" ON "TMS_JOB_REQUISITIONS" ("DEPT_ID");'||wwv_flow.LF||
'CREATE IN';
wwv_flow_imp.g_varchar2_table(154) := 'DEX "TMS_LEAVE_BALANCES_I1" ON "TMS_LEAVE_BALANCES" ("EMPLOYEE_ID");'||wwv_flow.LF||
'CREATE INDEX "TMS_LEAVE_BALANCE';
wwv_flow_imp.g_varchar2_table(155) := 'S_I2" ON "TMS_LEAVE_BALANCES" ("LEAVE_TYPE_ID");'||wwv_flow.LF||
'CREATE INDEX "TMS_LEAVE_REQUESTS_I1" ON "TMS_LEAVE_';
wwv_flow_imp.g_varchar2_table(156) := 'REQUESTS" ("EMPLOYEE_ID");'||wwv_flow.LF||
'CREATE INDEX "TMS_LEAVE_REQUESTS_I2" ON "TMS_LEAVE_REQUESTS" ("LEAVE_TYPE';
wwv_flow_imp.g_varchar2_table(157) := '_ID");'||wwv_flow.LF||
'CREATE INDEX "TMS_OFFERS_I1" ON "TMS_OFFERS" ("CANDIDATE_ID");'||wwv_flow.LF||
'CREATE INDEX "TMS_OFFERS_I2" O';
wwv_flow_imp.g_varchar2_table(158) := 'N "TMS_OFFERS" ("REQ_ID");'||wwv_flow.LF||
'CREATE INDEX "TMS_ONBOARDING_TASKS_I1" ON "TMS_ONBOARDING_TASKS" ("EMPLOY';
wwv_flow_imp.g_varchar2_table(159) := 'EE_ID");'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER "TMS_AUDIT_LOG_BIU"'||wwv_flow.LF||
'BEFORE INSERT OR UPDATE ON "TMS_AUDIT_LOG"'||wwv_flow.LF||
'F';
wwv_flow_imp.g_varchar2_table(160) := 'OR EACH ROW'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'    :new.updated_on := sysdate; '||wwv_flow.LF||
'    :new.updated_by := coalesce(sys_context(''APE';
wwv_flow_imp.g_varchar2_table(161) := 'X$SESSION'', ''APP_USER''), user); '||wwv_flow.LF||
'    if inserting then '||wwv_flow.LF||
'        :new.row_version := 1; '||wwv_flow.LF||
'        :new';
wwv_flow_imp.g_varchar2_table(162) := '.created_on  := :new.updated_on; '||wwv_flow.LF||
'        :new.created_by  := :new.updated_by; '||wwv_flow.LF||
'        :new.changed';
wwv_flow_imp.g_varchar2_table(163) := '_at  := :new.created_on; '||wwv_flow.LF||
'    elsif updating then '||wwv_flow.LF||
'        :new.row_version := nvl(:old.row_version,';
wwv_flow_imp.g_varchar2_table(164) := ' 0) + 1; '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
'end tms_audit_log_biu;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER "TMS_CANDIDATES_BIU"'||wwv_flow.LF||
'BEFO';
wwv_flow_imp.g_varchar2_table(165) := 'RE INSERT OR UPDATE ON "TMS_CANDIDATES"'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'    if inserting then '||wwv_flow.LF||
'        :new.crea';
wwv_flow_imp.g_varchar2_table(166) := 'ted := sysdate; '||wwv_flow.LF||
'        :new.created_by := user; '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
'    :new.updated := sysdate; '||wwv_flow.LF||
'    :n';
wwv_flow_imp.g_varchar2_table(167) := 'ew.updated_by := user; '||wwv_flow.LF||
'end tms_candidates_biu;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER "TMS_DEPARTMENTS_BIU"'||wwv_flow.LF||
'B';
wwv_flow_imp.g_varchar2_table(168) := 'EFORE INSERT OR UPDATE ON "TMS_DEPARTMENTS"'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'    if inserting then '||wwv_flow.LF||
'        :new.';
wwv_flow_imp.g_varchar2_table(169) := 'created := sysdate; '||wwv_flow.LF||
'        :new.created_by := user; '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
'    :new.updated := sysdate; '||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(170) := '  :new.updated_by := user; '||wwv_flow.LF||
'end tms_departments_biu;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER "TMS_EMPLOYEES_BIU';
wwv_flow_imp.g_varchar2_table(171) := '"'||wwv_flow.LF||
'BEFORE INSERT OR UPDATE ON "TMS_EMPLOYEES"'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'    if inserting then '||wwv_flow.LF||
'        :new';
wwv_flow_imp.g_varchar2_table(172) := '.created := sysdate; '||wwv_flow.LF||
'        :new.created_by := user; '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
'    :new.updated := sysdate; '||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(173) := '   :new.updated_by := user; '||wwv_flow.LF||
'end tms_employees_biu;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER "TMS_HR_POLICY_BIU"';
wwv_flow_imp.g_varchar2_table(174) := ''||wwv_flow.LF||
'BEFORE INSERT OR UPDATE ON "TMS_HR_POLICY"'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'    if inserting then '||wwv_flow.LF||
'        :new.';
wwv_flow_imp.g_varchar2_table(175) := 'created := sysdate; '||wwv_flow.LF||
'        :new.created_by := user; '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
'    :new.updated := sysdate; '||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(176) := '  :new.updated_by := user; '||wwv_flow.LF||
'end tms_hr_policy_biu;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER "TMS_INTERVIEW_STAGE';
wwv_flow_imp.g_varchar2_table(177) := 'S_BIU"'||wwv_flow.LF||
'BEFORE INSERT OR UPDATE ON "TMS_INTERVIEW_STAGES"'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'    if inserting then '||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(178) := '        :new.created := sysdate; '||wwv_flow.LF||
'        :new.created_by := user; '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
'    :new.updated :=';
wwv_flow_imp.g_varchar2_table(179) := ' sysdate; '||wwv_flow.LF||
'    :new.updated_by := user; '||wwv_flow.LF||
'end tms_interview_stages_biu;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER ';
wwv_flow_imp.g_varchar2_table(180) := '"TMS_JOBS_BIU"'||wwv_flow.LF||
'BEFORE INSERT OR UPDATE ON "TMS_JOBS"'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'    if inserting then '||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(181) := '    :new.created := sysdate; '||wwv_flow.LF||
'        :new.created_by := user; '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
'    :new.updated := sys';
wwv_flow_imp.g_varchar2_table(182) := 'date; '||wwv_flow.LF||
'    :new.updated_by := user; '||wwv_flow.LF||
'end tms_jobs_biu;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER "TMS_JOB_REQUISI';
wwv_flow_imp.g_varchar2_table(183) := 'TIONS_BIU"'||wwv_flow.LF||
'BEFORE INSERT OR UPDATE ON "TMS_JOB_REQUISITIONS"'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'    if inserting th';
wwv_flow_imp.g_varchar2_table(184) := 'en '||wwv_flow.LF||
'        :new.created := sysdate; '||wwv_flow.LF||
'        :new.created_by := user; '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
'    :new.update';
wwv_flow_imp.g_varchar2_table(185) := 'd := sysdate; '||wwv_flow.LF||
'    :new.updated_by := user; '||wwv_flow.LF||
'end tms_job_requisitions_biu;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIG';
wwv_flow_imp.g_varchar2_table(186) := 'GER "TMS_LEAVE_BALANCES_BIU"'||wwv_flow.LF||
'BEFORE INSERT OR UPDATE ON "TMS_LEAVE_BALANCES"'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(187) := ' if inserting then '||wwv_flow.LF||
'        :new.created := sysdate; '||wwv_flow.LF||
'        :new.created_by := user; '||wwv_flow.LF||
'    end if; ';
wwv_flow_imp.g_varchar2_table(188) := ''||wwv_flow.LF||
'    :new.updated := sysdate; '||wwv_flow.LF||
'    :new.updated_by := user; '||wwv_flow.LF||
'end tms_leave_balances_biu;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE O';
wwv_flow_imp.g_varchar2_table(189) := 'R REPLACE TRIGGER "TMS_LEAVE_REQUESTS_BIU"'||wwv_flow.LF||
'BEFORE INSERT OR UPDATE ON "TMS_LEAVE_REQUESTS"'||wwv_flow.LF||
'FOR EACH ';
wwv_flow_imp.g_varchar2_table(190) := 'ROW'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'    if inserting then '||wwv_flow.LF||
'        :new.created := sysdate; '||wwv_flow.LF||
'        :new.created_by := user;';
wwv_flow_imp.g_varchar2_table(191) := ' '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
'    :new.updated := sysdate; '||wwv_flow.LF||
'    :new.updated_by := user; '||wwv_flow.LF||
'end tms_leave_requests_bi';
wwv_flow_imp.g_varchar2_table(192) := 'u;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER "TMS_LEAVE_TYPES_BIU"'||wwv_flow.LF||
'BEFORE INSERT OR UPDATE ON "TMS_LEAVE_TYPES"'||wwv_flow.LF||
'F';
wwv_flow_imp.g_varchar2_table(193) := 'OR EACH ROW'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'    if inserting then '||wwv_flow.LF||
'        :new.created := sysdate; '||wwv_flow.LF||
'        :new.created_by ';
wwv_flow_imp.g_varchar2_table(194) := ':= user; '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
'    :new.updated := sysdate; '||wwv_flow.LF||
'    :new.updated_by := user; '||wwv_flow.LF||
'end tms_leave_typ';
wwv_flow_imp.g_varchar2_table(195) := 'es_biu;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER "TMS_OFFERS_BIU"'||wwv_flow.LF||
'BEFORE INSERT OR UPDATE ON "TMS_OFFERS"'||wwv_flow.LF||
'FOR EA';
wwv_flow_imp.g_varchar2_table(196) := 'CH ROW'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'    if inserting then '||wwv_flow.LF||
'        :new.created := sysdate; '||wwv_flow.LF||
'        :new.created_by := us';
wwv_flow_imp.g_varchar2_table(197) := 'er; '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
'    :new.updated := sysdate; '||wwv_flow.LF||
'    :new.updated_by := user; '||wwv_flow.LF||
'end tms_offers_biu;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(198) := ''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER "TMS_ONBOARDING_TASKS_BIU"'||wwv_flow.LF||
'BEFORE INSERT OR UPDATE ON "TMS_ONBOARDING_TAS';
wwv_flow_imp.g_varchar2_table(199) := 'KS"'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'begin '||wwv_flow.LF||
'    if inserting then '||wwv_flow.LF||
'        :new.created := sysdate; '||wwv_flow.LF||
'        :new.create';
wwv_flow_imp.g_varchar2_table(200) := 'd_by := user; '||wwv_flow.LF||
'    end if; '||wwv_flow.LF||
'    :new.updated := sysdate; '||wwv_flow.LF||
'    :new.updated_by := user; '||wwv_flow.LF||
'end tms_onbo';
wwv_flow_imp.g_varchar2_table(201) := 'arding_tasks_biu;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(4592544624267461232)
,p_install_id=>wwv_flow_imp.id(4592094104378764104)
,p_name=>'TMS_DDL'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013070102Z')
,p_updated_on=>wwv_flow_imp.dz('20261013070102Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/deployment/install/install_tms_dml
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '-- TMS supporting-object seed data for TAP, ESS, HR Analytics, and shared tables.'||wwv_flow.LF||
'-- Run this script';
wwv_flow_imp.g_varchar2_table(2) := ' once after TMS_SUPPORTING_OBJECTS_DDL.sql completes.'||wwv_flow.LF||
'-- The DDL recreates empty tables; rerun that ';
wwv_flow_imp.g_varchar2_table(3) := 'DDL before rerunning this script.'||wwv_flow.LF||
'SET DEFINE OFF'||wwv_flow.LF||
''||wwv_flow.LF||
'PROMPT Loading TMS supporting-object data...'||wwv_flow.LF||
''||wwv_flow.LF||
'INSE';
wwv_flow_imp.g_varchar2_table(4) := 'RT INTO tms_departments (name, location, color)'||wwv_flow.LF||
'VALUES (''Engineering'', ''Bengaluru - Tower A'', ''#2563';
wwv_flow_imp.g_varchar2_table(5) := 'EB'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_departments (name, location, color)'||wwv_flow.LF||
'VALUES (''Human Resources'', ''Bengaluru - T';
wwv_flow_imp.g_varchar2_table(6) := 'ower B'', ''#10B981'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_departments (name, location, color)'||wwv_flow.LF||
'VALUES (''Sales'', ''Mumbai -';
wwv_flow_imp.g_varchar2_table(7) := ' West Wing'', ''#F59E0B'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_departments (name, location, color)'||wwv_flow.LF||
'VALUES (''Finance'', ''Be';
wwv_flow_imp.g_varchar2_table(8) := 'ngaluru - Tower B'', ''#8B5CF6'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_departments (name, location, color)'||wwv_flow.LF||
'VALUES (''IT Ope';
wwv_flow_imp.g_varchar2_table(9) := 'rations'', ''Hyderabad - Cloud Hub'', ''#06B6D4'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_departments (name, location, color)'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(10) := 'VALUES (''Product'', ''Pune - Innovation Lab'', ''#EF4444'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_jobs (title, min_salary, ma';
wwv_flow_imp.g_varchar2_table(11) := 'x_salary, dept_id)'||wwv_flow.LF||
'VALUES (''Engineering Manager'', 115000, 145000, (SELECT dept_id FROM tms_departmen';
wwv_flow_imp.g_varchar2_table(12) := 'ts WHERE name = ''Engineering''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_jobs (title, min_salary, max_salary, dept_id)'||wwv_flow.LF||
'VALU';
wwv_flow_imp.g_varchar2_table(13) := 'ES (''Senior Developer'', 85000, 105000, (SELECT dept_id FROM tms_departments WHERE name = ''Engineerin';
wwv_flow_imp.g_varchar2_table(14) := 'g''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_jobs (title, min_salary, max_salary, dept_id)'||wwv_flow.LF||
'VALUES (''DevOps Engineer'', 7800';
wwv_flow_imp.g_varchar2_table(15) := '0, 98000, (SELECT dept_id FROM tms_departments WHERE name = ''IT Operations''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_jobs';
wwv_flow_imp.g_varchar2_table(16) := ' (title, min_salary, max_salary, dept_id)'||wwv_flow.LF||
'VALUES (''HR Business Partner'', 78000, 98000, (SELECT dept_';
wwv_flow_imp.g_varchar2_table(17) := 'id FROM tms_departments WHERE name = ''Human Resources''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_jobs (title, min_salary, ';
wwv_flow_imp.g_varchar2_table(18) := 'max_salary, dept_id)'||wwv_flow.LF||
'VALUES (''HR Generalist'', 52000, 68000, (SELECT dept_id FROM tms_departments WHE';
wwv_flow_imp.g_varchar2_table(19) := 'RE name = ''Human Resources''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_jobs (title, min_salary, max_salary, dept_id)'||wwv_flow.LF||
'VALUES';
wwv_flow_imp.g_varchar2_table(20) := ' (''Sales Account Executive'', 60000, 90000, (SELECT dept_id FROM tms_departments WHERE name = ''Sales''';
wwv_flow_imp.g_varchar2_table(21) := '));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_jobs (title, min_salary, max_salary, dept_id)'||wwv_flow.LF||
'VALUES (''Product Manager'', 90000,';
wwv_flow_imp.g_varchar2_table(22) := ' 125000, (SELECT dept_id FROM tms_departments WHERE name = ''Product''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_jobs (title';
wwv_flow_imp.g_varchar2_table(23) := ', min_salary, max_salary, dept_id)'||wwv_flow.LF||
'VALUES (''Payroll Specialist'', 50000, 65000, (SELECT dept_id FROM ';
wwv_flow_imp.g_varchar2_table(24) := 'tms_departments WHERE name = ''Finance''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_jobs (title, min_salary, max_salary, dept';
wwv_flow_imp.g_varchar2_table(25) := '_id)'||wwv_flow.LF||
'VALUES (''Data Analyst'', 65000, 85000, (SELECT dept_id FROM tms_departments WHERE name = ''Financ';
wwv_flow_imp.g_varchar2_table(26) := 'e''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_jobs (title, min_salary, max_salary, dept_id)'||wwv_flow.LF||
'VALUES (''UX Designer'', 70000, 9';
wwv_flow_imp.g_varchar2_table(27) := '5000, (SELECT dept_id FROM tms_departments WHERE name = ''Product''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_job_requisitio';
wwv_flow_imp.g_varchar2_table(28) := 'ns ('||wwv_flow.LF||
'  job_id, dept_id, requested_by, approved_by, headcount, status, open_date'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT';
wwv_flow_imp.g_varchar2_table(29) := ' job_id FROM tms_jobs WHERE title = ''Senior Developer''),'||wwv_flow.LF||
'  (SELECT dept_id FROM tms_departments WHER';
wwv_flow_imp.g_varchar2_table(30) := 'E name = ''Engineering''),'||wwv_flow.LF||
'  ''maya.patel@acme.example'','||wwv_flow.LF||
'  ''priya.nair@acme.example'','||wwv_flow.LF||
'  2,'||wwv_flow.LF||
'  ''Open'','||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(31) := 'DATE ''2026-06-01'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_job_requisitions ('||wwv_flow.LF||
'  job_id, dept_id, requested_by, approved_b';
wwv_flow_imp.g_varchar2_table(32) := 'y, headcount, status, open_date'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT job_id FROM tms_jobs WHERE title = ''DevOps Engi';
wwv_flow_imp.g_varchar2_table(33) := 'neer''),'||wwv_flow.LF||
'  (SELECT dept_id FROM tms_departments WHERE name = ''IT Operations''),'||wwv_flow.LF||
'  ''liam.chen@acme.exam';
wwv_flow_imp.g_varchar2_table(34) := 'ple'','||wwv_flow.LF||
'  ''priya.nair@acme.example'','||wwv_flow.LF||
'  1,'||wwv_flow.LF||
'  ''Open'','||wwv_flow.LF||
'  DATE ''2026-06-03'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_job_requis';
wwv_flow_imp.g_varchar2_table(35) := 'itions ('||wwv_flow.LF||
'  job_id, dept_id, requested_by, approved_by, headcount, status, open_date'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SE';
wwv_flow_imp.g_varchar2_table(36) := 'LECT job_id FROM tms_jobs WHERE title = ''HR Generalist''),'||wwv_flow.LF||
'  (SELECT dept_id FROM tms_departments WHE';
wwv_flow_imp.g_varchar2_table(37) := 'RE name = ''Human Resources''),'||wwv_flow.LF||
'  ''priya.nair@acme.example'','||wwv_flow.LF||
'  NULL,'||wwv_flow.LF||
'  1,'||wwv_flow.LF||
'  ''Pending Approval'','||wwv_flow.LF||
'  DATE';
wwv_flow_imp.g_varchar2_table(38) := ' ''2026-06-10'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_job_requisitions ('||wwv_flow.LF||
'  job_id, dept_id, requested_by, approved_by, h';
wwv_flow_imp.g_varchar2_table(39) := 'eadcount, status, open_date'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT job_id FROM tms_jobs WHERE title = ''Sales Account E';
wwv_flow_imp.g_varchar2_table(40) := 'xecutive''),'||wwv_flow.LF||
'  (SELECT dept_id FROM tms_departments WHERE name = ''Sales''),'||wwv_flow.LF||
'  ''sofia.garcia@acme.examp';
wwv_flow_imp.g_varchar2_table(41) := 'le'','||wwv_flow.LF||
'  ''priya.nair@acme.example'','||wwv_flow.LF||
'  3,'||wwv_flow.LF||
'  ''Open'','||wwv_flow.LF||
'  DATE ''2026-05-25'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_job_requisi';
wwv_flow_imp.g_varchar2_table(42) := 'tions ('||wwv_flow.LF||
'  job_id, dept_id, requested_by, approved_by, headcount, status, open_date, close_date'||wwv_flow.LF||
') VAL';
wwv_flow_imp.g_varchar2_table(43) := 'UES ('||wwv_flow.LF||
'  (SELECT job_id FROM tms_jobs WHERE title = ''Product Manager''),'||wwv_flow.LF||
'  (SELECT dept_id FROM tms_de';
wwv_flow_imp.g_varchar2_table(44) := 'partments WHERE name = ''Product''),'||wwv_flow.LF||
'  ''ethan.brooks@acme.example'','||wwv_flow.LF||
'  ''priya.nair@acme.example'','||wwv_flow.LF||
'  1,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(45) := '  ''Filled'','||wwv_flow.LF||
'  DATE ''2026-04-15'','||wwv_flow.LF||
'  DATE ''2026-06-15'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_job_requisitions ('||wwv_flow.LF||
'  job_id';
wwv_flow_imp.g_varchar2_table(46) := ', dept_id, requested_by, approved_by, headcount, status, open_date'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT job_id FROM ';
wwv_flow_imp.g_varchar2_table(47) := 'tms_jobs WHERE title = ''Data Analyst''),'||wwv_flow.LF||
'  (SELECT dept_id FROM tms_departments WHERE name = ''Finance';
wwv_flow_imp.g_varchar2_table(48) := '''),'||wwv_flow.LF||
'  ''noah.reed@acme.example'','||wwv_flow.LF||
'  NULL,'||wwv_flow.LF||
'  1,'||wwv_flow.LF||
'  ''Draft'','||wwv_flow.LF||
'  DATE ''2026-06-18'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_cand';
wwv_flow_imp.g_varchar2_table(49) := 'idates ('||wwv_flow.LF||
'  req_id, first_name, last_name, email, phone, source, current_stage,'||wwv_flow.LF||
'  applied_date, diver';
wwv_flow_imp.g_varchar2_table(50) := 'sity_flag, ai_score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.j';
wwv_flow_imp.g_varchar2_table(51) := 'ob_id = r.job_id WHERE j.title = ''Senior Developer'' AND r.requested_by = ''maya.patel@acme.example'' A';
wwv_flow_imp.g_varchar2_table(52) := 'ND r.open_date = DATE ''2026-06-01''),'||wwv_flow.LF||
'  ''Anika'', ''Rao'', ''anika.rao@example.com'', ''+91-98765-11001'', ''';
wwv_flow_imp.g_varchar2_table(53) := 'LinkedIn'','||wwv_flow.LF||
'  ''Offer'', DATE ''2026-06-04'', ''Y'', 8.70'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_candidates ('||wwv_flow.LF||
'  req_id, first_';
wwv_flow_imp.g_varchar2_table(54) := 'name, last_name, email, phone, source, current_stage,'||wwv_flow.LF||
'  applied_date, diversity_flag, ai_score'||wwv_flow.LF||
') VAL';
wwv_flow_imp.g_varchar2_table(55) := 'UES ('||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.';
wwv_flow_imp.g_varchar2_table(56) := 'title = ''Senior Developer'' AND r.requested_by = ''maya.patel@acme.example'' AND r.open_date = DATE ''20';
wwv_flow_imp.g_varchar2_table(57) := '26-06-01''),'||wwv_flow.LF||
'  ''Marcus'', ''Hill'', ''marcus.hill@example.com'', ''+1-415-555-0134'','||wwv_flow.LF||
'  ''Employee Referral'',';
wwv_flow_imp.g_varchar2_table(58) := ' ''Interview'', DATE ''2026-06-05'', ''N'', 7.90'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_candidates ('||wwv_flow.LF||
'  req_id, first_name, la';
wwv_flow_imp.g_varchar2_table(59) := 'st_name, email, phone, source, current_stage,'||wwv_flow.LF||
'  applied_date, diversity_flag, ai_score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(60) := '(SELECT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.title = ';
wwv_flow_imp.g_varchar2_table(61) := '''Senior Developer'' AND r.requested_by = ''maya.patel@acme.example'' AND r.open_date = DATE ''2026-06-01';
wwv_flow_imp.g_varchar2_table(62) := '''),'||wwv_flow.LF||
'  ''Nina'', ''Park'', ''nina.park@example.com'', ''+82-10-5555-0135'','||wwv_flow.LF||
'  ''Careers Site'', ''Screening'', DA';
wwv_flow_imp.g_varchar2_table(63) := 'TE ''2026-06-07'', ''Y'', 6.40'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_candidates ('||wwv_flow.LF||
'  req_id, first_name, last_name, email, ';
wwv_flow_imp.g_varchar2_table(64) := 'phone, source, current_stage,'||wwv_flow.LF||
'  applied_date, diversity_flag, ai_score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT r.req_id';
wwv_flow_imp.g_varchar2_table(65) := ' FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.title = ''Senior Develope';
wwv_flow_imp.g_varchar2_table(66) := 'r'' AND r.requested_by = ''maya.patel@acme.example'' AND r.open_date = DATE ''2026-06-01''),'||wwv_flow.LF||
'  ''Jacob'', ''';
wwv_flow_imp.g_varchar2_table(67) := 'Lee'', ''jacob.lee@example.com'', ''+1-206-555-0136'','||wwv_flow.LF||
'  ''Campus Event'', ''Rejected'', DATE ''2026-06-08'', ''';
wwv_flow_imp.g_varchar2_table(68) := 'N'', 4.20'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_candidates ('||wwv_flow.LF||
'  req_id, first_name, last_name, email, phone, source, cur';
wwv_flow_imp.g_varchar2_table(69) := 'rent_stage,'||wwv_flow.LF||
'  applied_date, diversity_flag, ai_score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requ';
wwv_flow_imp.g_varchar2_table(70) := 'isitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.title = ''DevOps Engineer'' AND r.requested_';
wwv_flow_imp.g_varchar2_table(71) := 'by = ''liam.chen@acme.example'' AND r.open_date = DATE ''2026-06-03''),'||wwv_flow.LF||
'  ''Tom'', ''Alvarez'', ''tom.alvarez';
wwv_flow_imp.g_varchar2_table(72) := '@example.com'', ''+1-512-555-0141'','||wwv_flow.LF||
'  ''Recruiter Sourced'', ''Interview'', DATE ''2026-06-06'', ''N'', 8.10'||wwv_flow.LF||
')';
wwv_flow_imp.g_varchar2_table(73) := ';'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_candidates ('||wwv_flow.LF||
'  req_id, first_name, last_name, email, phone, source, current_stage';
wwv_flow_imp.g_varchar2_table(74) := ','||wwv_flow.LF||
'  applied_date, diversity_flag, ai_score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requisitions r';
wwv_flow_imp.g_varchar2_table(75) := ' JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.title = ''DevOps Engineer'' AND r.requested_by = ''liam';
wwv_flow_imp.g_varchar2_table(76) := '.chen@acme.example'' AND r.open_date = DATE ''2026-06-03''),'||wwv_flow.LF||
'  ''Mei'', ''Wong'', ''mei.wong@example.com'', ''';
wwv_flow_imp.g_varchar2_table(77) := '+65-8123-0142'','||wwv_flow.LF||
'  ''Careers Site'', ''Applied'', DATE ''2026-06-09'', ''Y'', 6.90'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_candid';
wwv_flow_imp.g_varchar2_table(78) := 'ates ('||wwv_flow.LF||
'  req_id, first_name, last_name, email, phone, source, current_stage,'||wwv_flow.LF||
'  applied_date, diversi';
wwv_flow_imp.g_varchar2_table(79) := 'ty_flag, ai_score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job';
wwv_flow_imp.g_varchar2_table(80) := '_id = r.job_id WHERE j.title = ''HR Generalist'' AND r.requested_by = ''priya.nair@acme.example'' AND r.';
wwv_flow_imp.g_varchar2_table(81) := 'open_date = DATE ''2026-06-10''),'||wwv_flow.LF||
'  ''Grace'', ''Kim'', ''grace.kim@example.com'', ''+1-646-555-0143'','||wwv_flow.LF||
'  ''Lin';
wwv_flow_imp.g_varchar2_table(82) := 'kedIn'', ''Applied'', DATE ''2026-06-12'', ''Y'', 7.20'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_candidates ('||wwv_flow.LF||
'  req_id, first_nam';
wwv_flow_imp.g_varchar2_table(83) := 'e, last_name, email, phone, source, current_stage,'||wwv_flow.LF||
'  applied_date, diversity_flag, ai_score'||wwv_flow.LF||
') VALUES';
wwv_flow_imp.g_varchar2_table(84) := ' ('||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.tit';
wwv_flow_imp.g_varchar2_table(85) := 'le = ''Sales Account Executive'' AND r.requested_by = ''sofia.garcia@acme.example'' AND r.open_date = DA';
wwv_flow_imp.g_varchar2_table(86) := 'TE ''2026-05-25''),'||wwv_flow.LF||
'  ''Olivia'', ''Grant'', ''olivia.grant@example.com'', ''+44-7700-900141'','||wwv_flow.LF||
'  ''Agency'', ''O';
wwv_flow_imp.g_varchar2_table(87) := 'ffer'', DATE ''2026-05-29'', ''N'', 8.30'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_candidates ('||wwv_flow.LF||
'  req_id, first_name, last_name';
wwv_flow_imp.g_varchar2_table(88) := ', email, phone, source, current_stage,'||wwv_flow.LF||
'  applied_date, diversity_flag, ai_score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT';
wwv_flow_imp.g_varchar2_table(89) := ' r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.title = ''Sales ';
wwv_flow_imp.g_varchar2_table(90) := 'Account Executive'' AND r.requested_by = ''sofia.garcia@acme.example'' AND r.open_date = DATE ''2026-05-';
wwv_flow_imp.g_varchar2_table(91) := '25''),'||wwv_flow.LF||
'  ''Daniel'', ''Brown'', ''daniel.brown@example.com'', ''+1-312-555-0145'','||wwv_flow.LF||
'  ''Careers Site'', ''Screeni';
wwv_flow_imp.g_varchar2_table(92) := 'ng'', DATE ''2026-06-01'', ''N'', 6.80'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_candidates ('||wwv_flow.LF||
'  req_id, first_name, last_name, ';
wwv_flow_imp.g_varchar2_table(93) := 'email, phone, source, current_stage,'||wwv_flow.LF||
'  applied_date, diversity_flag, ai_score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT r';
wwv_flow_imp.g_varchar2_table(94) := '.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.title = ''Sales Ac';
wwv_flow_imp.g_varchar2_table(95) := 'count Executive'' AND r.requested_by = ''sofia.garcia@acme.example'' AND r.open_date = DATE ''2026-05-25';
wwv_flow_imp.g_varchar2_table(96) := '''),'||wwv_flow.LF||
'  ''Aisha'', ''Khan'', ''aisha.khan@example.com'', ''+971-50-555-0146'','||wwv_flow.LF||
'  ''Referral'', ''Applied'', DATE ''';
wwv_flow_imp.g_varchar2_table(97) := '2026-06-04'', ''Y'', 7.10'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_candidates ('||wwv_flow.LF||
'  req_id, first_name, last_name, email, phon';
wwv_flow_imp.g_varchar2_table(98) := 'e, source, current_stage,'||wwv_flow.LF||
'  applied_date, diversity_flag, ai_score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT r.req_id FRO';
wwv_flow_imp.g_varchar2_table(99) := 'M tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.title = ''Product Manager'' AN';
wwv_flow_imp.g_varchar2_table(100) := 'D r.requested_by = ''ethan.brooks@acme.example'' AND r.open_date = DATE ''2026-04-15''),'||wwv_flow.LF||
'  ''Ravi'', ''Meno';
wwv_flow_imp.g_varchar2_table(101) := 'n'', ''ravi.menon@example.com'', ''+91-98765-11451'','||wwv_flow.LF||
'  ''Executive Referral'', ''Hired'', DATE ''2026-04-22'',';
wwv_flow_imp.g_varchar2_table(102) := ' ''N'', 9.10'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_candidates ('||wwv_flow.LF||
'  req_id, first_name, last_name, email, phone, source, c';
wwv_flow_imp.g_varchar2_table(103) := 'urrent_stage,'||wwv_flow.LF||
'  applied_date, diversity_flag, ai_score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_re';
wwv_flow_imp.g_varchar2_table(104) := 'quisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.title = ''Product Manager'' AND r.requeste';
wwv_flow_imp.g_varchar2_table(105) := 'd_by = ''ethan.brooks@acme.example'' AND r.open_date = DATE ''2026-04-15''),'||wwv_flow.LF||
'  ''Elena'', ''Petrova'', ''elen';
wwv_flow_imp.g_varchar2_table(106) := 'a.petrova@example.com'', ''+49-30-555-0148'','||wwv_flow.LF||
'  ''LinkedIn'', ''Rejected'', DATE ''2026-04-25'', ''Y'', 5.10'||wwv_flow.LF||
');';
wwv_flow_imp.g_varchar2_table(107) := ''||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_employees ('||wwv_flow.LF||
'  first_name, last_name, email, job_id, dept_id, manager_id, salary, h';
wwv_flow_imp.g_varchar2_table(108) := 'ire_date, status'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  ''Maya'', ''Patel'', ''maya.patel@acme.example'','||wwv_flow.LF||
'  (SELECT job_id FROM tms_';
wwv_flow_imp.g_varchar2_table(109) := 'jobs WHERE title = ''Engineering Manager''),'||wwv_flow.LF||
'  (SELECT dept_id FROM tms_departments WHERE name = ''Engi';
wwv_flow_imp.g_varchar2_table(110) := 'neering''),'||wwv_flow.LF||
'  NULL, 132000, DATE ''2018-04-02'', ''Active'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_employees ('||wwv_flow.LF||
'  first_name,';
wwv_flow_imp.g_varchar2_table(111) := ' last_name, email, job_id, dept_id, manager_id, salary, hire_date, status'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  ''Liam'', ''Chen';
wwv_flow_imp.g_varchar2_table(112) := ''', ''liam.chen@acme.example'','||wwv_flow.LF||
'  (SELECT job_id FROM tms_jobs WHERE title = ''DevOps Engineer''),'||wwv_flow.LF||
'  (SEL';
wwv_flow_imp.g_varchar2_table(113) := 'ECT dept_id FROM tms_departments WHERE name = ''IT Operations''),'||wwv_flow.LF||
'  NULL, 98000, DATE ''2019-09-16'', ''A';
wwv_flow_imp.g_varchar2_table(114) := 'ctive'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_employees ('||wwv_flow.LF||
'  first_name, last_name, email, job_id, dept_id, manager_id, ';
wwv_flow_imp.g_varchar2_table(115) := 'salary, hire_date, status'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  ''Priya'', ''Nair'', ''priya.nair@acme.example'','||wwv_flow.LF||
'  (SELECT job_id ';
wwv_flow_imp.g_varchar2_table(116) := 'FROM tms_jobs WHERE title = ''HR Business Partner''),'||wwv_flow.LF||
'  (SELECT dept_id FROM tms_departments WHERE nam';
wwv_flow_imp.g_varchar2_table(117) := 'e = ''Human Resources''),'||wwv_flow.LF||
'  NULL, 94000, DATE ''2017-11-20'', ''Active'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_employees ('||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(118) := ' first_name, last_name, email, job_id, dept_id, manager_id, salary, hire_date, status'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  ''';
wwv_flow_imp.g_varchar2_table(119) := 'Sofia'', ''Garcia'', ''sofia.garcia@acme.example'','||wwv_flow.LF||
'  (SELECT job_id FROM tms_jobs WHERE title = ''Sales A';
wwv_flow_imp.g_varchar2_table(120) := 'ccount Executive''),'||wwv_flow.LF||
'  (SELECT dept_id FROM tms_departments WHERE name = ''Sales''),'||wwv_flow.LF||
'  NULL, 88000, DAT';
wwv_flow_imp.g_varchar2_table(121) := 'E ''2020-02-10'', ''Active'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_employees ('||wwv_flow.LF||
'  first_name, last_name, email, job_id, dep';
wwv_flow_imp.g_varchar2_table(122) := 't_id, manager_id, salary, hire_date, status'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  ''Noah'', ''Reed'', ''noah.reed@acme.example'','||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(123) := ' (SELECT job_id FROM tms_jobs WHERE title = ''Payroll Specialist''),'||wwv_flow.LF||
'  (SELECT dept_id FROM tms_depart';
wwv_flow_imp.g_varchar2_table(124) := 'ments WHERE name = ''Finance''),'||wwv_flow.LF||
'  NULL, 64000, DATE ''2021-05-03'', ''Active'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_employ';
wwv_flow_imp.g_varchar2_table(125) := 'ees ('||wwv_flow.LF||
'  first_name, last_name, email, job_id, dept_id, manager_id, salary, hire_date, status'||wwv_flow.LF||
') VALUE';
wwv_flow_imp.g_varchar2_table(126) := 'S ('||wwv_flow.LF||
'  ''Ethan'', ''Brooks'', ''ethan.brooks@acme.example'','||wwv_flow.LF||
'  (SELECT job_id FROM tms_jobs WHERE title = ''';
wwv_flow_imp.g_varchar2_table(127) := 'Product Manager''),'||wwv_flow.LF||
'  (SELECT dept_id FROM tms_departments WHERE name = ''Product''),'||wwv_flow.LF||
'  NULL, 120000, D';
wwv_flow_imp.g_varchar2_table(128) := 'ATE ''2018-08-27'', ''Active'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_employees ('||wwv_flow.LF||
'  candidate_id, first_name, last_name, em';
wwv_flow_imp.g_varchar2_table(129) := 'ail, job_id, dept_id, manager_id,'||wwv_flow.LF||
'  salary, hire_date, status'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT candidate_id FROM';
wwv_flow_imp.g_varchar2_table(130) := ' tms_candidates WHERE email = ''ravi.menon@example.com''),'||wwv_flow.LF||
'  ''Ravi'', ''Menon'', ''ravi.menon@acme.example';
wwv_flow_imp.g_varchar2_table(131) := ''','||wwv_flow.LF||
'  (SELECT job_id FROM tms_jobs WHERE title = ''Product Manager''),'||wwv_flow.LF||
'  (SELECT dept_id FROM tms_depar';
wwv_flow_imp.g_varchar2_table(132) := 'tments WHERE name = ''Product''),'||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE email = ''ethan.brooks';
wwv_flow_imp.g_varchar2_table(133) := '@acme.example''),'||wwv_flow.LF||
'  118000, DATE ''2026-06-24'', ''Onboarding'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_interview_stages ('||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(134) := 'candidate_id, req_id, stage_name, interviewer_id, scheduled_date, outcome,'||wwv_flow.LF||
'  feedback_notes, score'||wwv_flow.LF||
')';
wwv_flow_imp.g_varchar2_table(135) := ' VALUES ('||wwv_flow.LF||
'  (SELECT candidate_id FROM tms_candidates WHERE email = ''anika.rao@example.com''),'||wwv_flow.LF||
'  (SELE';
wwv_flow_imp.g_varchar2_table(136) := 'CT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.title = ''Seni';
wwv_flow_imp.g_varchar2_table(137) := 'or Developer'' AND r.requested_by = ''maya.patel@acme.example'' AND r.open_date = DATE ''2026-06-01''),'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(138) := ' ''Screening'','||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE email = ''priya.nair@acme.example''),'||wwv_flow.LF||
'  T';
wwv_flow_imp.g_varchar2_table(139) := 'O_TIMESTAMP(''2026-06-11 10:00'', ''YYYY-MM-DD HH24:MI''),'||wwv_flow.LF||
'  ''Proceed'','||wwv_flow.LF||
'  TO_CLOB(''Strong communication ';
wwv_flow_imp.g_varchar2_table(140) := 'and strong Java/Spring foundation. Move to technical panel.''),'||wwv_flow.LF||
'  4.4'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_interview_s';
wwv_flow_imp.g_varchar2_table(141) := 'tages ('||wwv_flow.LF||
'  candidate_id, req_id, stage_name, interviewer_id, scheduled_date, outcome,'||wwv_flow.LF||
'  feedback_note';
wwv_flow_imp.g_varchar2_table(142) := 's, score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT candidate_id FROM tms_candidates WHERE email = ''anika.rao@example.com''';
wwv_flow_imp.g_varchar2_table(143) := '),'||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.tit';
wwv_flow_imp.g_varchar2_table(144) := 'le = ''Senior Developer'' AND r.requested_by = ''maya.patel@acme.example'' AND r.open_date = DATE ''2026-';
wwv_flow_imp.g_varchar2_table(145) := '06-01''),'||wwv_flow.LF||
'  ''Technical Interview'','||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE email = ''maya.patel';
wwv_flow_imp.g_varchar2_table(146) := '@acme.example''),'||wwv_flow.LF||
'  TO_TIMESTAMP(''2026-06-18 14:30'', ''YYYY-MM-DD HH24:MI''),'||wwv_flow.LF||
'  ''Proceed'','||wwv_flow.LF||
'  TO_CLOB(''E';
wwv_flow_imp.g_varchar2_table(147) := 'xcellent backend design discussion with practical AWS experience.''),'||wwv_flow.LF||
'  4.8'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_inter';
wwv_flow_imp.g_varchar2_table(148) := 'view_stages ('||wwv_flow.LF||
'  candidate_id, req_id, stage_name, interviewer_id, scheduled_date, outcome,'||wwv_flow.LF||
'  feedbac';
wwv_flow_imp.g_varchar2_table(149) := 'k_notes, score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT candidate_id FROM tms_candidates WHERE email = ''marcus.hill@exam';
wwv_flow_imp.g_varchar2_table(150) := 'ple.com''),'||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHE';
wwv_flow_imp.g_varchar2_table(151) := 'RE j.title = ''Senior Developer'' AND r.requested_by = ''maya.patel@acme.example'' AND r.open_date = DAT';
wwv_flow_imp.g_varchar2_table(152) := 'E ''2026-06-01''),'||wwv_flow.LF||
'  ''Technical Interview'','||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE email = ''ma';
wwv_flow_imp.g_varchar2_table(153) := 'ya.patel@acme.example''),'||wwv_flow.LF||
'  TO_TIMESTAMP(''2026-06-24 11:00'', ''YYYY-MM-DD HH24:MI''),'||wwv_flow.LF||
'  ''Scheduled'','||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(154) := 'TO_CLOB(''Panel booked; resume shows strong API experience.''),'||wwv_flow.LF||
'  NULL'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_interview_s';
wwv_flow_imp.g_varchar2_table(155) := 'tages ('||wwv_flow.LF||
'  candidate_id, req_id, stage_name, interviewer_id, scheduled_date, outcome,'||wwv_flow.LF||
'  feedback_note';
wwv_flow_imp.g_varchar2_table(156) := 's, score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT candidate_id FROM tms_candidates WHERE email = ''tom.alvarez@example.co';
wwv_flow_imp.g_varchar2_table(157) := 'm''),'||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.t';
wwv_flow_imp.g_varchar2_table(158) := 'itle = ''DevOps Engineer'' AND r.requested_by = ''liam.chen@acme.example'' AND r.open_date = DATE ''2026-';
wwv_flow_imp.g_varchar2_table(159) := '06-03''),'||wwv_flow.LF||
'  ''Technical Interview'','||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE email = ''liam.chen@';
wwv_flow_imp.g_varchar2_table(160) := 'acme.example''),'||wwv_flow.LF||
'  TO_TIMESTAMP(''2026-06-25 15:00'', ''YYYY-MM-DD HH24:MI''),'||wwv_flow.LF||
'  ''Scheduled'','||wwv_flow.LF||
'  TO_CLOB(''';
wwv_flow_imp.g_varchar2_table(161) := 'Focus areas: Kubernetes operations, Terraform modules, incident response.''),'||wwv_flow.LF||
'  NULL'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO ';
wwv_flow_imp.g_varchar2_table(162) := 'tms_interview_stages ('||wwv_flow.LF||
'  candidate_id, req_id, stage_name, interviewer_id, scheduled_date, outcome,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(163) := '  feedback_notes, score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT candidate_id FROM tms_candidates WHERE email = ''olivia.';
wwv_flow_imp.g_varchar2_table(164) := 'grant@example.com''),'||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.';
wwv_flow_imp.g_varchar2_table(165) := 'job_id WHERE j.title = ''Sales Account Executive'' AND r.requested_by = ''sofia.garcia@acme.example'' AN';
wwv_flow_imp.g_varchar2_table(166) := 'D r.open_date = DATE ''2026-05-25''),'||wwv_flow.LF||
'  ''Manager Interview'','||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees ';
wwv_flow_imp.g_varchar2_table(167) := 'WHERE email = ''sofia.garcia@acme.example''),'||wwv_flow.LF||
'  TO_TIMESTAMP(''2026-06-07 12:00'', ''YYYY-MM-DD HH24:MI'')';
wwv_flow_imp.g_varchar2_table(168) := ','||wwv_flow.LF||
'  ''Proceed'','||wwv_flow.LF||
'  TO_CLOB(''Clear enterprise selling examples; strong territory planning.''),'||wwv_flow.LF||
'  4.5'||wwv_flow.LF||
');'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(169) := ''||wwv_flow.LF||
'INSERT INTO tms_interview_stages ('||wwv_flow.LF||
'  candidate_id, req_id, stage_name, interviewer_id, scheduled_da';
wwv_flow_imp.g_varchar2_table(170) := 'te, outcome,'||wwv_flow.LF||
'  feedback_notes, score'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT candidate_id FROM tms_candidates WHERE ema';
wwv_flow_imp.g_varchar2_table(171) := 'il = ''ravi.menon@example.com''),'||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.';
wwv_flow_imp.g_varchar2_table(172) := 'job_id = r.job_id WHERE j.title = ''Product Manager'' AND r.requested_by = ''ethan.brooks@acme.example''';
wwv_flow_imp.g_varchar2_table(173) := ' AND r.open_date = DATE ''2026-04-15''),'||wwv_flow.LF||
'  ''Final'','||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE ema';
wwv_flow_imp.g_varchar2_table(174) := 'il = ''ethan.brooks@acme.example''),'||wwv_flow.LF||
'  TO_TIMESTAMP(''2026-05-16 16:00'', ''YYYY-MM-DD HH24:MI''),'||wwv_flow.LF||
'  ''Comp';
wwv_flow_imp.g_varchar2_table(175) := 'leted'','||wwv_flow.LF||
'  TO_CLOB(''Strong roadmap judgment and stakeholder management. Recommended hire.''),'||wwv_flow.LF||
'  4.9'||wwv_flow.LF||
');';
wwv_flow_imp.g_varchar2_table(176) := ''||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_offers ('||wwv_flow.LF||
'  candidate_id, req_id, offered_salary, start_date, expiry_date, status, ';
wwv_flow_imp.g_varchar2_table(177) := 'approved_by'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT candidate_id FROM tms_candidates WHERE email = ''anika.rao@example.c';
wwv_flow_imp.g_varchar2_table(178) := 'om''),'||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.';
wwv_flow_imp.g_varchar2_table(179) := 'title = ''Senior Developer'' AND r.requested_by = ''maya.patel@acme.example'' AND r.open_date = DATE ''20';
wwv_flow_imp.g_varchar2_table(180) := '26-06-01''),'||wwv_flow.LF||
'  95000, DATE ''2026-07-15'', DATE ''2026-07-02'', ''Sent'', ''maya.patel@acme.example'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INS';
wwv_flow_imp.g_varchar2_table(181) := 'ERT INTO tms_offers ('||wwv_flow.LF||
'  candidate_id, req_id, offered_salary, start_date, expiry_date, status, appro';
wwv_flow_imp.g_varchar2_table(182) := 'ved_by'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT candidate_id FROM tms_candidates WHERE email = ''olivia.grant@example.com';
wwv_flow_imp.g_varchar2_table(183) := '''),'||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = r.job_id WHERE j.ti';
wwv_flow_imp.g_varchar2_table(184) := 'tle = ''Sales Account Executive'' AND r.requested_by = ''sofia.garcia@acme.example'' AND r.open_date = D';
wwv_flow_imp.g_varchar2_table(185) := 'ATE ''2026-05-25''),'||wwv_flow.LF||
'  82000, DATE ''2026-07-22'', DATE ''2026-07-05'', ''Pending Approval'', ''sofia.garcia@';
wwv_flow_imp.g_varchar2_table(186) := 'acme.example'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_offers ('||wwv_flow.LF||
'  candidate_id, req_id, offered_salary, start_date, expir';
wwv_flow_imp.g_varchar2_table(187) := 'y_date, status, approved_by'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT candidate_id FROM tms_candidates WHERE email = ''rav';
wwv_flow_imp.g_varchar2_table(188) := 'i.menon@example.com''),'||wwv_flow.LF||
'  (SELECT r.req_id FROM tms_job_requisitions r JOIN tms_jobs j ON j.job_id = ';
wwv_flow_imp.g_varchar2_table(189) := 'r.job_id WHERE j.title = ''Product Manager'' AND r.requested_by = ''ethan.brooks@acme.example'' AND r.op';
wwv_flow_imp.g_varchar2_table(190) := 'en_date = DATE ''2026-04-15''),'||wwv_flow.LF||
'  118000, DATE ''2026-06-24'', DATE ''2026-06-10'', ''Accepted'', ''ethan.bro';
wwv_flow_imp.g_varchar2_table(191) := 'oks@acme.example'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_onboarding_tasks ('||wwv_flow.LF||
'  employee_id, task_name, assigned_to, cate';
wwv_flow_imp.g_varchar2_table(192) := 'gory, due_date, status'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE email = ''ravi.menon';
wwv_flow_imp.g_varchar2_table(193) := '@acme.example''),'||wwv_flow.LF||
'  ''IT Setup'', ''liam.chen@acme.example'', ''IT'', DATE ''2026-06-28'', ''In Progress'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(194) := 'INSERT INTO tms_onboarding_tasks ('||wwv_flow.LF||
'  employee_id, task_name, assigned_to, category, due_date, status';
wwv_flow_imp.g_varchar2_table(195) := ', completed_date'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE email = ''ravi.menon@acme.';
wwv_flow_imp.g_varchar2_table(196) := 'example''),'||wwv_flow.LF||
'  ''HR Documents'', ''priya.nair@acme.example'', ''HR'', DATE ''2026-06-27'','||wwv_flow.LF||
'  ''Completed'', DATE';
wwv_flow_imp.g_varchar2_table(197) := ' ''2026-06-26'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_onboarding_tasks ('||wwv_flow.LF||
'  employee_id, task_name, assigned_to, category';
wwv_flow_imp.g_varchar2_table(198) := ', due_date, status'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE email = ''ravi.menon@acm';
wwv_flow_imp.g_varchar2_table(199) := 'e.example''),'||wwv_flow.LF||
'  ''Department Orientation'', ''ethan.brooks@acme.example'', ''Department'','||wwv_flow.LF||
'  DATE ''2026-06-';
wwv_flow_imp.g_varchar2_table(200) := '30'', ''Not Started'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_onboarding_tasks ('||wwv_flow.LF||
'  employee_id, task_name, assigned_to, cat';
wwv_flow_imp.g_varchar2_table(201) := 'egory, due_date, status'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE email = ''ravi.meno';
wwv_flow_imp.g_varchar2_table(202) := 'n@acme.example''),'||wwv_flow.LF||
'  ''Payroll Setup'', ''noah.reed@acme.example'', ''Payroll'','||wwv_flow.LF||
'  DATE ''2026-06-29'', ''In P';
wwv_flow_imp.g_varchar2_table(203) := 'rogress'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_onboarding_tasks ('||wwv_flow.LF||
'  employee_id, task_name, assigned_to, category, due';
wwv_flow_imp.g_varchar2_table(204) := '_date, status'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE email = ''ravi.menon@acme.exa';
wwv_flow_imp.g_varchar2_table(205) := 'mple''),'||wwv_flow.LF||
'  ''Security Awareness Training'', ''liam.chen@acme.example'', ''Compliance'','||wwv_flow.LF||
'  DATE ''2026-07-03''';
wwv_flow_imp.g_varchar2_table(206) := ', ''Not Started'''||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_types (name, max_days_per_year)'||wwv_flow.LF||
'VALUES (''Annual Leave'', 25';
wwv_flow_imp.g_varchar2_table(207) := ');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_types (name, max_days_per_year)'||wwv_flow.LF||
'VALUES (''Sick Leave'', 10);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tm';
wwv_flow_imp.g_varchar2_table(208) := 's_leave_types (name, max_days_per_year)'||wwv_flow.LF||
'VALUES (''Personal Leave'', 5);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_types (';
wwv_flow_imp.g_varchar2_table(209) := 'name, max_days_per_year)'||wwv_flow.LF||
'VALUES (''Parental Leave'', 60);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_types (name, max_days';
wwv_flow_imp.g_varchar2_table(210) := '_per_year)'||wwv_flow.LF||
'VALUES (''Bereavement Leave'', 5);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_balances (employee_id, leave_type';
wwv_flow_imp.g_varchar2_table(211) := '_id, year, accrued, used, remaining)'||wwv_flow.LF||
'VALUES ((SELECT employee_id FROM tms_employees WHERE email = ''m';
wwv_flow_imp.g_varchar2_table(212) := 'aya.patel@acme.example''), (SELECT leave_type_id FROM tms_leave_types WHERE name = ''Annual Leave''), 2';
wwv_flow_imp.g_varchar2_table(213) := '026, 25, 5, 20);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_balances (employee_id, leave_type_id, year, accrued, used, r';
wwv_flow_imp.g_varchar2_table(214) := 'emaining)'||wwv_flow.LF||
'VALUES ((SELECT employee_id FROM tms_employees WHERE email = ''maya.patel@acme.example''), (';
wwv_flow_imp.g_varchar2_table(215) := 'SELECT leave_type_id FROM tms_leave_types WHERE name = ''Sick Leave''), 2026, 10, 1, 9);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO ';
wwv_flow_imp.g_varchar2_table(216) := 'tms_leave_balances (employee_id, leave_type_id, year, accrued, used, remaining)'||wwv_flow.LF||
'VALUES ((SELECT empl';
wwv_flow_imp.g_varchar2_table(217) := 'oyee_id FROM tms_employees WHERE email = ''liam.chen@acme.example''), (SELECT leave_type_id FROM tms_l';
wwv_flow_imp.g_varchar2_table(218) := 'eave_types WHERE name = ''Annual Leave''), 2026, 25, 2, 23);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_balances (employee';
wwv_flow_imp.g_varchar2_table(219) := '_id, leave_type_id, year, accrued, used, remaining)'||wwv_flow.LF||
'VALUES ((SELECT employee_id FROM tms_employees W';
wwv_flow_imp.g_varchar2_table(220) := 'HERE email = ''priya.nair@acme.example''), (SELECT leave_type_id FROM tms_leave_types WHERE name = ''An';
wwv_flow_imp.g_varchar2_table(221) := 'nual Leave''), 2026, 25, 7, 18);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_balances (employee_id, leave_type_id, year, a';
wwv_flow_imp.g_varchar2_table(222) := 'ccrued, used, remaining)'||wwv_flow.LF||
'VALUES ((SELECT employee_id FROM tms_employees WHERE email = ''sofia.garcia@';
wwv_flow_imp.g_varchar2_table(223) := 'acme.example''), (SELECT leave_type_id FROM tms_leave_types WHERE name = ''Annual Leave''), 2026, 25, 4';
wwv_flow_imp.g_varchar2_table(224) := ', 21);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_balances (employee_id, leave_type_id, year, accrued, used, remaining)'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(225) := 'VALUES ((SELECT employee_id FROM tms_employees WHERE email = ''sofia.garcia@acme.example''), (SELECT l';
wwv_flow_imp.g_varchar2_table(226) := 'eave_type_id FROM tms_leave_types WHERE name = ''Sick Leave''), 2026, 10, 2, 8);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leav';
wwv_flow_imp.g_varchar2_table(227) := 'e_balances (employee_id, leave_type_id, year, accrued, used, remaining)'||wwv_flow.LF||
'VALUES ((SELECT employee_id ';
wwv_flow_imp.g_varchar2_table(228) := 'FROM tms_employees WHERE email = ''noah.reed@acme.example''), (SELECT leave_type_id FROM tms_leave_typ';
wwv_flow_imp.g_varchar2_table(229) := 'es WHERE name = ''Annual Leave''), 2026, 25, 6, 19);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_balances (employee_id, lea';
wwv_flow_imp.g_varchar2_table(230) := 've_type_id, year, accrued, used, remaining)'||wwv_flow.LF||
'VALUES ((SELECT employee_id FROM tms_employees WHERE ema';
wwv_flow_imp.g_varchar2_table(231) := 'il = ''ethan.brooks@acme.example''), (SELECT leave_type_id FROM tms_leave_types WHERE name = ''Annual L';
wwv_flow_imp.g_varchar2_table(232) := 'eave''), 2026, 25, 3, 22);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_balances (employee_id, leave_type_id, year, accrued';
wwv_flow_imp.g_varchar2_table(233) := ', used, remaining)'||wwv_flow.LF||
'VALUES ((SELECT employee_id FROM tms_employees WHERE email = ''ravi.menon@acme.exa';
wwv_flow_imp.g_varchar2_table(234) := 'mple''), (SELECT leave_type_id FROM tms_leave_types WHERE name = ''Annual Leave''), 2026, 25, 0, 25);'||wwv_flow.LF||
''||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(235) := 'INSERT INTO tms_leave_balances (employee_id, leave_type_id, year, accrued, used, remaining)'||wwv_flow.LF||
'VALUES (';
wwv_flow_imp.g_varchar2_table(236) := '(SELECT employee_id FROM tms_employees WHERE email = ''ravi.menon@acme.example''), (SELECT leave_type_';
wwv_flow_imp.g_varchar2_table(237) := 'id FROM tms_leave_types WHERE name = ''Sick Leave''), 2026, 10, 0, 10);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_request';
wwv_flow_imp.g_varchar2_table(238) := 's ('||wwv_flow.LF||
'  employee_id, leave_type_id, start_date, end_date, days_requested, reason, status, approver_id'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(239) := ') VALUES ('||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE email = ''maya.patel@acme.example''),'||wwv_flow.LF||
'  (SEL';
wwv_flow_imp.g_varchar2_table(240) := 'ECT leave_type_id FROM tms_leave_types WHERE name = ''Annual Leave''),'||wwv_flow.LF||
'  DATE ''2026-07-08'', DATE ''2026';
wwv_flow_imp.g_varchar2_table(241) := '-07-12'', 5,'||wwv_flow.LF||
'  TO_CLOB(''Family trip booked after sprint planning.''),'||wwv_flow.LF||
'  ''Approved'','||wwv_flow.LF||
'  (SELECT employee';
wwv_flow_imp.g_varchar2_table(242) := '_id FROM tms_employees WHERE email = ''priya.nair@acme.example'')'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_requests (';
wwv_flow_imp.g_varchar2_table(243) := ''||wwv_flow.LF||
'  employee_id, leave_type_id, start_date, end_date, days_requested, reason, status, approver_id'||wwv_flow.LF||
') V';
wwv_flow_imp.g_varchar2_table(244) := 'ALUES ('||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE email = ''sofia.garcia@acme.example''),'||wwv_flow.LF||
'  (SELE';
wwv_flow_imp.g_varchar2_table(245) := 'CT leave_type_id FROM tms_leave_types WHERE name = ''Sick Leave''),'||wwv_flow.LF||
'  DATE ''2026-06-20'', DATE ''2026-06';
wwv_flow_imp.g_varchar2_table(246) := '-21'', 2,'||wwv_flow.LF||
'  TO_CLOB(''Fever and recovery time.''),'||wwv_flow.LF||
'  ''Approved'','||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employe';
wwv_flow_imp.g_varchar2_table(247) := 'es WHERE email = ''priya.nair@acme.example'')'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_requests ('||wwv_flow.LF||
'  employee_id, leav';
wwv_flow_imp.g_varchar2_table(248) := 'e_type_id, start_date, end_date, days_requested, reason, status, approver_id'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT em';
wwv_flow_imp.g_varchar2_table(249) := 'ployee_id FROM tms_employees WHERE email = ''ravi.menon@acme.example''),'||wwv_flow.LF||
'  (SELECT leave_type_id FROM ';
wwv_flow_imp.g_varchar2_table(250) := 'tms_leave_types WHERE name = ''Annual Leave''),'||wwv_flow.LF||
'  DATE ''2026-08-12'', DATE ''2026-08-14'', 3,'||wwv_flow.LF||
'  TO_CLOB(''';
wwv_flow_imp.g_varchar2_table(251) := 'Planned travel after onboarding activities are complete.''),'||wwv_flow.LF||
'  ''Submitted'','||wwv_flow.LF||
'  (SELECT employee_id FRO';
wwv_flow_imp.g_varchar2_table(252) := 'M tms_employees WHERE email = ''ethan.brooks@acme.example'')'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_requests ('||wwv_flow.LF||
'  em';
wwv_flow_imp.g_varchar2_table(253) := 'ployee_id, leave_type_id, start_date, end_date, days_requested, reason, status, approver_id'||wwv_flow.LF||
') VALUES';
wwv_flow_imp.g_varchar2_table(254) := ' ('||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHERE email = ''noah.reed@acme.example''),'||wwv_flow.LF||
'  (SELECT leave';
wwv_flow_imp.g_varchar2_table(255) := '_type_id FROM tms_leave_types WHERE name = ''Personal Leave''),'||wwv_flow.LF||
'  DATE ''2026-07-03'', DATE ''2026-07-03''';
wwv_flow_imp.g_varchar2_table(256) := ', 1,'||wwv_flow.LF||
'  TO_CLOB(''Personal appointment.''),'||wwv_flow.LF||
'  ''Rejected'','||wwv_flow.LF||
'  (SELECT employee_id FROM tms_employees WHER';
wwv_flow_imp.g_varchar2_table(257) := 'E email = ''priya.nair@acme.example'')'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_leave_requests ('||wwv_flow.LF||
'  employee_id, leave_type_';
wwv_flow_imp.g_varchar2_table(258) := 'id, start_date, end_date, days_requested, reason, status, approver_id'||wwv_flow.LF||
') VALUES ('||wwv_flow.LF||
'  (SELECT employee_';
wwv_flow_imp.g_varchar2_table(259) := 'id FROM tms_employees WHERE email = ''liam.chen@acme.example''),'||wwv_flow.LF||
'  (SELECT leave_type_id FROM tms_leav';
wwv_flow_imp.g_varchar2_table(260) := 'e_types WHERE name = ''Annual Leave''),'||wwv_flow.LF||
'  DATE ''2026-09-01'', DATE ''2026-09-05'', 5,'||wwv_flow.LF||
'  TO_CLOB(''Tentativ';
wwv_flow_imp.g_varchar2_table(261) := 'e vacation plan pending release freeze confirmation.''),'||wwv_flow.LF||
'  ''Draft'','||wwv_flow.LF||
'  NULL'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_hr_pol';
wwv_flow_imp.g_varchar2_table(262) := 'icy (category, title, content)'||wwv_flow.LF||
'VALUES (''Leave'', ''Annual Leave Policy'', TO_CLOB(''Full-time employees ';
wwv_flow_imp.g_varchar2_table(263) := 'receive 25 days of annual leave per calendar year. Leave should be requested at least two weeks in a';
wwv_flow_imp.g_varchar2_table(264) := 'dvance and approved by the reporting manager. Unused annual leave may be carried forward according t';
wwv_flow_imp.g_varchar2_table(265) := 'o local policy limits.''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_hr_policy (category, title, content)'||wwv_flow.LF||
'VALUES (''Leave'', ''S';
wwv_flow_imp.g_varchar2_table(266) := 'ick Leave Policy'', TO_CLOB(''Employees receive 10 days of paid sick leave per year. For absences long';
wwv_flow_imp.g_varchar2_table(267) := 'er than two consecutive working days, employees may be asked to provide medical documentation to HR.';
wwv_flow_imp.g_varchar2_table(268) := '''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_hr_policy (category, title, content)'||wwv_flow.LF||
'VALUES (''Probation'', ''Probation Period'', ';
wwv_flow_imp.g_varchar2_table(269) := 'TO_CLOB(''New hires serve a three-month probation period. Managers review onboarding progress, role e';
wwv_flow_imp.g_varchar2_table(270) := 'xpectations, and performance checkpoints before confirming regular employment status.''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT IN';
wwv_flow_imp.g_varchar2_table(271) := 'TO tms_hr_policy (category, title, content)'||wwv_flow.LF||
'VALUES (''Remote Work'', ''Remote Work Policy'', TO_CLOB(''El';
wwv_flow_imp.g_varchar2_table(272) := 'igible employees may work remotely up to two days per week with manager approval. New employees shou';
wwv_flow_imp.g_varchar2_table(273) := 'ld coordinate remote work during onboarding so training, equipment setup, and team introductions are';
wwv_flow_imp.g_varchar2_table(274) := ' not delayed.''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_hr_policy (category, title, content)'||wwv_flow.LF||
'VALUES (''Benefits'', ''Health ';
wwv_flow_imp.g_varchar2_table(275) := 'Insurance Enrollment'', TO_CLOB(''Employees are eligible for company-sponsored health insurance from t';
wwv_flow_imp.g_varchar2_table(276) := 'heir hire date. HR sends enrollment instructions during onboarding and employees should complete the';
wwv_flow_imp.g_varchar2_table(277) := ' form within seven calendar days.''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_hr_policy (category, title, content)'||wwv_flow.LF||
'VALUES (';
wwv_flow_imp.g_varchar2_table(278) := '''Security'', ''Information Security Policy'', TO_CLOB(''Employees must use company-managed devices for w';
wwv_flow_imp.g_varchar2_table(279) := 'ork, enable multi-factor authentication, and report suspected security incidents immediately to IT O';
wwv_flow_imp.g_varchar2_table(280) := 'perations.''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_hr_policy (category, title, content)'||wwv_flow.LF||
'VALUES (''Conduct'', ''Code of Con';
wwv_flow_imp.g_varchar2_table(281) := 'duct'', TO_CLOB(''Acme Corp expects respectful communication, inclusive collaboration, and responsible';
wwv_flow_imp.g_varchar2_table(282) := ' handling of confidential information in every workplace interaction.''));'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO tms_hr_policy';
wwv_flow_imp.g_varchar2_table(283) := ' (category, title, content)'||wwv_flow.LF||
'VALUES (''Travel'', ''Business Travel Policy'', TO_CLOB(''Business travel req';
wwv_flow_imp.g_varchar2_table(284) := 'uires manager approval before booking. Employees should use preferred travel vendors and submit rece';
wwv_flow_imp.g_varchar2_table(285) := 'ipts within five business days after the trip.''));'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'||wwv_flow.LF||
''||wwv_flow.LF||
'prompt TMS sample data load complete.'||wwv_flow.LF||
''||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(286) := ''||wwv_flow.LF||
'-- TMS_CANDIDATE_PIPELINE rows from APEX_262_LL_Exp.'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_';
wwv_flow_imp.g_varchar2_table(287) := 'NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED';
wwv_flow_imp.g_varchar2_table(288) := '_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,IN';
wwv_flow_imp.g_varchar2_table(289) := 'TERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLA';
wwv_flow_imp.g_varchar2_table(290) := 'G) values (''Anika Rao'',''Anika'',''Rao'',''anika.rao@example.com'',''Senior Developer'',''Engineering'',''Open''';
wwv_flow_imp.g_varchar2_table(291) := ',''LinkedIn'',''Offer'',to_date(''04-06-26'',''DD-MM-RR''),to_date(''08-06-26'',''DD-MM-RR''),to_date(''18-06-26''';
wwv_flow_imp.g_varchar2_table(292) := ',''DD-MM-RR''),to_date(''24-06-26'',''DD-MM-RR''),null,null,20,8.7,4.8,''Sent'',95000,to_date(''15-07-26'',''DD';
wwv_flow_imp.g_varchar2_table(293) := '-MM-RR''),''Priya Nair'',''Maya Patel'',''Bengaluru'', TRUE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE';
wwv_flow_imp.g_varchar2_table(294) := '_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIE';
wwv_flow_imp.g_varchar2_table(295) := 'D_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,I';
wwv_flow_imp.g_varchar2_table(296) := 'NTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FL';
wwv_flow_imp.g_varchar2_table(297) := 'AG) values (''Marcus Hill'',''Marcus'',''Hill'',''marcus.hill@example.com'',''Senior Developer'',''Engineering''';
wwv_flow_imp.g_varchar2_table(298) := ',''Open'',''Employee Referral'',''Interview'',to_date(''05-06-26'',''DD-MM-RR''),to_date(''09-06-26'',''DD-MM-RR''';
wwv_flow_imp.g_varchar2_table(299) := '),to_date(''24-06-26'',''DD-MM-RR''),null,null,null,19,7.9,null,''Draft'',null,null,''Priya Nair'',''Maya Pat';
wwv_flow_imp.g_varchar2_table(300) := 'el'',''Bengaluru'', FALSE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMA';
wwv_flow_imp.g_varchar2_table(301) := 'IL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIE';
wwv_flow_imp.g_varchar2_table(302) := 'W_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OF';
wwv_flow_imp.g_varchar2_table(303) := 'FERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Nina Park'',''Nina''';
wwv_flow_imp.g_varchar2_table(304) := ',''Park'',''nina.park@example.com'',''Senior Developer'',''Engineering'',''Open'',''Careers Site'',''Screening'',t';
wwv_flow_imp.g_varchar2_table(305) := 'o_date(''07-06-26'',''DD-MM-RR''),to_date(''12-06-26'',''DD-MM-RR''),null,null,null,null,17,6.4,null,''Draft''';
wwv_flow_imp.g_varchar2_table(306) := ',null,null,''Priya Nair'',''Maya Patel'',''Bengaluru'', TRUE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDA';
wwv_flow_imp.g_varchar2_table(307) := 'TE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPL';
wwv_flow_imp.g_varchar2_table(308) := 'IED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE';
wwv_flow_imp.g_varchar2_table(309) := ',INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_';
wwv_flow_imp.g_varchar2_table(310) := 'FLAG) values (''Jacob Lee'',''Jacob'',''Lee'',''jacob.lee@example.com'',''Senior Developer'',''Engineering'',''Op';
wwv_flow_imp.g_varchar2_table(311) := 'en'',''Campus Event'',''Rejected'',to_date(''08-06-26'',''DD-MM-RR''),to_date(''13-06-26'',''DD-MM-RR''),null,nul';
wwv_flow_imp.g_varchar2_table(312) := 'l,null,to_date(''16-06-26'',''DD-MM-RR''),8,4.2,null,''Rejected'',null,null,''Priya Nair'',''Maya Patel'',''Ben';
wwv_flow_imp.g_varchar2_table(313) := 'galuru'', FALSE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_T';
wwv_flow_imp.g_varchar2_table(314) := 'ITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,O';
wwv_flow_imp.g_varchar2_table(315) := 'FFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SA';
wwv_flow_imp.g_varchar2_table(316) := 'LARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Tom Alvarez'',''Tom'',''Alvar';
wwv_flow_imp.g_varchar2_table(317) := 'ez'',''tom.alvarez@example.com'',''DevOps Engineer'',''IT Operations'',''Open'',''Recruiter Sourced'',''Intervie';
wwv_flow_imp.g_varchar2_table(318) := 'w'',to_date(''06-06-26'',''DD-MM-RR''),to_date(''10-06-26'',''DD-MM-RR''),to_date(''25-06-26'',''DD-MM-RR''),null';
wwv_flow_imp.g_varchar2_table(319) := ',null,null,18,8.1,null,''Draft'',null,null,''Priya Nair'',''Liam Chen'',''Hyderabad'', FALSE);'||wwv_flow.LF||
'Insert into T';
wwv_flow_imp.g_varchar2_table(320) := 'MS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_ST';
wwv_flow_imp.g_varchar2_table(321) := 'ATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_';
wwv_flow_imp.g_varchar2_table(322) := 'DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRI';
wwv_flow_imp.g_varchar2_table(323) := 'NG_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Mei Wong'',''Mei'',''Wong'',''mei.wong@example.com'',''DevOps E';
wwv_flow_imp.g_varchar2_table(324) := 'ngineer'',''IT Operations'',''Open'',''Careers Site'',''Applied'',to_date(''09-06-26'',''DD-MM-RR''),null,null,nu';
wwv_flow_imp.g_varchar2_table(325) := 'll,null,null,15,6.9,null,''Draft'',null,null,''Priya Nair'',''Liam Chen'',''Hyderabad'', TRUE);'||wwv_flow.LF||
'Insert into ';
wwv_flow_imp.g_varchar2_table(326) := 'TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_S';
wwv_flow_imp.g_varchar2_table(327) := 'TATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED';
wwv_flow_imp.g_varchar2_table(328) := '_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIR';
wwv_flow_imp.g_varchar2_table(329) := 'ING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Grace Kim'',''Grace'',''Kim'',''grace.kim@example.com'',''HR G';
wwv_flow_imp.g_varchar2_table(330) := 'eneralist'',''Human Resources'',''Pending Approval'',''LinkedIn'',''Applied'',to_date(''12-06-26'',''DD-MM-RR''),';
wwv_flow_imp.g_varchar2_table(331) := 'null,null,null,null,null,12,7.2,null,''Draft'',null,null,''Priya Nair'',''Priya Nair'',''Bengaluru'', TRUE);';
wwv_flow_imp.g_varchar2_table(332) := ''||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,';
wwv_flow_imp.g_varchar2_table(333) := 'REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_';
wwv_flow_imp.g_varchar2_table(334) := 'DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,';
wwv_flow_imp.g_varchar2_table(335) := 'RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Olivia Grant'',''Olivia'',''Grant'',''olivia.gr';
wwv_flow_imp.g_varchar2_table(336) := 'ant@example.com'',''Sales Account Executive'',''Sales'',''Open'',''Agency'',''Offer'',to_date(''29-05-26'',''DD-MM';
wwv_flow_imp.g_varchar2_table(337) := '-RR''),to_date(''02-06-26'',''DD-MM-RR''),to_date(''07-06-26'',''DD-MM-RR''),to_date(''21-06-26'',''DD-MM-RR''),n';
wwv_flow_imp.g_varchar2_table(338) := 'ull,null,23,8.3,4.5,''Pending Approval'',82000,to_date(''22-07-26'',''DD-MM-RR''),''Priya Nair'',''Sofia Garc';
wwv_flow_imp.g_varchar2_table(339) := 'ia'',''Mumbai'', FALSE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,';
wwv_flow_imp.g_varchar2_table(340) := 'JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_D';
wwv_flow_imp.g_varchar2_table(341) := 'ATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFER';
wwv_flow_imp.g_varchar2_table(342) := 'ED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Daniel Brown'',''Danie';
wwv_flow_imp.g_varchar2_table(343) := 'l'',''Brown'',''daniel.brown@example.com'',''Sales Account Executive'',''Sales'',''Open'',''Careers Site'',''Scree';
wwv_flow_imp.g_varchar2_table(344) := 'ning'',to_date(''01-06-26'',''DD-MM-RR''),to_date(''06-06-26'',''DD-MM-RR''),null,null,null,null,23,6.8,null,';
wwv_flow_imp.g_varchar2_table(345) := '''Draft'',null,null,''Priya Nair'',''Sofia Garcia'',''Mumbai'', FALSE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (';
wwv_flow_imp.g_varchar2_table(346) := 'CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STA';
wwv_flow_imp.g_varchar2_table(347) := 'GE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,A';
wwv_flow_imp.g_varchar2_table(348) := 'I_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIV';
wwv_flow_imp.g_varchar2_table(349) := 'ERSITY_FLAG) values (''Aisha Khan'',''Aisha'',''Khan'',''aisha.khan@example.com'',''Sales Account Executive'',';
wwv_flow_imp.g_varchar2_table(350) := '''Sales'',''Open'',''Referral'',''Applied'',to_date(''04-06-26'',''DD-MM-RR''),null,null,null,null,null,20,7.1,n';
wwv_flow_imp.g_varchar2_table(351) := 'ull,''Draft'',null,null,''Priya Nair'',''Sofia Garcia'',''Mumbai'', TRUE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELIN';
wwv_flow_imp.g_varchar2_table(352) := 'E (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_';
wwv_flow_imp.g_varchar2_table(353) := 'STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELIN';
wwv_flow_imp.g_varchar2_table(354) := 'E,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,';
wwv_flow_imp.g_varchar2_table(355) := 'DIVERSITY_FLAG) values (''Ravi Menon'',''Ravi'',''Menon'',''ravi.menon@example.com'',''Product Manager'',''Prod';
wwv_flow_imp.g_varchar2_table(356) := 'uct'',''Filled'',''Executive Referral'',''Hired'',to_date(''22-04-26'',''DD-MM-RR''),to_date(''29-04-26'',''DD-MM-';
wwv_flow_imp.g_varchar2_table(357) := 'RR''),to_date(''16-05-26'',''DD-MM-RR''),to_date(''28-05-26'',''DD-MM-RR''),to_date(''24-06-26'',''DD-MM-RR''),nu';
wwv_flow_imp.g_varchar2_table(358) := 'll,63,9.1,4.9,''Accepted'',118000,to_date(''24-06-26'',''DD-MM-RR''),''Priya Nair'',''Ethan Brooks'',''Pune'', F';
wwv_flow_imp.g_varchar2_table(359) := 'ALSE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPAR';
wwv_flow_imp.g_varchar2_table(360) := 'TMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,';
wwv_flow_imp.g_varchar2_table(361) := 'HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START';
wwv_flow_imp.g_varchar2_table(362) := '_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Elena Petrova'',''Elena'',''Petrova'',''e';
wwv_flow_imp.g_varchar2_table(363) := 'lena.petrova@example.com'',''Product Manager'',''Product'',''Filled'',''LinkedIn'',''Rejected'',to_date(''25-04-';
wwv_flow_imp.g_varchar2_table(364) := '26'',''DD-MM-RR''),to_date(''01-05-26'',''DD-MM-RR''),to_date(''14-05-26'',''DD-MM-RR''),null,null,to_date(''18-';
wwv_flow_imp.g_varchar2_table(365) := '05-26'',''DD-MM-RR''),23,5.1,3.1,''Rejected'',null,null,''Priya Nair'',''Ethan Brooks'',''Pune'', TRUE);'||wwv_flow.LF||
'Insert';
wwv_flow_imp.g_varchar2_table(366) := ' into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISI';
wwv_flow_imp.g_varchar2_table(367) := 'TION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,RE';
wwv_flow_imp.g_varchar2_table(368) := 'JECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUIT';
wwv_flow_imp.g_varchar2_table(369) := 'ER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Chris Morgan'',''Chris'',''Morgan'',''chris.morgan@exa';
wwv_flow_imp.g_varchar2_table(370) := 'mple.com'',''Data Analyst'',''Finance'',''Draft'',''Careers Site'',''Applied'',to_date(''18-06-26'',''DD-MM-RR''),n';
wwv_flow_imp.g_varchar2_table(371) := 'ull,null,null,null,null,6,6.3,null,''Draft'',null,null,''Priya Nair'',''Noah Reed'',''Bengaluru'', FALSE);'||wwv_flow.LF||
'I';
wwv_flow_imp.g_varchar2_table(372) := 'nsert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,RE';
wwv_flow_imp.g_varchar2_table(373) := 'QUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DA';
wwv_flow_imp.g_varchar2_table(374) := 'TE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RE';
wwv_flow_imp.g_varchar2_table(375) := 'CRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Sara Ibrahim'',''Sara'',''Ibrahim'',''sara.ibrahi';
wwv_flow_imp.g_varchar2_table(376) := 'm@example.com'',''Data Analyst'',''Finance'',''Draft'',''LinkedIn'',''Applied'',to_date(''19-06-26'',''DD-MM-RR''),';
wwv_flow_imp.g_varchar2_table(377) := 'null,null,null,null,null,5,7.4,null,''Draft'',null,null,''Priya Nair'',''Noah Reed'',''Bengaluru'', TRUE);'||wwv_flow.LF||
'I';
wwv_flow_imp.g_varchar2_table(378) := 'nsert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,RE';
wwv_flow_imp.g_varchar2_table(379) := 'QUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DA';
wwv_flow_imp.g_varchar2_table(380) := 'TE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RE';
wwv_flow_imp.g_varchar2_table(381) := 'CRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Farah Ali'',''Farah'',''Ali'',''farah.ali@example';
wwv_flow_imp.g_varchar2_table(382) := '.com'',''HR Generalist'',''Human Resources'',''Pending Approval'',''Agency'',''Screening'',to_date(''13-06-26'',''';
wwv_flow_imp.g_varchar2_table(383) := 'DD-MM-RR''),to_date(''18-06-26'',''DD-MM-RR''),null,null,null,null,11,6.7,null,''Draft'',null,null,''Priya N';
wwv_flow_imp.g_varchar2_table(384) := 'air'',''Priya Nair'',''Bengaluru'', TRUE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,';
wwv_flow_imp.g_varchar2_table(385) := 'LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_';
wwv_flow_imp.g_varchar2_table(386) := 'DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OF';
wwv_flow_imp.g_varchar2_table(387) := 'FER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Ben ';
wwv_flow_imp.g_varchar2_table(388) := 'Carter'',''Ben'',''Carter'',''ben.carter@example.com'',''DevOps Engineer'',''IT Operations'',''Open'',''LinkedIn'',';
wwv_flow_imp.g_varchar2_table(389) := '''Rejected'',to_date(''30-05-26'',''DD-MM-RR''),to_date(''04-06-26'',''DD-MM-RR''),to_date(''12-06-26'',''DD-MM-R';
wwv_flow_imp.g_varchar2_table(390) := 'R''),null,null,to_date(''14-06-26'',''DD-MM-RR''),15,5.6,2.8,''Rejected'',null,null,''Priya Nair'',''Liam Chen';
wwv_flow_imp.g_varchar2_table(391) := ''',''Hyderabad'', FALSE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL';
wwv_flow_imp.g_varchar2_table(392) := ',JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_';
wwv_flow_imp.g_varchar2_table(393) := 'DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFE';
wwv_flow_imp.g_varchar2_table(394) := 'RED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Ivy Chen'',''Ivy'',''Ch';
wwv_flow_imp.g_varchar2_table(395) := 'en'',''ivy.chen@example.com'',''Senior Developer'',''Engineering'',''Open'',''Referral'',''Interview'',to_date(''1';
wwv_flow_imp.g_varchar2_table(396) := '0-06-26'',''DD-MM-RR''),to_date(''14-06-26'',''DD-MM-RR''),to_date(''28-06-26'',''DD-MM-RR''),null,null,null,14';
wwv_flow_imp.g_varchar2_table(397) := ',8.4,null,''Draft'',null,null,''Priya Nair'',''Maya Patel'',''Bengaluru'', TRUE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_';
wwv_flow_imp.g_varchar2_table(398) := 'PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,C';
wwv_flow_imp.g_varchar2_table(399) := 'URRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_';
wwv_flow_imp.g_varchar2_table(400) := 'PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LO';
wwv_flow_imp.g_varchar2_table(401) := 'CATION,DIVERSITY_FLAG) values (''Owen Miller'',''Owen'',''Miller'',''owen.miller@example.com'',''Senior Devel';
wwv_flow_imp.g_varchar2_table(402) := 'oper'',''Engineering'',''Open'',''Careers Site'',''Applied'',to_date(''15-06-26'',''DD-MM-RR''),null,null,null,nu';
wwv_flow_imp.g_varchar2_table(403) := 'll,null,9,6.1,null,''Draft'',null,null,''Priya Nair'',''Maya Patel'',''Bengaluru'', FALSE);'||wwv_flow.LF||
'Insert into TMS_';
wwv_flow_imp.g_varchar2_table(404) := 'CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATU';
wwv_flow_imp.g_varchar2_table(405) := 'S,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DAT';
wwv_flow_imp.g_varchar2_table(406) := 'E,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_';
wwv_flow_imp.g_varchar2_table(407) := 'MANAGER,LOCATION,DIVERSITY_FLAG) values (''Priyanka Das'',''Priyanka'',''Das'',''priyanka.das@example.com'',';
wwv_flow_imp.g_varchar2_table(408) := '''Sales Account Executive'',''Sales'',''Open'',''LinkedIn'',''Interview'',to_date(''31-05-26'',''DD-MM-RR''),to_da';
wwv_flow_imp.g_varchar2_table(409) := 'te(''05-06-26'',''DD-MM-RR''),to_date(''19-06-26'',''DD-MM-RR''),null,null,null,24,7.6,4,''Draft'',null,null,''';
wwv_flow_imp.g_varchar2_table(410) := 'Priya Nair'',''Sofia Garcia'',''Mumbai'', TRUE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST';
wwv_flow_imp.g_varchar2_table(411) := '_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCRE';
wwv_flow_imp.g_varchar2_table(412) := 'ENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SC';
wwv_flow_imp.g_varchar2_table(413) := 'ORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values ';
wwv_flow_imp.g_varchar2_table(414) := '(''Mateo Silva'',''Mateo'',''Silva'',''mateo.silva@example.com'',''Sales Account Executive'',''Sales'',''Open'',''A';
wwv_flow_imp.g_varchar2_table(415) := 'gency'',''Rejected'',to_date(''28-05-26'',''DD-MM-RR''),to_date(''03-06-26'',''DD-MM-RR''),to_date(''11-06-26'',''';
wwv_flow_imp.g_varchar2_table(416) := 'DD-MM-RR''),null,null,to_date(''13-06-26'',''DD-MM-RR''),16,5.3,2.7,''Rejected'',null,null,''Priya Nair'',''So';
wwv_flow_imp.g_varchar2_table(417) := 'fia Garcia'',''Mumbai'', FALSE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAM';
wwv_flow_imp.g_varchar2_table(418) := 'E,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INT';
wwv_flow_imp.g_varchar2_table(419) := 'ERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STAT';
wwv_flow_imp.g_varchar2_table(420) := 'US,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Hannah Scott';
wwv_flow_imp.g_varchar2_table(421) := ''',''Hannah'',''Scott'',''hannah.scott@example.com'',''Product Manager'',''Product'',''Filled'',''Careers Site'',''R';
wwv_flow_imp.g_varchar2_table(422) := 'ejected'',to_date(''20-04-26'',''DD-MM-RR''),to_date(''26-04-26'',''DD-MM-RR''),to_date(''09-05-26'',''DD-MM-RR''';
wwv_flow_imp.g_varchar2_table(423) := '),null,null,to_date(''12-05-26'',''DD-MM-RR''),22,5.8,3,''Rejected'',null,null,''Priya Nair'',''Ethan Brooks''';
wwv_flow_imp.g_varchar2_table(424) := ',''Pune'', FALSE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_T';
wwv_flow_imp.g_varchar2_table(425) := 'ITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,O';
wwv_flow_imp.g_varchar2_table(426) := 'FFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SA';
wwv_flow_imp.g_varchar2_table(427) := 'LARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Kabir Mehta'',''Kabir'',''Meh';
wwv_flow_imp.g_varchar2_table(428) := 'ta'',''kabir.mehta@example.com'',''Product Manager'',''Product'',''Filled'',''LinkedIn'',''Offer'',to_date(''21-04';
wwv_flow_imp.g_varchar2_table(429) := '-26'',''DD-MM-RR''),to_date(''28-04-26'',''DD-MM-RR''),to_date(''15-05-26'',''DD-MM-RR''),to_date(''24-05-26'',''D';
wwv_flow_imp.g_varchar2_table(430) := 'D-MM-RR''),null,null,33,8.5,4.6,''Withdrawn'',122000,to_date(''20-06-26'',''DD-MM-RR''),''Priya Nair'',''Ethan';
wwv_flow_imp.g_varchar2_table(431) := ' Brooks'',''Pune'', FALSE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMA';
wwv_flow_imp.g_varchar2_table(432) := 'IL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIE';
wwv_flow_imp.g_varchar2_table(433) := 'W_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OF';
wwv_flow_imp.g_varchar2_table(434) := 'FERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Marta Novak'',''Mar';
wwv_flow_imp.g_varchar2_table(435) := 'ta'',''Novak'',''marta.novak@example.com'',''HR Generalist'',''Human Resources'',''Pending Approval'',''Careers ';
wwv_flow_imp.g_varchar2_table(436) := 'Site'',''Applied'',to_date(''14-06-26'',''DD-MM-RR''),null,null,null,null,null,10,6.5,null,''Draft'',null,nul';
wwv_flow_imp.g_varchar2_table(437) := 'l,''Priya Nair'',''Priya Nair'',''Bengaluru'', FALSE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,';
wwv_flow_imp.g_varchar2_table(438) := 'FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE';
wwv_flow_imp.g_varchar2_table(439) := ',SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVI';
wwv_flow_imp.g_varchar2_table(440) := 'EW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) va';
wwv_flow_imp.g_varchar2_table(441) := 'lues (''Noor Hassan'',''Noor'',''Hassan'',''noor.hassan@example.com'',''DevOps Engineer'',''IT Operations'',''Ope';
wwv_flow_imp.g_varchar2_table(442) := 'n'',''Referral'',''Screening'',to_date(''08-06-26'',''DD-MM-RR''),to_date(''15-06-26'',''DD-MM-RR''),null,null,nu';
wwv_flow_imp.g_varchar2_table(443) := 'll,null,16,7.5,null,''Draft'',null,null,''Priya Nair'',''Liam Chen'',''Hyderabad'', TRUE);'||wwv_flow.LF||
'Insert into TMS_C';
wwv_flow_imp.g_varchar2_table(444) := 'ANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS';
wwv_flow_imp.g_varchar2_table(445) := ',SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE';
wwv_flow_imp.g_varchar2_table(446) := ',DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_M';
wwv_flow_imp.g_varchar2_table(447) := 'ANAGER,LOCATION,DIVERSITY_FLAG) values (''Arjun Nair'',''Arjun'',''Nair'',''arjun.nair@example.com'',''Senior';
wwv_flow_imp.g_varchar2_table(448) := ' Developer'',''Engineering'',''Open'',''Recruiter Sourced'',''Screening'',to_date(''12-06-26'',''DD-MM-RR''),to_d';
wwv_flow_imp.g_varchar2_table(449) := 'ate(''18-06-26'',''DD-MM-RR''),null,null,null,null,12,7,null,''Draft'',null,null,''Priya Nair'',''Maya Patel''';
wwv_flow_imp.g_varchar2_table(450) := ',''Bengaluru'', FALSE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,';
wwv_flow_imp.g_varchar2_table(451) := 'JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_D';
wwv_flow_imp.g_varchar2_table(452) := 'ATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFER';
wwv_flow_imp.g_varchar2_table(453) := 'ED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Tara Wilson'',''Tara'',';
wwv_flow_imp.g_varchar2_table(454) := '''Wilson'',''tara.wilson@example.com'',''Data Analyst'',''Finance'',''Draft'',''LinkedIn'',''Applied'',to_date(''20';
wwv_flow_imp.g_varchar2_table(455) := '-06-26'',''DD-MM-RR''),null,null,null,null,null,4,6.8,null,''Draft'',null,null,''Priya Nair'',''Noah Reed'',''';
wwv_flow_imp.g_varchar2_table(456) := 'Bengaluru'', TRUE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB';
wwv_flow_imp.g_varchar2_table(457) := '_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE';
wwv_flow_imp.g_varchar2_table(458) := ',OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_';
wwv_flow_imp.g_varchar2_table(459) := 'SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSITY_FLAG) values (''Leah Thompson'',''Leah'',''';
wwv_flow_imp.g_varchar2_table(460) := 'Thompson'',''leah.thompson@example.com'',''Data Analyst'',''Finance'',''Draft'',''Employee Referral'',''Screenin';
wwv_flow_imp.g_varchar2_table(461) := 'g'',to_date(''16-06-26'',''DD-MM-RR''),to_date(''21-06-26'',''DD-MM-RR''),null,null,null,null,8,7.6,null,''Dra';
wwv_flow_imp.g_varchar2_table(462) := 'ft'',null,null,''Priya Nair'',''Noah Reed'',''Bengaluru'', FALSE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CAND';
wwv_flow_imp.g_varchar2_table(463) := 'IDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,A';
wwv_flow_imp.g_varchar2_table(464) := 'PPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SC';
wwv_flow_imp.g_varchar2_table(465) := 'ORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSI';
wwv_flow_imp.g_varchar2_table(466) := 'TY_FLAG) values (''Samir Khan'',''Samir'',''Khan'',''samir.khan@example.com'',''DevOps Engineer'',''IT Operatio';
wwv_flow_imp.g_varchar2_table(467) := 'ns'',''Open'',''Recruiter Sourced'',''Offer'',to_date(''27-05-26'',''DD-MM-RR''),to_date(''01-06-26'',''DD-MM-RR'')';
wwv_flow_imp.g_varchar2_table(468) := ',to_date(''10-06-26'',''DD-MM-RR''),to_date(''18-06-26'',''DD-MM-RR''),null,null,28,8.6,4.4,''Expired'',99000,';
wwv_flow_imp.g_varchar2_table(469) := 'to_date(''08-07-26'',''DD-MM-RR''),''Priya Nair'',''Liam Chen'',''Hyderabad'', FALSE);'||wwv_flow.LF||
'Insert into TMS_CANDIDA';
wwv_flow_imp.g_varchar2_table(470) := 'TE_PIPELINE (CANDIDATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURC';
wwv_flow_imp.g_varchar2_table(471) := 'E,CURRENT_STAGE,APPLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_';
wwv_flow_imp.g_varchar2_table(472) := 'IN_PIPELINE,AI_SCORE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER';
wwv_flow_imp.g_varchar2_table(473) := ',LOCATION,DIVERSITY_FLAG) values (''Mina George'',''Mina'',''George'',''mina.george@example.com'',''HR Genera';
wwv_flow_imp.g_varchar2_table(474) := 'list'',''Human Resources'',''Pending Approval'',''Employee Referral'',''Interview'',to_date(''09-06-26'',''DD-MM';
wwv_flow_imp.g_varchar2_table(475) := '-RR''),to_date(''14-06-26'',''DD-MM-RR''),to_date(''26-06-26'',''DD-MM-RR''),null,null,null,15,7.7,null,''Draf';
wwv_flow_imp.g_varchar2_table(476) := 't'',null,null,''Priya Nair'',''Priya Nair'',''Bengaluru'', TRUE);'||wwv_flow.LF||
'Insert into TMS_CANDIDATE_PIPELINE (CANDI';
wwv_flow_imp.g_varchar2_table(477) := 'DATE_NAME,FIRST_NAME,LAST_NAME,EMAIL,JOB_TITLE,DEPARTMENT,REQUISITION_STATUS,SOURCE,CURRENT_STAGE,AP';
wwv_flow_imp.g_varchar2_table(478) := 'PLIED_DATE,SCREENING_DATE,INTERVIEW_DATE,OFFER_DATE,HIRED_DATE,REJECTED_DATE,DAYS_IN_PIPELINE,AI_SCO';
wwv_flow_imp.g_varchar2_table(479) := 'RE,INTERVIEW_SCORE,OFFER_STATUS,OFFERED_SALARY,START_DATE,RECRUITER,HIRING_MANAGER,LOCATION,DIVERSIT';
wwv_flow_imp.g_varchar2_table(480) := 'Y_FLAG) values (''Lucas Evans'',''Lucas'',''Evans'',''lucas.evans@example.com'',''Sales Account Executive'',''S';
wwv_flow_imp.g_varchar2_table(481) := 'ales'',''Open'',''Careers Site'',''Applied'',to_date(''10-06-26'',''DD-MM-RR''),null,null,null,null,null,14,6.2';
wwv_flow_imp.g_varchar2_table(482) := ',null,''Draft'',null,null,''Priya Nair'',''Sofia Garcia'',''Mumbai'', FALSE);'||wwv_flow.LF||
'';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(4592552185148463578)
,p_install_id=>wwv_flow_imp.id(4592094104378764104)
,p_name=>'TMS_DML'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013070125Z')
,p_updated_on=>wwv_flow_imp.dz('20261013070125Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
