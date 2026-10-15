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
,p_default_application_id=>27966
,p_default_id_offset=>0
,p_default_owner=>'APEX262_LL'
);
end;
/

prompt APPLICATION 27966 - Employee Self-Service Portal
--
-- Application Export:
--   Application:     27966
--   Name:            Employee Self-Service Portal
--   Date and Time:   10:51 Tuesday October 13, 2026
--   Exported By:     ROOPESH.THOKALA@ORACLE.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      8
--       Items:                   24
--       Computations:             1
--       Validations:              2
--       Processes:               10
--       Regions:                 13
--       Buttons:                  8
--       Dynamic Actions:          1
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:              5
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   5
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          3
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Employee Self-Service Portal')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'EMPLOYEE-SELF-SERVICE-PORTAL')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'398D8C88017E50D6266D79D78DDABB1EB26581307752D3957755116F47899009'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(4585221700514463711)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Employee Self-Service Portal'
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
,p_substitution_value_01=>'Employee Self-Service Portal'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013104901Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461327061006
,p_version_scn=>'50861544770351'
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
,p_navigation_list_id=>wwv_flow_imp.id(4585222659080463715)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2471166859590295591
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(4585224711575463884)
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
 p_id=>wwv_flow_imp.id(4585217321122463701)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061004Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4585217686771463702)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061004Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4585217932926463703)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061004Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4585218298764463703)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061004Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4585218515518463704)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061004Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4585218856219463704)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061004Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4585219159291463705)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061004Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4585219462804463705)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061004Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4585219782054463706)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061004Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4585220039692463706)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061004Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4585220398310463707)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG',
  'auto_ir_reset_button', 'Y')).to_clob
,p_version_scn=>'SH256:TC1mqO_n1hWvorH6XHVejgQzJq9VjDsWoq0rKaIQUNo'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061004Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4585220638936463708)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061004Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4585220911657463709)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061004Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4585221299386463709)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20261013061004Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061005Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4585224711575463884)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20261013061006Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061014Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4585295405487464615)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013061014Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061014Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4585296069722464616)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(4585295405487464615)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013061014Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061014Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4585296567225464617)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(4585295405487464615)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013061014Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061014Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4585222659080463715)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:o7EmATn2t9u_rQlwX7yIBdRA81L9dsRC_YFE-di05LA'
,p_created_on=>wwv_flow_imp.dz('20261013061005Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4585237355680463944)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4585268519704464576)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Leave Request'
,p_static_id=>'leave-request'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4585238834074463950)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'My Onboarding Tasks'
,p_static_id=>'my-onboarding-tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4585270206593464579)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'My Payslip'
,p_static_id=>'my-payslip'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4585266852503464572)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'My Profile'
,p_static_id=>'my-profile'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4585291751964464607)
,p_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_version_scn=>'SH256:mErkZ8no93s_eVACEd4GSsU2bSJpsSYc-Pvdry9To30'
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061014Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4585293217385464610)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Leave Request'
,p_static_id=>'leave-request'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013061014Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061014Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4585292204613464608)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'My Onboarding Tasks'
,p_static_id=>'my-onboarding-tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4585293664511464611)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'My Payslip'
,p_static_id=>'my-payslip'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013061014Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061014Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4585292724923464609)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'My Profile'
,p_static_id=>'my-profile'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000B0F494441547801EC9DDFAB5CD515C7F7448B24607F05928291D04A6369D3AB557C6A4B73F1E6A5A585D23F4194D27FA10F3779E8BF508A258F7D2C8596F6E5DE';
wwv_flow_imp.g_varchar2_table(2) := '7263B54F9AA8631415FC85113410050545D41CCFE74C563C77EE3967CE9CBDCE9C397BAD4BD69C7DF6CFB5BFEB337BEFB933737328F88F2B10A1800314219E370DC101720AA2147080A2E4F3C60E903310A5800314259F3776809C8128053A031435AA37';
wwv_flow_imp.g_varchar2_table(3) := '4E4601072899500E3311076818DD9319D5014A2694C34CC4011A46F7644675809209E53013718086D13D9951570FD002E9EE7B72F754D9362EFEF7D7D6ADACC702F9565E3C3840F7EFED9CD9D8DB3977DFDEEEDEC6DE6E967D1E5E295BC8B27F5AB7B21E';
wwv_flow_imp.g_varchar2_table(4) := '68845E18DAAD9C98B901070188890B3037C2642F84C97616C299E03F2D15986C875C33B42B031506F8592940020E13776034A33D034A60D2EC79515F2B0188E596C939388BC2A1513ED9466B34D7E86D511FBD03349B08CF9045AE78B9AE0280B4734EB7';
wwv_flow_imp.g_varchar2_table(5) := 'CF83BDF506906C5721DFAB83FF0CA4C0649BB326B1E8CB815E00C261FDEDAA2F09D2EE97B326B120267DCC541D201CC5E13E9CF53EBB2B404C884DF71EAA5BAA0394F99655ADF41AE4F6111B5580383067FEFB9C3540A5DA0562438CAA4BBBE5AA013473';
wwv_flow_imp.g_varchar2_table(6) := 'CC5F6D750BC32A5B4DF297F97AAFCED4000ABE7585F1FCE83DD155009AAD3EE391CF3D0D41EB40AD025058EFD527F8CF410532A5984503E4ABCFC1E08C2127CB5FEC68AC42D1008D412CF7B15A814C6115520048EF40563D4DCFED4B812C5F8562FB8E02';
wwv_flow_imp.g_varchar2_table(7) := '4863098C9D80B78F532036865100DD5020386EFADE3A5681D818460114EBBCB71F5E814998FC22C68B488026DB3183AF7B5B0BFEC59E833A03C437052C086C618E31B1EC0C9005617D8E8B157080166BE4351A14E80C50F6C5E4DE867EBDC888029D0132';
wwv_flow_imp.g_varchar2_table(8) := 'A28F8969C62C060E900944FA9BA403D487B686FA74801A82FDD9F5EB016BA862BEC801AA4100703ECF01C248D754339FED00552000308073FCDB4703469ABC8AAAE6B31CA039040005600067EBF4E98091268FB2B9EAE66F1DA012020002280003385244';
wwv_flow_imp.g_varchar2_table(9) := '9A3CCAA823F97E0DFEBFF50804800120DC030CD7B26D9C3C59DC5287BAC58D3F38403000108041FAEC4F1EE072C08EDD79679032EADEF8F8930375E233C6D7836F6179CC0022BF848D7BEE098042BACA2813883EBDFA7655157379E60162F521EAC0F3E3';
wwv_flow_imp.g_varchar2_table(10) := 'BB4E906C3420A22E95A42D69AB661A200090D5A70D3C020975E5506D7D2B330D90045F561401A4CD550ED540D8A67EAA75CC0244E06F7CF27171EE61455936C0B295D1077D2DDB3E95FA660192ADEBF8D7BF11AE7DF45127A3ADF5ADCC2440E51563E7D9';
wwv_flow_imp.g_varchar2_table(11) := 'CB21C6DE7BFF7AB19894FB2C3256FB30D868260192D5E70F3FFD59D0B0874E7E37B095C9996AB0680E30B0398064A5009CC77EF0C3A061BF7FA0FA978F03C473E5439A03485609C0D152FBC1FC5D7BFA1238495B315300010F5B0DAB8F7680AD6E63A600';
wwv_flow_imp.g_varchar2_table(12) := 'FA227FD9DE169C4BF9E1F8D1DD9D803DFEF24B0B9BC936666D153205901C9E9BB62F01E7917FFC3D3CFDD61B85FDF9FF4F85FB2F3C1E28AB2349B6B1BAF254F3CD00242BC3A2EDEB2F972F17D06CFDE874F8D32F7F55186900A08C6B9D8D711BAB9B4BDB';
wwv_flow_imp.g_varchar2_table(13) := '7C3300B511841586550760366F7EFE8776A4BF77EC3B0558D421AFCA641B5B66ABACEA674C79E6007AF0D8F1DAF85CBAF65E6DD9C3A7BE5F9435D5292AE40F1CD6F38B897F660092A0369D559AE07AE3830F1602D1D4F7C2C623AD6007A0255E81EDBE78';
wwv_flow_imp.g_varchar2_table(14) := '655F38DFFCF0C320794D07F07D8D8CDC9801887872C8E55A67AC2072C8FEE37FFE1D2E3C73A9B0BF3EF564D144CA8A9B9A07C6E0774D35C5C9659B02A84DF458610494D7AFBD1B30DA5DF8EDEF8AB73D48BB7DA5800980E4FCF3D089BBBE9A79430A889E';
wwv_flow_imp.g_varchar2_table(15) := '7BE4B180010E5756A78626B78A640C19F356416A899BF3310150CCCBEAB6E0DCD4D3DCC50440B71D3EB2F2C0C640BB72672306340150843E9D9B0E016D6767231A9A02E8E9ABEF4448E54DAB143005509500DA79D620350190BC91AA0D4B537F438CD9E4';
wwv_flow_imp.g_varchar2_table(16) := '4F5F65C903F4E9DB578BCF2B23206F94726D6BBC71DAE6B340E5FE640C7E99C8D8E5B214D3CB03342215082081E4AB3718AE0305D736C66782F82C509BBAE53A7C5191F1181B1FCA65A9A5930588C0114002C99F6B916F92F619C0F26AC5988C8D0FF8D2';
wwv_flow_imp.g_varchar2_table(17) := 'E7B843F69D2440048CC0114002591678D187C2CA75BBA6E59BAE8C8D0FF8824F5DFB5BE776C901C4E1958011380228E2F35564F2E48C22F99AD7AAED0E1F18179FF04D73BC75E82B298078FF493EF74CE0EA045EE61C54D7C77CBE6C5F9C7FE6CBF00588';
wwv_flow_imp.g_varchar2_table(18) := 'F00D1FE7CBC77C9F1440F20CAF0A22419273509FDB18DF9767AC7993B1C5C7F9F2B1DE270510DB04CF743983CC07856D6C3E4FEB5EB6AFBA31C8C7377CD41A731DFA592140FD4E57B686E3DFFA66E340AC4E9C8334B7B1A6EDABEC8CF826BE96CBC69A4E';
wwv_flow_imp.g_varchar2_table(19) := '06A0B6EF7ECBEAA4B98DC9EA237DD7C120DB5B5B5FEBFA59A7FC640012512548725F75D55C85DAAE3E557EA490971C406D82222B85C62AD476F569E3D718EB9804884069AC42D6571F74340B90AC42BCDFD5F5406D7DF5310D1093E76535D72E5BD9A3BB';
wwv_flow_imp.g_varchar2_table(20) := '3B342DFE379F2261F4610C2B502FA1D9BD7225C8DF37E465BD6C476D06A32E6DA84B1FF445DAA2990388BFC84AC009FCA1C347C2E153A78AB8B31DB5D9CA8087BA34A2EDED478F1620D2277D936FC94C014480F98BACC043E0EFB87BF65F1BDC71E2EE22';
wwv_flow_imp.g_varchar2_table(21) := 'E69C878A44CD0380093CB4A7DAD7728048D3277D3306F956CC0C402FBC73B5F873BE0496801378D2D8A123870379A4F94352AC3218F71869CE3C021875CBED4993475D20622CD216CC04400474FADA6B453C596D087871537A204F206095C1A498B49C79';
wwv_flow_imp.g_varchar2_table(22) := 'A8435D29932B799471CF588C493A754B1E200249400924F0B0DA90AE3220E05C433D4CEA90C628A38EE4CF5F29A31EF98CC9D8A453B66401E22CC2C19640CA61B9099E7290A987491E694CEE9BAED40334C6646C7C4819A4E400E20CF2B7FF3D519C7738';
wwv_flow_imp.g_varchar2_table(23) := 'D81248392C37055EBB8C31D9D2F00190C427ED7186EE2F1980F82A31B0948DED844076151900B0AEEDD9D2688F95FDC2D7AE7DAE5BBB640062EB0096B29117233800601A7D68FA15E38F76DB6400D216C6FB6BA78003D44E27AF55A340678026B765AFD4';
wwv_flow_imp.g_varchar2_table(24) := 'F4E9D98614E80C90218D929F6ACC62E00055E1E179AD1570805A4BE515AB14E80CD0F33FDF7AB5AA43CF1B9F0231B1EC0C10324D42B818FC67E40A64E7632610055016B2276206F7B6E357200AA0BCB1AF40236720368679FBEE0A3CB779D601EA2EDF5A';
wwv_flow_imp.g_varchar2_table(25) := 'B48C8D61144028E0E72054101BDB358B3AFF305B0580E29DC011B7712A100D104BA0AF42E30CFE74F3ECB958CFA301C28149F055081DC6653A3153018855685CE2B9B71AAB0F2AAA004447C157A1990CA378D4597D98AA1A4033A2F51CC339B73E14C8CE';
wwv_flow_imp.g_varchar2_table(26) := 'CF62A5D3B71A40B883637EA04689A56D250D880D31D21C4C15201CF303352AACA7F5111B758038501F0AD9E67A4A68D72B62426CB415500708077114875932B9771B4E0162402C88491F5EF402108EE2F0F39B5BF94A9445FFBA9CFEDCBA28909D2706C4';
wwv_flow_imp.g_varchar2_table(27) := 'A24BEB366D7A0348069F1DDA1C22D1637557DD575B757EF70E100303D174732B5F4D1D24F4E8CB72812FB25DA1F554E16D8A367EAE04207184494D6F81E430892E3157DA0A387D6F578C356F2B0548069FE6CF8E996D4D78C6CC7E8BED40893E8BAE0083';
wwv_flow_imp.g_varchar2_table(28) := '666837CD9F904380233E0E02900CCE9503DEB404D4E4F670AF58984C7E63DD440BB94E6F0233CD35433B341CD20607687EF27C43406C7AE6E17F5937D142AEF37A0D7DBF76000D2D888FBF9C020ED0727A79ED39051CA03941FC7639051CA0E5F44AA7B6';
wwv_flow_imp.g_varchar2_table(29) := 'D24C1C202521AD76E300598DBCD2BC1D202521AD76E300598DBCD2BC1D202521AD76E300598DBCD2BC1D202521ED74B37FA60ED07E3DFC6E49051CA02505F3EAFB15F8120000FFFFC30FBEB2000000064944415403008F302A7B8F8F4C0F000000004945';
wwv_flow_imp.g_varchar2_table(30) := '4E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4585226012106463889)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013061006Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061006Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700000F14494441547801EC9DD1EF154715C737A8692001B5289840F3D39234462969C13E591F4CE0459F8C7F02A131FE0B3EFB2F1843C3631F9B3EE90B244D6B7DAAA0';
wwv_flow_imp.g_varchar2_table(2) := 'A9687CA14AA08945E9439B40885A7B3F0B677BEEDEBBBF9DDD9DDDBBB3F325BFB9337366E6CC39DF39DFD973EF0F2E07CEBC79EDFF2AC220D7183850E88F10C818011120E3C397EB452102280AB2464004C8FAF8E57CC604D0E10B01A5408A81CC11D013';
wwv_flow_imp.g_varchar2_table(3) := '20F300C8DD7D1120F708C8DC7F1120F300C8DD7D1120C70890CF1502224005851A39222002E478EAF2B9424004A8A05023470444801C4F5D3E5708880015146AE48040DD4711A08E88FA592120026475DC72B68E8008504744FDAC101001B23A6E395B47';
wwv_flow_imp.g_varchar2_table(4) := '4004A823A27E5608644480ACCE55CE062220020402A569CB44400458E6B9CAAB4004448040A0346D99088800CB3C577915888008100854D2D3647C2302224023341AC8010111208753968F8D0888008DD06820070444801C4E593E362220023442A38125';
wwv_flow_imp.g_varchar2_table(5) := '20D0E68308D08690C6178D8008B0E8E395736D0888006D08697CD10888008B3E5E39D7868008D08690C6178DC08209B0E8739373911010012201293569222002A4796EB23A120222402420A5264D04448034CF4D56474240048804E4ACD4C89860044480';
wwv_flow_imp.g_varchar2_table(6) := '60A83471890888004B3C55F9148C8008100C95262E1101116089A72A9F8211100182A1D2C41410E86AA308D015B148F33F7DF0B07874E76E596847522B351D1110013A0216633A01FFE8EE9DE2D3870FCA52B6578488A15B3ABA21200274C36BF06C0BFE';
wwv_flow_imp.g_varchar2_table(7) := 'BA2291A08EC8347D11601A9CCB5D9A82BF1C5CBD88042B1026FE110126027C5BF05F78F16C41F12688041E8DF1DB0B22C0F860F5DDE13FF7EF1704B65F4FE01F3B7CB8A0D0F663CC85305EA6F638088800E3E05A692590FFBB22402558350878027FD52C';
wwv_flow_imp.g_varchar2_table(8) := '7F68232B3B4F5E448227408C5C890023034C20FB2DCE9C3A55DEFA5E467B1B09787230A6321E0222C078D8969FF17BF504FFF3274E7AD15A1B1230C7847C4CCAEF0AACAF3A3E0222407C4C4B8DDCDE0470D959BD10D8FB05FF6A4AF9C31CE6969DD50B3A';
wwv_flow_imp.g_varchar2_table(9) := 'D0B56AEA6704044480114025607DDE4F4013D8A15B319735361F5DE8B4FE462D416F044480DED06D5F48A012B0364A2013D0D60FAD59C35A9B8F4EDE505B5F751C0444803838565A0854EB1C7FFA6841205BBF6BCD5A74D83AC8656DD571101001E2E058';
wwv_flow_imp.g_varchar2_table(10) := '6AA907E899BDBD523EE4C5EBE0FD80DE140F417373AD08B089492F09C1EF6F7FD2173ED5E9A5CC2D4207BA4C0409940A191AC36B11603886A5061FFCA42DA42FE540841774A1D354D57FB760F21CEBA13E8B0043115CADE7F65F55D58F4F5B2AE1C0465D';
wwv_flow_imp.g_varchar2_table(11) := 'A752A181803E592E023C01A26F45F0FBDB9F7485B4A5AFBEA675E844B78D2B15322486D522C030FC8A7AF093AE0C54D9B81CDD3E15827C8D9335108480081004D3F649F5002440B7CF8C27F5A9909E02C3711501066058BFFD07A80A5E5A4F85F4863818';
wwv_flow_imp.g_varchar2_table(12) := 'BAAD131326C0567F2613D66FFFF76EDD2A5E7BFBAD490A7B7947EBB6F831B5F7474004D81F9FC6517FFB374E9A68604EB64CE472B46D44801E50CEF1C6D52FC77A1CE46A8908B002A1EB8FBF717FFEFD978B3F5D7C6527E5CA4F7E5A993E475256C6CDB8';
wwv_flow_imp.g_varchar2_table(13) := '2102743C9C7AA0BDF2EDEF74D4106FFAB9A78F56CAF489500545A78608D009AEF5C9DCFEEB92897A6E1B6F439D9C6E9A9A0D0888000DC034897DFAB3CBDBDFEC3B77ECB835CB6F99D37B810A8EA086081004D3E349FE86F537EFE3D1DDBC9206BDB4F7AD';
wwv_flow_imp.g_varchar2_table(14) := '6A736F632554A3110111A0119ACD017FFB6F8EEE4EF2B3B36777B779E23B8B008107584F2D86A43F97FFF6D7E2D2B5ABC50B572E978536B2405336A6F11430A1DE0C1B1261B508108653F1BF870FAA997DD39FEB1FDD2F03FE57BF7FA778F7F6DF2B7DB4';
wwv_flow_imp.g_varchar2_table(15) := '914188BE44F06950A578818DD82E89008188D69F0081CBAA6904F6C5375EAFFA4D0D88C0DCA6F126B94F83F43EA009A54DB908B089C95609A9850D744D7FB8F9096C5BFFECB16F14975EFE41F1CB1FFDB82CE7BF7BBA4066E3CC658DF543EA7A1A14B246';
wwv_flow_imp.g_varchar2_table(16) := '738A42040888027FA3F649357E7DE346B50BC17EF17BE78A6F1E3952C97EB8B75720F324F06BAA892D0D6FDBD02756CB568B1916013A1EE54B274F745C51ACE5FB047B9302486063BC2FE8FA14F0B679D29A4ED59B0888009B986C48FC6DEA7FF1B43171';
wwv_flow_imp.g_varchar2_table(17) := '8BC0E7F3DCFE5BA6AC89FC53606D20A0D3D5B600958B9F9210017677163EFFF7B9F618163DFBF5AF556AAFDFFBB06A776D789BBBAECD69BE0830F269FB5BF9FD7FFD7BD4DDEAE4F44FAE51374E58B908D072783E88FC9BCC96655B87DFBFF7CFAD722FBC';
wwv_flow_imp.g_varchar2_table(18) := 'F6979B55B7EBA74D2C1C6A233A722A2240CB69FB5F80F937992DCBAA616E651F9457FE70BD1AAB37DEBC7DBB12F93595B063C3DBDE716936D34580098EDAFF928AA70024F0C1FE8F8F3F2E90F9DBDFAFE962A25FE79F5E5D74E434570468396D1F443E9F';
wwv_flow_imp.g_varchar2_table(19) := '6F59B636CC53C0FFF5094840B0FFE2B7BF2928AFBEF3BB02992D622E6BAC5FA8311A0222C068D0AE2B269F27B0D7A59B3DFE99237337472419030111600C541B7412D8FCFB6188E0737CDAC818D3CDDF00DE486211602460F7530B115E3D7FA1FA87F4B4';
wwv_flow_imp.g_varchar2_table(20) := '91EDB74663E3202002B4E0EA7FA194C2EDEC6DF4B6B7B899EDB00890EDD1A7E1F8D8568A0063232CFDB346400498F5F1C8B8B11110015A103E70F05035A3EB5F4FAE164ED8F0367ADB273421A9AD4480A48E4BC6C6464004888DA8F42585C08C0990148E';
wwv_flow_imp.g_varchar2_table(21) := 'B33176C8BF21988D13131A2202B4807DE0D0C16A8682AB8262310D11609FA3E4DFD5FA6F837BF7EE07FBCC9EDF10BF08C387F959361F8B448086B320707CF0374C9B9DB84E527CC097D9193A138344802D0741C01038F521BEA9A12E1BD2BF74ED6AF915';
wwv_flow_imp.g_varchar2_table(22) := '89FEA3CB21FA58BBCD467CC127C655D6111001D6F128081402C6C4FE3FA746162B58F9B608829582DEB512A9E36DC7277C8BA47A316A44007794040881622202E8F913278BE3EE7F62B1B19875AC37D790CAECC2666CC70793E11B3E5A5FB5BE19AE8A01';
wwv_flow_imp.g_varchar2_table(23) := '0283003101814300D13FFED5AF5095A5CF37B6950B277E319BF1015F6C7B7CC457EBE75EEB09B08A000282C05835CB1F0286C0293BAB97E347BEBC7A9DFF8F7F03EC6DC6177C320FF0159FAD9F739D3D01080402C28280402160AC4F7DECF061AAB28C99';
wwv_flow_imp.g_varchar2_table(24) := 'B3971B0C78F1B6799B51894FF8469B82CFF84E3BE7923501080002C10280002150ACEF6B726AEBC77A236CFA62D4F5FC7F9B4E7CC3471BC37730B0FE1CEAA96DC896001C3C01608013180488F5F7ABE7FE3EC0F2FF6D3EE023BEDA1818F86FBE30792E75';
wwv_flow_imp.g_varchar2_table(25) := 'B604E0E0ED90B9DD090CEB6FABCFECED55629F6A54C21D37F83F05CC84365F18C7679BCF6560EDDCEA2C09503FF0F3A74FB79E3B39B50F9A39A54121E94FDD41EF337F6522D7A7409604F0B7BF4F07EA4152EFFBA7C05CD3A0FDD29F0D7F4E9DAA448FEE';
wwv_flow_imp.g_varchar2_table(26) := 'DEA9DA3935B22340FDA6231DE873E0734A83BAA43FDE577CF74FB53A367EEE52DB3322C03410FB2F8CED72FB63DD1CD3209FFE74F5079F7CA9A7867E6CA9EDEC0830F4969B5B1AE46FFF3E41EAFDE9B33EF535D911C01F98FF6DA997EFD7F64F01D2A05D';
wwv_flow_imp.g_varchar2_table(27) := 'BE19F6B73F3693D250AB8423901D01F8C4C3E02198ADDDA5F6B7E65CDE0CF74D7F3C061E9B2E78A43C373B02C4382C1F34BB7A0A70FBFBF447B77FBF931501FAE156F81B77F053A0870DFE2FBE795B7AA8CA7A8908D0F3F8FD8D3BF55380DB9F3DCD746F';
wwv_flow_imp.g_varchar2_table(28) := '8BC9548721200284E1B475D68517CF56F2299F023EF5D1ED5F1D41AF8608D00BB6C78B782F60BF48E246E6667E3C32DEABDF83BD75FB0FC35A0418865FE13F11E2661EF3635174B38799DCE5AF3DD81AD5EB088800EB7874EEF9A7008BC74C85BC6E529F';
wwv_flow_imp.g_varchar2_table(29) := '25DCFE60B6CB22024440DFDFC463A542A43EE88E60AE543804440007469FE69F3FB85BBC77EBD6DA52D214D29535E1800EBAD0E955B0277B7B99DADD111001BA6356ADB876F3E646F0DBA04F574CD6B7F6BAFC77FE8B047D11FD7C9D08F03916C1AD7B9F';
wwv_flow_imp.g_varchar2_table(30) := '7C5210FC1F7E74BF5AF3C5A3478B83CF3D57588092AEF0CD6FD5849E8D7AEAF3D433270BF6327590005BACAFBA1B02224037BC0A82FFEA1F6F14F5E0FFD28A00A8B29A3624208069F729ACF5A9CF53279F29D5B0872701B6BCF6F65BA56DE504BD0423B0';
wwv_flow_imp.g_varchar2_table(31) := '430204DB389B89E4DC04BF37884024204DC6D7A923B33E014C205B3FB4660D6B6D3E3AD16D7DF644667D6A6CC346DA2A610888006138150416E9869FCE8D4C207A196D643E380964029AB1B6C21B5EE6B2C6E6A20B9DD6B71A1936589F1A1BB195B64A3B';
wwv_flow_imp.g_varchar2_table(32) := '0222403B461BC14F9E4FE0F91BB9AE86E0649EC909E817AE5C2EACD0DF3676F18DD70B3F860E74D9DC7A8D0DFEBD07E3220128841511A00527DE601250368D80E48D288167B2A69A79DCDE4DE36D72DBAB6D1EE3F5BDB0594F0290D9BF88000DF8F06697';
wwv_flow_imp.g_varchar2_table(33) := 'E0E70DA64D21980934EB87D4DCDEACA384CC27E8293C61FAEE65FB40027CB0BEEA4D0444804D4CCA4F537843590F7E8279CBF45611EB28A42A65597D5CEA0941DBE4043D25E409B36D63F6419F8DE1833E213234366B11A086096903C1EFC5041481E565';
wwv_flow_imp.g_varchar2_table(34) := '736E632B367B1BF109DFBC4C6DFDFF00650C90EE504817481B4AE19317521102EA4937990A9BB1DD1B8C6F9080E2E539B7B37E02901A50B81D29A40B160C9687F74D454CCF2E6B6C27B5C217B3031250F0DB8A8DE558674D80A603277D18928737E9F5F2';
wwv_flow_imp.g_varchar2_table(35) := '2F1C3CE4BBA3B6F1059F46DD2451E5D911605B2070435218236D207D98E23CD99332C57EECC1D3001F29DBFC6B926F9BDB5736B775D911C0028160B0C20D49618CB4618A43621FF6A44CB19FED818F14F3DDD7C86D5E2E757604C8E560E5671802224018';
wwv_flow_imp.g_varchar2_table(36) := '4E9AB550044480851EACDC0A43400408C349B3168AC08404582882722B69044480A48F4FC60F454004188AA0D6278D800890F4F1C9F8A10888004311D4FAA4111001A6383EED315B044480D91E8D0C9B020111600A94B5C76C111001667B34326C0A0444';
wwv_flow_imp.g_varchar2_table(37) := '802950D61EB345400498EDD12CC3B0B97B2102CCFD8464DFA8088800A3C22BE57347400498FB09C9BE51111001468557CAE78E800830F713927DA32230220146B55BCA85401404448028304A49AA088800A99E9CEC8E828008100546294915011120D593';
wwv_flow_imp.g_varchar2_table(38) := '93DD51101001A2C05853A26E32088800C91C950C1D030111600C54A53319044480648E4A868E8180083006AAD2990C02224032479586A1A9592902A47662B2372A0222405438A52C35044480D44E4CF646454004880AA794A586800890DA89C9DEA80844';
wwv_flow_imp.g_varchar2_table(39) := '244054BBA44C084C8280083009CCDA64AE088800733D19D935090222C024306B93B9222002CCF56464D7240888003160968E64111001923D3A191E03011120068AD2912C022240B24727C363202002C440513A9245400448F6E8E66178EA567C060000FF';
wwv_flow_imp.g_varchar2_table(40) := 'FF6E817BB000000006494441540300F468B8DBC4BF5FEA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4585226316152463889)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013061006Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061006Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D5DAF25C75586EB38A0C8966C628FE441F25843B0B0104C86C4265704E21133377085B8E4D27284F8131E5FF017108AE54B2E113F60064D';
wwv_flow_imp.g_varchar2_table(2) := '02E1CAD884C380905108962712B634364AA458168977FAE93DB5CF3AB5BBF7E9EEDD5D1F5DEFD159BBAAEB73AD77F57AABBA76CF99C79C7E848010A816011140B5AE97E142C0391180EE022150310222808A9D2FD3EB4600EB4500A020110295222002A8';
wwv_flow_imp.g_varchar2_table(3) := 'D4F1325B0880800800142442A052044400953A5E66D78D80B75E04E091502A042A44400450A1D365B210F00888003C124A8540850888002A74BA4CAE1B016BBD08C0A2A1BC10A80C011140650E97B942C0222002B068282F042A4340045099C3656EDD08';
wwv_flow_imp.g_varchar2_table(4) := '84D68B004244742D042A4240045091B365AA10081110018488E85A0854848008A02267CBD4BA11E8B25E04D0858ACA8440250888002A71B4CC14025D088800BA50519910A804011140258E96997523D067BD08A00F19950B810A101001F438F9ABF7EEBC';
wwv_flow_imp.g_varchar2_table(5) := 'D225D7EFDDB92DC917832E9F51D6E3E6EA8BAB25006E0A8460FE9D7B77EF79B97EEFEE06F9DC9DDCEB12E74E5E97E48B4197CF28C3A75ECE7CBD2532EE0357E94F35048093CF1C7F77C34D81B826A037CEBDE2C5E967F5089CF97A4B64DC079003F7070B';
wwv_flow_imp.g_varchar2_table(6) := '02B226100ED9B25A0220E071E4D6A9DB803F73FC214854572B02DC1FAE5910104B08DC4B6EA53FAB23009C45D0C3EAAE71E6D6A94E3F42603402DB7BE7E475EE2508810565F4209977580501F8A0C749386BEBB8CC91977A052270F23AF71844801468C0';
wwv_flow_imp.g_varchar2_table(7) := '9ECA4513800F7C05FD9E5F55B02802DBB30348005974AA2307BFA87B9104A0C0BFC8ADAA8F83C01911C4996FFE598A230018572BFEFC3782463C0681B34783634649D1B71802F0ABBE6B0EF69C7E844096084004776E67A95A8F5245108056FD1EEFA938';
wwv_flow_imp.g_varchar2_table(8) := '430420015E264B4F0443C0C99E00087EA755DFE9A734042082FC49206B0250F09776D34BDFF308E44F02D9128082FFFCADA4AB5211C89B04B22400057FA937BBF4EE46203E0974EBB15F9A1D0128F8F79DA49235209027096445000AFE35DCE8B2A11F81';
wwv_flow_imp.g_varchar2_table(9) := 'FC48202B02703AED77FA593B0227AFF34E4B2E56664300DBD53F1758A48710580E81CDC20BDD18CDB320806DF0F35EF518D5D556089489C0C6B957B6F77C7AFDB320009711233AFD08812808E4F128909C007261C2283ED72442C020B0C960E14B4A00DB';
wwv_flow_imp.g_varchar2_table(10) := 'E0D7D6DFDC13CA5684C0A6791498FB40702C7C490960ACB26A2F04D686C026F12E20190168F55FDBAD2C7BA620B049BC0B48460053C0521F21B0460436097701090940CFFE6BBC9965D3780436CD2E607CAFFD1E534A9210C076FB3F455DF51102EB4420';
wwv_flow_imp.g_varchar2_table(11) := 'D5616012027009B73C4E3F42204304368962223A01A462BA0C7D2E9584C00E814DF318902236A213C0E78DA13BAB951102426087C031B1B11B6464263A019CB8936F8ED451CD85401508A4888DE804C056A70A6FCA482130128114B111950074FA3FF28E';
wwv_flow_imp.g_varchar2_table(12) := '50F3EA10887D0E109500AAF3A60C16022311D84CF83660E414E79A47258014CF38E7ACD585101002E710884A001B7D03700E7C5D08811081D831128D00623FDB84C0EA5A08948240CC5889460029BEE32CC5E1D253084C45E0D87ED108E05845D55F08D4';
wwv_flow_imp.g_varchar2_table(13) := '8240CCC5321A01E800B096DB57761E8B40CC58894600C782A2FE424008CC8F403402887DBA393F541A5108E485C01CDA4423803994D51842A00604622E9622801AEE28D928047A1088420031BFD7ECB153C542A0280462C54C1402280A79292B040A4060';
wwv_flow_imp.g_varchar2_table(14) := '2E1545007321A9718440810888000A749A54160273212002980B498D23040A44400450A0D3A472DD08CC697D140288F96EF39CE0682C21900A8158311385005281A879FB11F8FF870FDDA7EFBDD70AF9FE96AA5933022280357BB7C73602FE670D01F86A';
wwv_flow_imp.g_varchar2_table(15) := 'F294F96BA5F5202002A8C7D7ADA5043A01DF5E980FCAA83345CA6688C0DC2A8900E64634E3F1087002BD4F45EA68D357AFF2F5212002589F4F3B2D22B009705B79EB6B2F39C496D186B6B64CF9F522200258AF6F779611D004F6AEA0C910F8CF3EF9A443';
wwv_flow_imp.g_varchar2_table(16) := 'C83745BB5FDAD26757A0CC6A111001ACD6B55BC30864027A7BE5DCE5672EB5AB3E81EFCBC88B043C1AF9A64B6826025802D54CC60C831FB56E5EBBD6AEFAE4AD40027FF607DF6C09C297431C9FFFF4537FA9748508880056E8544C22700960F25EC255DE';
wwv_flow_imp.g_varchar2_table(17) := '97DBF4FAD5ABF6D27DF6E003C758E70A75B11A044400AB71E5794358FD6D09C1CF2A6FCBBAF2B4A1ADAD0BC7B275CA978D8008A06CFF756AFFD9070FDCE79FFE745777FD85173AB7FDBB06410612A08F2F662CC6F4D74AE323B0D48C2280A5904D342EAB';
wwv_flow_imp.g_varchar2_table(18) := '3501EBA72790BFF2DC157F3938A50F7D7D07C6646C7FAD741D088800D6E1C7D60A02D43EF713C004725B39E183BE7C6BE0BB32B6CE033C1AEB484500EBF0636B0501DA661E7D10C08FB29313BE35B024C0A1E0E4C1D4313B044400D9B9649A42ACFEB667';
wwv_flow_imp.g_varchar2_table(19) := '789067EBC6E6F7BE1968CE18C68EA1F6D31158B2A708604974238D4DF0DBD59FAD3F0779734DCF588CE9C7D3798047A2FC540450BE0F5D18FC736CFD435818D33E0A30A7CE034294CABB160194E7B3731AB3FADB0202D55ECF990F1F05C2B9E79C4B63C5';
wwv_flow_imp.g_varchar2_table(20) := '4140041007E7456621005989FDE0769BEECBE64CBB1E05B40B9813E1FDB1962E11012C8DF082E3DBE0677BBEE4EAEFCD600EE6F2D79090CF2B2D0F011140793E6B350E03EFF2D35F6ACB637CD847011D08C6407CB9394400CB61BBE8C876F567EBCFCABC';
wwv_flow_imp.g_varchar2_table(21) := 'E88466701E05EC2EC0EA629A295B00022280029C14AA18AEFE1F7EF27FEEEEFDFB51E5229DC27A5D8F4720460F11400C94679E235C713FFCF8A14B21D62C74D281A045A48CBC08A00C3FEDB40C57FF5D4506999C75CB009E2C55100164E9967EA558697D';
wwv_flow_imp.g_varchar2_table(22) := 'EDD7AF7ED9FDC5EF7D23B9787D3810F479A56520200228C34FAD96E10AFBE6CD5BEE5BBFF95B49E5E5672FB7BAF90F3D0678248E4B63F51601C4427A86796C70B1F2CF30E4D143BCFCCC25C74EC40F1492942F579A270222803CFDB2A715C19FEB16FBCF';
wwv_flow_imp.g_varchar2_table(23) := '5F7A69A72F3AA2EBAE4099AC11100164ED9E33E57E6EFEC417A56CFD497310ED0272F0C2341D4400D3708BDECB1EFEE5B2FDB72084BB005BA7FC380462B61601C4447BE25CE173F55CABFF3B1F3F9CA8D17E377601B6548F01168D7CF322807C7DD3A9D9';
wwv_flow_imp.g_varchar2_table(24) := 'B1AB3F41FFDADD3BEEAB6F7DDBBDFA777FDBA6E429FBF67FFE47E79C430B75183814A97CDA8900F2F145AF2676FBDFDB684005014ED0BFFDFE0FF75A53F657FFF43D479BBDCA81057A0C18085446CD44001939A34B95702B3D75FBCF2A4F8077CD61CB68';
wwv_flow_imp.g_varchar2_table(25) := 'C36EC0964DCD87BA4F1DA7A67EB16D1501C4467CE47CF6F4DF6EB1C70C13AEEABFFEECAFBAD7BEF1FBEE2FFFE88F5BB9F9DBD71C657E4C7603611F5F7728E51CC0EA68753FD44F75E9101001A4C37ED0CC7615FDFA95E706F5B18D78E66755F76504FBAB';
wwv_flow_imp.g_varchar2_table(26) := 'BFFBB2FBB5A79EF245EEC6D5AB8E32EA7C217DE8EBAFA7A456F729FDD56779044400CB637CD40CBC58E307085FBBF5E587D2773EFAF05C35C17EAEC05C506777027FFDEEBBA6765856E700C370CAA5950820174F74E811AEA06CB13B9A1D2C7AFBC18F76';
wwv_flow_imp.g_varchar2_table(27) := 'F57685DF1506993F7CF13782927197A18EA10DE346ABAB750A6B450029501F38A77D86B6CFD603BBB7CD789E6F33CDC7979F7EBAF91CFE6BFB0EEFE5CEFDDB8031FDD4363E022280F8984F9A71CAF33F138D258E1F7EF209DD6693F025A6D906D640B320';
wwv_flow_imp.g_varchar2_table(28) := '20029805C66506997BFBFCF7EFFDD72845A7BE743495AC4629A7C6B32020029805C66506B107805367B08772FFFDD1FFBAFFF9F18F7B87A2EEEEBFDFEFAD1F5A610F2BE7B061E8BC25B74BA5BB082015F223E7B54135A62B8772F631E0CDEFFDA3BBF7FE';
wwv_flow_imp.g_varchar2_table(29) := 'FB7B4310FCE10E61EA4B47E1E073EF64C2F1753D1D0111C074EC16ED19060D813C7542BB0B600C567948C0CB5BFFFC8E8318D821508F4CDDFED3F7185DE92F89878008201ED6C9662220C3808604BCD8C04749DACEB5FA339E245F044400F9FA6656CD08';
wwv_flow_imp.g_varchar2_table(30) := '6802FBD0A03C2ABCF5277FDAFE8DC143ED86D431D690766AE35C4A0C440029D13F30F71CEF0084C34302DF7FF55BBBBF224C9022100381FFE6CD5B8EDD42D8EFD86B6BCBB163A9FFBC088800E6C5B388D12002848047C82F11F8458051B9922280CA6F00';
wwv_flow_imp.g_varchar2_table(31) := '995F3702228002FCAF176B0A70D2441553771301A4F6C080F9DF36FFA06740F32C9A88B4B270C3854A88002E84480DA6205022694DB1B3F43E2280D23D28FD85C0110888008E006FC9AE5F78FC892587D7D8192090830A22801CBCB0721D4466F93A5804';
wwv_flow_imp.g_varchar2_table(32) := '90AF6F769A4DFDC31CBB0112644AD439014CC9A71401247781141002E9101001A4C3FEE0CCE15FD239F62FF41E9C6CE6CA50D7D09699A72B72B85C941601E4E209A3C7671F3C7025FF218DF02F11630B36191395CD04011140268EF06A1028048CBFF669';
wwv_flow_imp.g_varchar2_table(33) := '1854BEFC9894951A39668CA17DB109DB86B657BB38088800E2E03C6816028440E96A3CF78B35FCCF3FFC3F818848A00BF13ACA440099F8390CFECBCF5C72B7BEF65214EDE6DE5DF0BF0A79C5AFBFF082C3167F0DC161ABBFAE31CDC966114006DE202008';
wwv_flow_imp.g_varchar2_table(34) := '0CAF0A0173F3DA357FD9A6A57EAD76F9A95F71D8824DAD21CD07B6627393D56F62044400891D402010105E0D028580E1FAD9279F24D949ACADFA6EC209191E2D6C376F0336619BAFC3666CF7D74AD320200248837B3B2B014020B417CD070142A034D9DD';
wwv_flow_imp.g_varchar2_table(35) := '2F65FE62CAFFD5E7FBA648ADEECC8F6DB60CDBC1803A491A0444006970777C374E00F8E9090C02C45FFBF4F2D35FF2D922527B58D9A53B3662AB37060C6A22016F772EA90820812708FE9F3D7CB89B99802030760526C333B4BF2CE11CC0EA6875F73690';
wwv_flow_imp.g_varchar2_table(36) := '622B369347200130212F898B8008202EDEEDCA3F34F851CD3F439347723E07E87BFE47EF5042120013914088D2F2D72280E5313E370337BA2F60152410FC755F4A3B5F57CA39005FFF799DFB526CB7B6596CFAFAA87C5E044400F3E27970B47085BB7EF5';
wwv_flow_imp.g_varchar2_table(37) := 'EAC1F6BED2B6B35B6C5F9F4B6ABFFF1FAA93B58D3E6B3E0FC0BEDC440410D123768563850CB7F77DAA84ED727C0C08B7FF5F79EE4A9F39E7CAB10D2C7C21E701E17F8BE6EB94CE8F8008607E4C3B470C57FFA101E207B35BE5DC1F036C407BFD0FA563B1';
wwv_flow_imp.g_varchar2_table(38) := '383496EAC62120021887D7E4D676551B1B204C6AB7CA3C06E4B60BB0DBFFBED37FECE8134B702159F6F551F9F10888008EC770D0086C6D0735EC69C456D906494EBB8070FB8FAE3D66F4165B823B16ABDE491256E43AB508208267ECEACF7453B7BC3648';
wwv_flow_imp.g_varchar2_table(39) := 'D80530560E6257FF29BB1B6C084923C48C3692F9111001CC8FE962231224761710AEBC8B4D7C60E05087A9E476600A552D888008604170FDD0F67FC7B501ECEBC7A4F6F55AFBDAED9831E66C3BC7EAEFF539161B3F8ED2E1088800866395454BBBC2F218';
wwv_flow_imp.g_varchar2_table(40) := '10AEC031950CE7B6BA1DAB8725CD63C74ADD3FE7F94500397BA74737BB52DA15B8A7F962C576EEA9CFFE8B29A781072120021804535E8D7885D66A14AEC4B66EA97C38E79CABFF523A6BDC7D044400FB98145162575C56E2D8EF0530A707CAEAE2CB9496';
wwv_flow_imp.g_varchar2_table(41) := '818008A00C3FED69C98A6B1F0562BE1760577F7440973D0555D02290FB870820770F1DD02F7C2F20C62E80E0B7ABBFFD56E280AAAACA14011140A68E19A256F85E007FE27B48BF63DAD8E067EBAFD5FF1834D3F71501A4F7C1511A842BF06B77EF1C35DE';
wwv_flow_imp.g_varchar2_table(42) := 'A1CEACFE87EA55571E022280F27CB6D3F8DF7EF4C09DFEE007BB6B32BC1BB0C4A300C16F57CAABE107000007E4494441547FE6626E74202FD947A084121140095EEAD091C023003BAA1C8F0273934018FC7E5E7440177FADB42C04440065F9ABD5F6EEFD';
wwv_flow_imp.g_varchar2_table(43) := 'FB7B2BFF2F5DBAD4D6F98F39BF15081F2BBE78E5793F4D9B8A045A188AFC100114E63682FFC38FCFFEA2F0638F3FE108C85F6E0880D49BC3A34018B8BE6E4CCAD69FB17C1F88E6B1271E6FE7646E5F0E09A09BBF565A0602228032FCE43EFAC94FDCDFFC';
wwv_flow_imp.g_varchar2_table(44) := 'C377DD5EF03F7FC5119098414A809247085C0298FC14A1AFDDFA333644C358CCF545E66E08886B04DDD0115DB9AE594AB15D045080A708A83BFFF2EE394D094602F05C61734180DA95990026909BAA51BFF4A1AFEFC47C8CEDAF7D8A0ED4F96B5274D5B9';
wwv_flow_imp.g_varchar2_table(45) := '0048E42F2280CC7D44201150564D02AE2B187D1B82B28B04086A2FF69F1293F7E5A43C3AD8E067DC43F351874EB4F3C22301BAFB6BA579222002C8D32FAD56041081D45E3CFA20D008B84797BD49D88680B6C2E381EF4CBEAF8E36F66C81EB2E613E74B3';
wwv_flow_imp.g_varchar2_table(46) := '75E88E0DB64CF9BC101001E4E58F9D361CA81140BB8226432012684DF6C25F9ED11F7FF14567770217760A1AD09739192BA8EABC4437DADB4A6CA88D04ACFDB9E74500197A88E0E740CDAB3636107D3F521E07589911C6F1429D175FE653DA12C8F41D1A';
wwv_flow_imp.g_varchar2_table(47) := 'FCBBB1F40D8187A288540490919B38ECE3147D2FF8396D6F026BAAAAACCC0801ED8520F7E311E4BE9C94B694F9FAB1297D190742F17DB109DBB0D197294D8F800820BD0F5A0D088CAEC33E02A96D50E007BA5BA2C1046CD4230148E4212280847E20E811';
wwv_flow_imp.g_varchar2_table(48) := 'B6FC04865585C06125B66525E6B1015BACEEFE5C0022C07E5B577ABE34FD4500913DE6B7C26C87097A8432AB060143E0D8B292F3D8824DD6064800C17EB040421C6C7BE597414004B00CAEE746FD82795BEE5C4570C13333876F044C5055FC2536F1AD44';
wwv_flow_imp.g_varchar2_table(49) := '4804C51B56B8012280080EE450AC6F1A821E21F079663ED4B66F8C29E5434969CAD887FA40049000D2D70E3C68D757AFF2F9101001CC87E5C19158FDDA20BFF27CFB0F69C8B765CD097FCCC0F74A4234CC8FC40E36E643981B018B73D260E2F52C292D51';
wwv_flow_imp.g_varchar2_table(50) := 'D72804D04CF29D12C1995B6782CECADCE3973A9EC5847CA976CCA977AC9869E699536D8D25048440490888004AF296741502332320029819500D572702A55A2D0228D573D25B08CC8080086006103584102815812804F0FD1BB7F42D40A97788F44E8240';
wwv_flow_imp.g_varchar2_table(51) := 'AC988942004910D4A442201202254F138D004E9CD32EC0E94708E485403402C8CB6C692304F24520E6622902C8F73E906642607104A211C0C66DBEBBB8359A400844466089E962C64A34026826D219C012778BC614024720D0C4E511BDD555080881D911';
wwv_flow_imp.g_varchar2_table(52) := '688232DA62D9CC35BBFE9D03C6FA5EB37372150A81821088192BD10800FC639E6E329F44082C89C01263C78E91A804B004601A5308AC0981980780E01695004EDCE60D2695080121900702510920E6B34D1EF04A0B21300E81D31BB76E8FEB715CEBA804';
wwv_flow_imp.g_varchar2_table(53) := '80AAB19F7198532204E6466089F152C4467402D8E885A025EE1D8DB9020452C446740268268CF61DE70AEE09995011022962A399332EC29C03A4D8EAC4B552B30981F108101BE37B1DD7233A01A0AEBE0D000549A9082CA3779A6FC89210400AA65BC669';
wwv_flow_imp.g_varchar2_table(54) := '1A5508CC8340ECD37FAF75120260723D068082440880409AD59F991312403AA3315C2204848073C90880C78013FD9930DD83852130BFBA9B37526DFFB125190130B90E0341412204D221909400B40B48E778CD9C030269577F10484A0028A05D0028486A';
wwv_flow_imp.g_varchar2_table(55) := '4420E5D6DFE39D9C00D80538FD2B41EF0FA5192330AF6A791C8227270040850975200812923A1048BFF5F73867410028A347015090D480000B5E2E766643007A14C8E596901ECB2290C7D6DFDB980D01A0D09619F30208BD2442601E04F2D9FA7B7BB222';
wwv_flow_imp.g_varchar2_table(56) := '009412098082647D08E417FC609C1D01A09448001424EB4120CFE007DF2C0900C54402A020291F817C831F6CB325009413098082243502D3E7CF3BF8B12B6B02404191002848CA4320FFE007D3EC0900252181D31B374FF4C62068487246A0B949BFF398';
wwv_flow_imp.g_varchar2_table(57) := 'DBDC388DFCE7BDA76252040178E3B6A0EA6B428F87D2DC10D8BCF1AF376EDED8BED3929B6EDDFA1445009800099C6A3700149208080C99A2B455DFDA541C0178E54FDB2D16BB01C4972A1502F110F0815FDAAA6F112A960030021240B66703220230912C';
wwv_flow_imp.g_varchar2_table(58) := '8FC01A02DFA354340178232081ADE8A0D063A2745E047CD09F368F9F25AFF8212AAB20006BD469F36870DA38899358760638CED62B2F048622B0BD77366F702FAD29E8ADFDAB23006F1C27B1A70D19E0B8D38610200364EB54DF4AA9103843807B0321E0';
wwv_flow_imp.g_varchar2_table(59) := 'B967B6F7CEADDBDC4B67ADD6955B2D01846E3A6DC800D93AF5E6094E8610109C8E847D74BD3E04F0B3177CCF7D809C368B04F706B2E6800F3D5A0D018486E3E453430A38FEB4B909BC70537409378D8403D73CA5CB679479BFE2672FA78DFFB90F90F0FE';
wwv_flow_imp.g_varchar2_table(60) := 'A8E5BA5A02B8C8C1DC145DC24D23B9753B570CBA7C46D945FE0EEB6BB91601D4E269D929043A1010017480A22221500B0222805A3C2D3B8540070222800E505454370235592F02A8C9DBB255080408880002407429046A4240045093B765AB1008101001';
wwv_flow_imp.g_varchar2_table(61) := '0480E8B26E046AB35E04509BC765AF10300888000C18CA0A81DA101001D4E671D92B040C0222000386B2752350A3F522801ABD2E9B85C0230444008F805022046A44400450A3D765B31078848008E011104AEA46A056EB4500B57A5E760B810601114003';
wwv_flow_imp.g_varchar2_table(62) := '827E8540AD0888006AF5BCEC16020D0222800604FDD68D40CDD68B006AF6BE6CAF1E011140F5B78000A819011140CDDE97EDD5232002A8FE16A81B80DAADFF05000000FFFF9D54E5480000000649444154030036E870978587321A0000000049454E44AE';
wwv_flow_imp.g_varchar2_table(63) := '426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4585226613932463889)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013061006Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061006Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000001BE494441547801EC94CD4AC34010C7A7A9426DA9D6265541F1E352A5A0087D01C58B1E3DFA02BE8AAF208A176F9EBC78147D0069113FAAA2152AEDA142B4A868';
wwv_flow_imp.g_varchar2_table(2) := 'EB476BFF2B9BC682C9EEE65090046677767632F3DB4976B499C3FD462745A30E3F3E805F01BF029E2AF0619A04F1729395019038158BD1FCE898270825009E7C7A788406A2510248FDF54DA9104A00895088253B2D15098205A030CB8A3400122D8F4FD0';
wwv_flow_imp.g_varchar2_table(3) := 'F6DCC22FD95C5C22952A4803E084AB53294CB4769C6582453AAED36C2402554AA401D2468225C83C986456AB4C984171500030582A9C38D9BC052BC949B6C690367EF6A08B8A34C051B164C5C6A70088655050A400F0033AE5009C9B4FFBFBC200088CFB';
wwv_flow_imp.g_varchar2_table(4) := '5EEB6ABD82FF00C283620F3E32B7A1158D47F9631E8AF5131ACF606F1FD99372F78DCB1CDB874FBC51E766D75918204E0D160C9D6FF736CF74FB500B04AC256F5496C1411106B0C7B87B79269C98DBA0EFE5727C29354B03A0F55ED5DE9B0017B49ECD52';
wwv_flow_imp.g_varchar2_table(5) := 'E6BECCF44A386CB56519026180F263850EF237741D0C9216EEA16E5DA793AF4FDA2A14980E1BF676CECF08BEA2109AA8E393A153A5ADD52229C41E0360F0B5DB9C746100A7205EF67C00BF02FFBF026E37E41B0000FFFF4A5B3114000000064944415403';
wwv_flow_imp.g_varchar2_table(6) := '00D9DCE5414B7F27860000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4585225797884463888)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013061006Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061006Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD4FAF74C95D1FF0D62411B2251B8C250F11634D8815142583053664035944319B6415E51DC4328A780B59E72D1064E41DB0888258251B3B';
wwv_flow_imp.g_varchar2_table(2) := '421058391E1021081139C49AB1145B1A138C34230B3CE17EEFF3F433FDF4EDEEAAEE3E7FAA4E7D46CFB9DD7D4E9DAAFA7DEAA8EB77FEDC3BAF7CFAB7BEF2FF2D0C1C038E01C78063C03130D631F0CACE7F040810204080C06002BB9D0460B82117300102';
wwv_flow_imp.g_varchar2_table(3) := '040810900038060810204080C0700209D8158028580810204080C060021280C1065CB80408102030BAC0B3F82500CF1CFC24408000010243094800861A6EC112204080C0E802FBF825007B09AF040810204060200109C040832D5402040810185DE083F8';
wwv_flow_imp.g_varchar2_table(4) := '25001F5878478000010204861190000C33D4022540800081D1050EE397001C6A784F8000010204061190000C32D0C22440800081D1055E8E5F02F0B2874F040810204060080109C010C32C4802040810185DE0387E09C0B188CF040810204060000109C0';
wwv_flow_imp.g_varchar2_table(5) := '00832C4402040810185DE069FC1280A726D6102040800081CD0B4800363FC4022440800081D1054EC52F0138A5621D0102040810D8B8800460E3032C3C02040810185DE074FC1280D32ED61220408000814D0B4800363DBC822340800081D105CEC52F01';
wwv_flow_imp.g_varchar2_table(6) := '3827633D0102040810D8B0800460C3832B3402040810185DE07CFC1280F336B6102040800081CD0A4800363BB4022340800081D1052EC52F01B8A4631B0102040810D8A8800460A3032B2C02040810185DE072FC1280CB3EB61220408000814D0A480036';
wwv_flow_imp.g_varchar2_table(7) := '39AC822240800081D1054AF14B004A42B61320408000810D0A48003638A8422240800081D105CAF14B00CA464A102040800081CD0948003637A4022240800081D1056AE29700D4282943800001020436262001D8D8800A87000102044617A88B5F0250E7';
wwv_flow_imp.g_varchar2_table(8) := 'A4140102040810D89480046053C3291802040810185DA0367E0940AD9472040810204060430212800D0DA65008102040607481FAF82500F5564A122040800081CD084800363394022140800081D105AE895F02708D96B2040810204060230212808D0CA4';
wwv_flow_imp.g_varchar2_table(9) := '3008102040607481EBE297005CE7A5340102040810D88480046013C3280802040810185DE0DAF82500D78A294F800001020436202001D8C0200A81000102044617B83E7E09C0F566F6204080000102DD0B4800BA1F420110204080C0E802B7C42F01B845';
wwv_flow_imp.g_varchar2_table(10) := 'CD3E0408102040A073010940E703A8FB0408102030BAC06DF14B006E73B3170102040810E85A4002D0F5F0E93C010204088C2E706BFC12805BE5EC4780000102043A169000743C78BA4E80000102A30BDC1EBF04E0763B7B1220408000816E052400DD0E';
wwv_flow_imp.g_varchar2_table(11) := '9D8E13204080C0E802F7C42F01B847CFBE0408102040A053010940A703A7DB0408102030BAC07DF14B00EEF3B3370102040810E8524002D0E5B0E934010204088C2E706FFC12807B05ED4F80000102043A149000743868BA4C80000102A30BDC1FBF04E0';
wwv_flow_imp.g_varchar2_table(12) := '7E4335102040800081EE042400DD0D990E13204080C0E80253C42F019842511D0408102040A0330109406703A6BB0408102030BAC034F14B00A671540B0102040810E84A4002D0D570E92C010204088C2E3055FC1280A924D54380000102043A12900074';
wwv_flow_imp.g_varchar2_table(13) := '3458BA4A80000102A30B4C17BF04603A4B351120408000816E042400DD0C958E12204080C0E80253C62F019852535D0408102040A0130109402703A59B0408102030BAC0B4F14B00A6F5541B0102040810E8424002D0C530E924010204088C2E3075FC12';
wwv_flow_imp.g_varchar2_table(14) := '80A945D54780000102043A109000743048BA4880000102A30B4C1FBF04607A5335122040800081E6052400CD0F910E12204080C0E80273C42F019843559D0408102040A071010940E303A47B0408102030BAC03CF14B00E671552B0102040810685A4002';
wwv_flow_imp.g_varchar2_table(15) := 'D0F4F0E81C010204088C2E3057FC1280B964D54B80000102041A169000343C38BA4680000102A30BCC17BF04603E5B3513204080008166052400CD0E8D8E11204080C0E80273C62F01985357DD0408102040A051010940A303A35B0408102030BAC0BCF1';
wwv_flow_imp.g_varchar2_table(16) := '4B00E6F5553B010204081068524002D0E4B0E814010204088C2E3077FC1280B985D54F80000102041A149000343828BA4480000102A30BCC1FBF04607E632D102040800081E6042400CD0D890E11204080C0E8024BC42F015842591B0408102040A03101';
wwv_flow_imp.g_varchar2_table(17) := '09406303A23B0408102030BAC032F14B009671D60A0102040810684A4002D0D470E80C010204088C2EB054FC1280A5A4B54380000102041A129000343418BA4280000102A30B2C17BF0460396B2D11204080008166042400CD0C858E10204080C0E8024B';
wwv_flow_imp.g_varchar2_table(18) := 'C62F0158525B5B0408102040A0110109402303A11B0408102030BAC0B2F14B0096F5D61A010204081068424002D0C430E804010204088C2EB074FC1280A5C5B54780000102041A109000343008BA4080000102A30B2C1FBF046079732D122040800081D5';
wwv_flow_imp.g_varchar2_table(19) := '052400AB0F810E10204080C0E8026BC42F0158435D9B040810204060650109C0CA03A07902040810185D609DF82500EBB86B950001020408AC2A200158955FE30408102030BAC05AF14B00D692D72E010204081058514002B022BEA609102040607481F5';
wwv_flow_imp.g_varchar2_table(20) := 'E29700AC67AF650204081020B09A800460357A0D13204080C0E8026BC62F0158535FDB040810204060250109C04AF09A2540800081D105D68D5F02B0AEBFD60910204080C02A02128055D8354A80000102A30BAC1DBF0460ED11D03E818505DE7FF7BDDD';
wwv_flow_imp.g_varchar2_table(21) := 'F7DE7A7BF7DE9FFEE9E3F257EFBCB3700F344780400B0212801646411F082C24F038F9BFFDD6EEFDF7DE7DD1E25F3F24004906B2EDC54A6F0810985960FDEA2500EB8F811E1058442067FADF7B98FCCF35966D29736EBBF504086C4B4002B0ADF1140D81';
wwv_flow_imp.g_varchar2_table(22) := '930299D873A67F72E3C1CA9449D98355DE12203083400B554A005A18057D2030A34026F44CECB54DA46CF6A92DAF1C01027D0A4800FA1C37BD26502590893C137A55E18342D927FB1EACF2960081C904DAA84802D0C638E80581C90532816722BFB5E2EC';
wwv_flow_imp.g_varchar2_table(23) := '9B3A6EDDDF7E0408B42D2001687B7CF48EC04D0299B83381DFB4F3C14EA923751DACF29600813B055AD95D02D0CA48E807818904326167E29EA8BA5DEA4A9D53D5A71E0204DA109000B4310E7A416012814CD499B06B2A7BF5873FBECB52533675A6EE9A';
wwv_flow_imp.g_varchar2_table(24) := 'B2CA10207049A09D6D128076C6424F08DC2590093A13754D2599F83FF7C61BBB2C795FB34FEA4E1B3565952140A07D010940FB63A487048A0299983341170B3E14C8849F89FFE1EDE3BFBCCFBAC70F851F69236D158AD94C80C0198196564B005A1A0D7D';
wwv_flow_imp.g_varchar2_table(25) := '2170834026E44CCC35BB66A2CF847F5C36EBB2ED78FDA9CF692B6D9EDA661D0102FD084800FA192B3D25F04420137126E4271B4EACC8049F89FEC4A6C755D996328F1F0A3FD266DA2E14B39900819704DAFA2001686B3CF48640B54026E04CC4353B6462';
wwv_flow_imp.g_varchar2_table(26) := 'CF045F2A9B32295B2A97ED693B7DC87B0B0102FD094800FA1B333D26B0CBC49B09B88622137A26F69AB22993B2D927EF4B4BFA90BE94CAD94E80C06ED79A8104A0B511D11F0205814CB899780BC51E376722CF84FEF8E18A1FD927FBD6EC92BEA44F3565';
wwv_flow_imp.g_varchar2_table(27) := '952140A01D0109403B63A127048A02EFBFFBDEE31FE629167C2890093C13F9C3DB9BFE65DF4F7FEA5355FB260948DFAA0A2B44604881F6829600B437267A44E0A44026D8EFBDFDD6C96DC72B337167023F5E7FEDE79FF8D1D776A9AB66BFF42D7DAC29AB';
wwv_flow_imp.g_varchar2_table(28) := '0C0102EB0B4800D61F033D2050259009B6A66026EC4CDC35656BCAA4AED45953367D9404D44829339A408BF14A005A1C157D227024F0BDB7DE3E5A73FA632EFB67C23EBDF5F6B5A93375D7D4E079801A256508AC2F2001587F0CF480C045814CFEEFBFF7';
wwv_flow_imp.g_varchar2_table(29) := 'EEC532D998097A8ACBFEA9EBD492BAD3C6A96D87EBD2D7F4F9709DF704C61668337A09409BE3A257041E0572369D09F5F143E1C7A75F7FBD50E2FECDB56DA4CFE9FBFD2DAA810081B904240073C9AA97C09D029940F3747D4D353FFF539FD97DE2231FA9';
wwv_flow_imp.g_varchar2_table(30) := '297A5799B491B66A2A49DF13434D5965086C59A0D5D82400AD8E8C7E0D2D90893313680D421ED0CBC45C53768A32692B6DD6D495183C145823A50C81E5052400CB9B6B914051201367B1D043814CC47940EFE1EDA2FFD266DAAE69D46F06D42829B35D81';
wwv_flow_imp.g_varchar2_table(31) := '76239300B43B367A36A840ED037499803311AFC594B6D3879AF67345A3A69C3204082C27200158CE5A4B048A029928F3005DA96026DE4CC0A572736F4F1F6A7F3320B1CDDD1FF513684DA0E5FE48005A1E1D7D1B4A201364CDA5FF4CB899785BC1A9FDF5';
wwv_flow_imp.g_varchar2_table(32) := 'C0C496185BE9B77E10185D400230FA1120FE260432316682ACE94C26DC9A724B96A9FDF5C0C4E8A1C02547465BEB0AB4DDBA04A0EDF1D1BB41043231D6845AFB2B7835754D5926BF1950DBB73C143865DBEA2240E0360109C06D6EF622309940CEFE6B2A';
wwv_flow_imp.g_varchar2_table(33) := 'CB7DFF4CB43565D72893BEA58F356DD73EE858539732045A1568BD5F1280D64748FF362D90C9BFE6EC3F136B4BF7FDCF0D4AFA98BE9EDBBE5F9F071D13FBFEB3570204961790002C6FAE45028F02B9175E33F9B7F6D0DF63E72FFC4812903E5F28F2B829';
wwv_flow_imp.g_varchar2_table(34) := 'B1C7E0F1831F043627D07E401280F6C7480F372A507B2FBCF601BB96986AFBEC2A404BA3A62FA3094800461B71F13621503BF1E5727AEEAD37D1E92B3A913EA7EFA55DDC0A2809D9DEAB400FFD9600F4304AFAB829814CFEB9FC5D0A2A13682EA797CAB5';
wwv_flow_imp.g_varchar2_table(35) := 'BA3D7D772BA0D5D1D12F02BB9D04C051406061819AC93F5DCA049AD79E97DABF59507B3BA4670B7D1F49A08F5825007D8C935E6E442067FF35A1E4ECBFA65C0F65AAFF3EC05B6FF7108E3E12D88C80046033432990D60532F9D79CFD67F2DFC2D9FF7E3C';
wwv_flow_imp.g_varchar2_table(36) := 'AE791EC06F05ECD5BCF62CD04BDF2500BD8C947E762F5033F9E79EF99626FFFDA025A6C4B6FF7CEED5AD807332D613985E400230BDA91A093C11C8D9FF93952756D4DE333FB16BF3AB6A7F35D05F096C7E2875F0A2403F1B2500FD8C959E762A90C9BFE6';
wwv_flow_imp.g_varchar2_table(37) := 'EC3F97FE3B0DB1AADBB91550F33C407E35D0AD802A528508DC252001B88BCFCE04CA02B5937F2E93976BEBBB449200B702FA1E43BDBF2CD0D35609404FA3A5AFDD09E4ECBFA6D3234CFE7B87DADB1CB576FB7ABD1220709D8004E03A2FA509540BE43276';
wwv_flow_imp.g_varchar2_table(38) := 'EDD97F75A51B295873BB237631DC48C8C21842A0AF2025007D8D97DE7624F0FDF7DE2DF63613E14867FF7B90C45C732BC05580BD985702D30B4800A6375523815D26AE9CC196285EFDE80F968A6C767BCD6F05782070B3C3BFC9C07A0B4A02D0DB88E96F';
wwv_flow_imp.g_varchar2_table(39) := '170235937FCEFEF3505C1701CDD0C9C41E8352D549A64A656C2740E07A0109C0F566F6207051A076C2CA65F08B150DB0B1C62057016A4D07201362B302FD754C02D0DF98E971E302B567FF8D87B158F76AFE36404C3D10B8D8906868100109C020032DCC';
wwv_flow_imp.g_varchar2_table(40) := '65046ACE5473D9BBE6CC77991EAFDF4A6E05782070FD71D083FB047ADC5B02D0E3A8E973930299FC73A65AEA9CC9FFA99007029F9A5843606E0109C0DCC2EA27702090B3FF838FDE3E17C855801A9B2459CF77F142A021813EBB2201E873DCF4BA31814C';
wwv_flow_imp.g_varchar2_table(41) := '4CCEFEEF1B945C1929DD0AC803819E05B8CFD9DE04F6021280BD845702330BD49CE1CEDC85E6ABAFB9159064ABF940747028815E839500F43A72FADD8C4026A49AB3FF3FFCFAD777BFF63BBF6DB960F0E5DF7FB338AEAE021489142050252001A8625288';
wwv_flow_imp.g_varchar2_table(42) := 'C079819AC9FFFCDEB6DC2290A4EB96FDEC43607A817E6B9400F43B767ADE808089689D41706FA69CD5000010004944415415601D77AD6E4B4002B0ADF114CDC202CEFE17063F684EF27580E1ED6A023D372C01E879F4F47D550113D0AAFC3B5701D6F5D7';
wwv_flow_imp.g_varchar2_table(43) := '7AFF021280FEC750042B09F875B495E00F9A95841D6078BB8240DF4D4A00FA1E3FBD5F4920134FCE40576A5EB3CF05320612B1E7185E085C292001B8124C710204DA124832D6568FF4661481DEE39400F43E82FABF8A40E9E1BF5FFCD99FDBFDC1E77FC1';
wwv_flow_imp.g_varchar2_table(44) := '3281C1CFBCFE6317C7D855808B3C3612382B2001384B630381D30235679C9FFDC4ABA777B6F66A817FFB99CF14F7A9199362250A10B84AA0FFC21280FEC750040B0BD49CFD7FF6873FBE70AFB6DB5C2C6BAE026C57406404E6119000CCE3AAD68D0A38D3';
wwv_flow_imp.g_varchar2_table(45) := '5C67605D0558C75DABE705B6B04502B0855114C36202A5B3FF74E417FEE13FCA8B6542819AAB0035633361975445A07B010940F7432880A5046ACEFEF3F0DF52FD19AD9D9AAB007E2570B4A362AD78B7D1AE04601BE3288A46049CFDCF37103557016A92';
wwv_flow_imp.g_varchar2_table(46) := 'B4F97AA866027D094800FA1A2FBD5D51A07489D9D9FFFC83F333AFFDE8C546FC4AE0451E1B2712D84A351280AD8CA4386615A839B374F63FEB103C565EF3EB95DF7FEFDDC7B27E10207059400270D9C756028F02CEFE1F1956FF51731BC07300AB0FD3C6';
wwv_flow_imp.g_varchar2_table(47) := '3BB09DF02400DB194B91CC245073F63F53D3AA3D21507A18D06D80136856113821200138816215816B055CFEBF56ECF6F2B90A50DA5BD25612B2FD56812DED2701D8D2688A65160197FF6761BDAB527F19F02E3E3B13781490003C32F841E0B440CD99A4';
wwv_flow_imp.g_varchar2_table(48) := 'B3FFD37673AE2DDD0648DB9E058882655A816DD52601D8D6788A666101BFFAB730F8F3E6721BA07415A026797B5E9D1702430A4800861C7641D70A942EFFD7D6A3DCF402A5AB00791870FA56D538B2C0D66297006C6D44C5339940CD19642F97FFBFF69D';
wwv_flow_imp.g_varchar2_table(49) := '777659BEF0952FEFF6CB4F7EE98BBB2CFBCF5FFC933FDE65990C70E68A7215A0D484DB002521DB471690008C3CFA62BF4BA07409FAAECA27DA39137A26F8CFFFE66FECB27CF51B7FB6DB2FFB26F69F7FE9F77E77972549C1677EFD57BB48064A635093C4';
wwv_flow_imp.g_varchar2_table(50) := 'ED1DBC12B82CB0BDAD1280ED8DA9882612285DFEFF99C29FA59DA81B375593893F137926F44CF0D75692CBE7D93775A4AE6BF75FAABCDB004B496B678B0212802D8EAA98EE16A839736CF1F27F2EF367D2CEE47D37C2F30A5257EA6C391178DED5932F6E';
wwv_flow_imp.g_varchar2_table(51) := '039C64B1F24A812D1697006C7154C534BB40E9D2F3EC1D38D14026E85CE63FB16992554904D2C624954D54499E03288D454D323751775443A02B01094057C3A5B34B09F476F93F137326E8B97DD246DA9ABB9D6BEA771BE01A2D656F13D8E65E12806D8E';
wwv_flow_imp.g_varchar2_table(52) := 'ABA8EE10A8B964DCD2E5FF4CC89998EF08F9AA5DD356DABC6AA7950BD78CE9CA5DD43C81C50524008B936BB07581D2FF4EB674C979C9F8321167425EB2CDB49536D376DEAFBDD4DC0658BB8FDAEF5B60ABBD97006C7564C5359B402B4FFF6702CE445C1B';
wwv_flow_imp.g_varchar2_table(53) := 'E8DFFFC48FECB27CE1E7FEE92ECBBFFF17FF729725EF3FF78FDFD865A9AD2BE5D2761E3ACCFBD617CF01B43E42FAB7868004600D756D362D50BAFFDF4AE73301D7F4653FE97FFEA73FBBCBF2F73EFAD15D96FDBE79FFCF5E7F7D972509C13589C09C0F1D';
wwv_flow_imp.g_varchar2_table(54) := 'EEFB57F3EA39801A25656E13D8EE5EAF6C37349111B85EA0E65E710BF7FF73F65F135D26FFFDA45F533E65AE4D046AFB92BAE75A721BA05477CDD896EAB09DC0960424005B1A4DB1DC2DD0CBFDFF9AB3FF9CC967F2BF15258940EA28ED5FD397521D536C';
wwv_flow_imp.g_varchar2_table(55) := '2F3D9B511ADB29FAA08EED096C392209C09647576C570B94CE125BB8FF5F73C69D893B13F8D500473BA48E5C45385AFDE4634D9F9EEC34F18AD2D894C676E2EEA88E40F3021280E68748079714C89FC0BDD4DE673FF1EAA5CD8B6CAB39E3CEC43D556772';
wwv_flow_imp.g_varchar2_table(56) := '15A194047CF5ED6F4ED5DCCDF594C6A634B637376CC70D0B6C3B3409C0B6C757745708D49C21D6DC6BBEA2C9598AE6EC7FEA8AFFF98FFF838B55E6FF37B0F66F04D48C4DCD185F0CD446021B1290006C683085729F40E91E71E91EF37DADD7ED5D73A97D';
wwv_flow_imp.g_varchar2_table(57) := 'CAB3FF7DAFF29B02A5AB00FBB26BBEB630466BC6AFED6905B65E9B0460EB232CBEC9044AF798276BE88E8AE638FBAFEDCE2FBFF9666DD1D5CAF97B00ABD16BB8410109408383A24BEB08F4707978CD7BEDA5DB00EB8CDACBAD96FE1EC0CBA57D22704960';
wwv_flow_imp.g_varchar2_table(58) := 'FBDB2400DB1F6311560A941E126BE1F7FF4BA1FCD8C73E562A32F4F6D2180F8D23F8E1042400C30DB9804F09F470F69F7EE761BBBC9E5B72AFFEDCB67BD797EA2EF5EDDEF66BF6F720608D92323502239491008C30CA622C0AF4F000603108051E053C08';
wwv_flow_imp.g_varchar2_table(59) := 'F8C8E00781A28004A048A40081DDAE9507004B93DBFFF9EE77671BAE52DDA5BECDD6B1A38A4B63E541C023301F4F088CB14A0230C6388BB220D0CB2D804218B36EFEB33FFFF359EB9FAAF2D21F049AAA1DF510E85D4002D0FB08EAFF2402A587C37A9954';
wwv_flow_imp.g_varchar2_table(60) := 'FEEB9FFEAF493C6EA9A474E67D4B9D73EC531AEB39DA54675F02A3F4560230CA488BF32E819A87CBEE6AA072E7357FCDED2BFFF38F2A7BB96EB19AB172C567DD31D27A1B02128036C6412F5614284D06ADDCDBAE21FADFDFFEBFBBD2BDFA9A7A8ECBFCD6';
wwv_flow_imp.g_varchar2_table(61) := '37BE71BCEAC9E7967E4DB2A7317B0269C5CA02E3342F011867AC457A46A0F41B0067765B6575CE6E4B93DB1CB7014A67FF3FFD237F77150F8D122070BB8004E0763B7B0E22D0DABDED527F7215E04BFFFD6B938D4ECDD9FF3FF9D4A7266B6F8A8A4A463D';
wwv_flow_imp.g_varchar2_table(62) := '257D5378A8A35E60A492128091465BAC27054AB7004EEEB4E2CA9A4BED49026A26EE5218A9A374F69F3A6AFA94724B2DA587367B1BF3A5DCB43396800460ACF116ED0D02A5C9E4862AEFDEE5177FF6E78A7564E2CE045E2C78A640AE22A48E339B5FACAE';
wwv_flow_imp.g_varchar2_table(63) := 'E9CB8BC2DE10685A60ACCE4900C61A6FD19E1028FD5A58EEBB9FD86DD555B567DC99C0FFDD7FF9CFBB6B12813C4498C93F57116A82ACED4B4D5D4B95298DF952FDD00E81350524006BEA6B9BC01D025FFA57FFBA7AEFC34420C94026F9FDCE799F25937E';
wwv_flow_imp.g_varchar2_table(64) := '965FF9DDFFB6AB9DFC5B3DFB6F3169DB7B7B6D5760B49E4900461B71F1BE24D0F3BDE04C72D74EC04904B26492CF95812C799F25937E9697802E7C48DB3D9EFDEF43EA79ECF7317825708F8004E01E3DFB6E5EA0F42B776B036402CE44BC743FD266DA5E';
wwv_flow_imp.g_varchar2_table(65) := 'BADD6BDA6B7DECAE8945D92504C66B430230DE988B786302998833212F1556DA4A9B4BB5A71D0204E6119000CCE3AAD64E044ABF0F5EFA7DF256C2CC849C8979EEFEA48DB435773B4BD45F1AFB25FAA08D760446EC890460C45117F32605323167829E2B';
wwv_flow_imp.g_varchar2_table(66) := 'B83C749836E6AA7FEA7A7B49DEA68E5B7D046A052400B552CA11E8402013F41F7CFE1776532602A92B75E6A1C30E08AABBE821C06AAA010A8E19A20460CC7117F57381AD4E02F7260279806E3FF1A7AEE75C5DBDB4F8079CBA02D4D9CD0B4800363FC402';
wwv_flow_imp.g_varchar2_table(67) := 'BC47A0F749249377CEDEB36442CF92C93DCBDE25EFF74B2EF367F995CFFDFC2EFBEECB7825B06581516393008C3AF2E21E4E20137A964CEE59921464C9FBFD92CBFC5986C311308101052400030EBA9009102040602F30EEAB0460DCB11739010204080C';
wwv_flow_imp.g_varchar2_table(68) := '2C20011878F0854E800081D105468E5F0230F2E88B7D57FABFC2B91FDEEF41521ABBD2D8F71BB99E13A8139000D4392945800001029B13183B2009C0D8E32F7A020408101854400230E8C00B9B000102A30B8C1EBF0460F42340FC0408102030A4800460';
wwv_flow_imp.g_varchar2_table(69) := 'C8611734010204461710BF04C03140E082C0D7BEF3CE85AD36B52C60EC5A1E1D7D6B414002D0C228E8C36A02AF7CE8C3ABB5AD610204D613D0F26E27017014102030A480E46FC86117F4818004E000C35B020408101841408C11900044C14280C0E604BE';
wwv_flow_imp.g_varchar2_table(70) := 'F6ED6F6D2E2601119852400230A5A6BA36276012D9DC900A88C00EC1330109C033073F0910204080C050021280A1865BB00408EC055EF9F087F66FBD0E2520D8BD8004602FE175480193C090C32E6802041E0424000F08FE113827F0D5B7BF796E93F58D';
wwv_flow_imp.g_varchar2_table(71) := '0B18BBC60768A5EE69F6030109C00716DE0D28F0B7FC21A001475DC8040844400210050B0102C30948FE861BF2DD6E27E6430109C0A186F7048E04BEFA8D3F3B5AE3632F02C6AE9791D2CFB50424006BC96BB709010F0136310CAB74C2D8AFC2BE6AA31A';
wwv_flow_imp.g_varchar2_table(72) := '7F594002F0B2874F049E08F8BFCA3D21697E85316B7E8874B0010109400383A00BEB09BCFFEE7BEB35AEE5D9046AFE82A3B19F8DBFD18A75EB584002702CE2F330029900BEF7F65BC5786B269362250A342790B1CF31D05CC77488C04202128085A035D3';
wwv_flow_imp.g_varchar2_table(73) := '9640BEF83301D4F4CAEF93D728F55926C7408E853E7BAFD7D70828FB544002F0D4C49A8D0BE40B3F5FFC1B0F73E8F0AE49DA722CE498181A4CF0430A4800861CF67183CE177DBEF0AF11F0EB64D768B551F6DA31CB319163A38DDEEBC5F4026A3C252001';
wwv_flow_imp.g_varchar2_table(74) := '38A562DD2605F2059F2FFA4D0627A8BB05726CE418B9BB221510E8444002D0C940E9E67D02F962CF17FCADB5F8B5B25BE596DFEF9EB1CA31926365F95E6B714E01759F1690009C76B1764302F942CF17FB8642BA2B9437FFE2FFEDBEF0952FEF3EF3EBBF';
wwv_flow_imp.g_varchar2_table(75) := 'BAFBC92F7D71F7C53FF9E3BBEA6B6DE77B7F6B23C74A8E99D6E2D21F02530B4800A616555F5302F922CF17FABD9DBA7752B9B7FD29F7FF37FFE93FEE728FFCFDF7DE7DACF6977EEF771F138124068F2BFCD8E598C9B183620B0262382720013827637DF7';
wwv_flow_imp.g_varchar2_table(76) := '02F902CF17F914815CF354F914EDCD55C7A5B3FDFFF0D5AFCED56C97F5E6D8C931D465E7759A40858004A0024991FE04F2C59D2FF0DA9E7FFA539FAA2DDA75B99CED9F0B205705CE6DEB697D29597BF5873F5E1D4E8EA11C4BD53B28D89C800E9D179000';
wwv_flow_imp.g_varchar2_table(77) := '9CB7B1A553817C61E78BBBB6FB3FFF539FD9BDFAD11FBC587C2B93E3C52037B2B134569F7EFDF55DC6BC36DC1C4B39A66ACB2B47A0170109402F23A59F5502F9A2CE177655E1874299083EF1918FECB23C7CBCF8EF9EA7CB2F566CE36402976E71EC1BC9';
wwv_flow_imp.g_varchar2_table(78) := '5867C9D8EFD7955E734CE5D82A95B3BD3501FDB9242001B8A4635B5702F982CE17756DA733016422D8972F5D1ADED28380FB98477B3DBCD593B1CF31506B90632BC7586D79E508B42E2001687D84F4AF4A205FCCF982AE2AFC50285FFC99001EDEBEF8F7';
wwv_flow_imp.g_varchar2_table(79) := 'EAC77EE8C5FB536F4AF7964FED63DDB202D78E518E811C0BB5BDCC319663ADB6BC72EB0A68FDB28004E0B28FAD1D08E40B395FCCB55DCD177EBEF88FCB7B0EE058A4BFCFA5FBFFA7C638C7428E89DA6873ACE598AB2DAF1C8156052400AD8E8C7E5509E4';
wwv_flow_imp.g_varchar2_table(80) := '8B385FC855851F0AE58B3E5FF80F6F9FFC3BB7FEB0A0E7000E35DA7A5F3336E7C638EB736CD44694632EC75E6D79E5D610D0664940025012B2BD59817C01E78BB8B683F982CF17FDA5F29E03B8A4D3F6B6D2331AA5B1CDB19163A436CA1C7B39066BCB2B';
wwv_flow_imp.g_varchar2_table(81) := '47A0350109406B23A23F5502F9E2CD177055E18742F962CF17FCC3DB8BFF3C077091A7E98DA5FBFFA5B14D70394672ACE47DCD926330C7624D59659615D05A594002503652A231817CE1E68BB7B65BF942CF177B4DF953F7880FF72BDD633E2CEBFDB202';
wwv_flow_imp.g_varchar2_table(82) := 'A5B1298DEDBEB7395672CCEC3F975E732CE6982C95B39D406B021280D646447F2E0AE48B365FB8170B1D6CCC1779BED00F565D7C5B53B6E65EF3C5466C9C5CA0664C6AC676DFB194CDB1B3FF5C7ACD319963B354CEF6A504B453232001A85152A609817C';
wwv_flow_imp.g_varchar2_table(83) := 'C1E68BB6B633F902CF17796DF97DB9D2BDE27D39AFED08DC7BFFFF54243976720C9DDA766A5D8ECD1CA3A7B65995E190BA000010004944415447A0450109408BA3A24F2705F2057B72C38995F9E2CE17F8894D77AFFAE537DFBCBB0E152C2B5073FFFF54';
wwv_flow_imp.g_varchar2_table(84) := '8F720CE5583AB5EDD4BA6B8ED153FB5B378D805AEA042400754E4AAD2CF0BDB7DEAEEE41BEB0F3C55DBDC351C1FCADF8A3552F7D2CDD6B7EA9B00F8B085CFA9F1CDDDB811C4B39A66AEBB9E658ADAD53390273084800E65055E7A4027FF5CE3BBBF7DF7B';
wwv_flow_imp.g_varchar2_table(85) := 'B7AACE7C51E70BBBAAF0994235FBD7DC733E53BDD5130BD48CC54FFCE86B77B59A6322C7564D25395673CCD69455660E0175D60A48006AA5945B45205FA47FFD9000D4349E2FE87C51D7942D95293D07E036404970B9ED73DCFF3FD5FB1C5B39C64E6D3B';
wwv_flow_imp.g_varchar2_table(86) := '5E976336C7EEF17A9F09B4242001686934F4E525817C81E68BF4A595673EE48B395FD067365BBD6181D2E5FF5BEFFF9F22CB319663EDD4B6E37539763D1478AC32FF672DD40B4800EAAD945C58205FA0354DE60B395FCC35656BCBD43C075073E9B9B63D';
wwv_flow_imp.g_varchar2_table(87) := 'E56E13A819837B2FFF1FF72CC75A8EB9E3F5A73EE7A14049C02919EB5A109000B4300AFAF0442067FF4F569E5891FFBD6BBE904F6CBA6B55EA741BE02EC245765EEAF2FF7130393E72EC1DAF3FF5B9F6583EB5AF75D70A287F8D8004E01A2D651711C817';
wwv_flow_imp.g_varchar2_table(88) := '66CDD97FBE80A73EBB3B0CB07415E0B0ACF7EB082C79F9FF38C21C7B39068FD71F7FCE4381AE021CABF8DC828004A08551D087AB05F2C59B2FE0AB779C7087FC3A60CD25E8099B54D581408DFDDCC748EA2F5D294A9793D4E6D532AF80DAAF1390005CE7';
wwv_flow_imp.g_varchar2_table(89) := 'A5F4CC02F9A22C9DFDE70B375FBC33776597CBBC69EB523B7E1BE092CEBCDBD6BAFC7F1CD5E7DE7863573A4E5C053856F3B9050109400BA3A00F2F044A937F0A2E7969BED456AE02A44F96E505D6BCFC7F1C6DE93849F924B779B5CC25A0DE6B052400D7';
wwv_flow_imp.g_varchar2_table(90) := '8A293F9B40CD17642EFDE7CC7CB64EDC5071CDA5E81BAAB5CB05812FFEC91F5FD8FA6CD31257899EB5B4ABBA5AE42AC05ECB6B2B0212805646423F763567FF4B7EA96748926C942EEFBA0D10A9B696248A4BF7C85580A5C55F6ECFA7EB052400D79BD963';
wwv_flow_imp.g_varchar2_table(91) := '06819AA7A4D7F8524FA8A52F76B701A2B4EC52BAFCBF6C6F9EB556932CBA0AF0CCCACF360424006D8CC3F0BDF87EC5DFFA5FFAEC7F3F28F962DFBF3FF7EA36C03999E9D7B776F9FF30C23C1078F8F9D4FB9A5B5DA7F6B3EE92806DB70848006E51B3CFE4';
wwv_flow_imp.g_varchar2_table(92) := '02A5CBFF6B9DFDEF03751B602FD1FEEBDAC7CADAEDB73F427AD88A8004A09591D08F8B02AF7EF4072F6E9F7B63CD6D005701E61E8567F5B778F9FF59CF9EFD2C1DAB6E033C739AF2A7BA6E139000DCE666AF09056A2E89D65C869FB04B4FAAAA69BFF47B';
wwv_flow_imp.g_varchar2_table(93) := 'E94F2AB5E26A81962FFFEF83C9B152BA62B42FEB95C09A02128035F5B5FD28507A00B0954BAAA52FF5D6CF4C1FB13BFF51326EE5582931D724BDA53A6CDF0B78BD55400270AB9CFD2613C825D1C92A9BB1A2D26D8034ED364014E6596ACEFEE769F9FA5A';
wwv_flow_imp.g_varchar2_table(94) := '4BC74A2FC7FCF591DBA3270109404FA3B5C1BE96CEFE13F25A4FFFA7EDC3A5E6D2AEBF09702836EDFB9AB3FF968E9552F435C77EA90EDB773B06B70B48006EB7B3E70402A55FFF6BED926EE9CC2E7F13C05580090E8CA32A7A3AFBDF77BD74CB685FCE2B';
wwv_flow_imp.g_varchar2_table(95) := '81B50424006BC96BB74B015701DA1DB656CEFEF742AF7EEC87F66F4FBE9692DF933B597924E0E33D0212807BF4EC3BA480AB00CB0F7BCDE5FFE57BA545027D0B4800FA1EBFEE7B5FBA0F5AFA9DEA35007215A0D4AE67014A42F5DB6B2EFFB776F69FE84A';
wwv_flow_imp.g_varchar2_table(96) := 'C76EE9D84F1D96CB02B6DE272001B8CFCFDE830A949E4DC8B30083D24C1EB6B3FFC9495548E0514002F0C8E0C75A02A55F87AA39DB5EA3EF35679C3567AE6BF4BDA7366B0C6BC6A2A798F5B55640B97B052400F70ADA7F5881D253DEA533D761E1AE08BC';
wwv_flow_imp.g_varchar2_table(97) := '6458BA1273455393172D25AFA5E477F20EA990C0918004E008C44702B502A58701534FCD196CCA599E0AD4D839FB7FEA36CA1A71DE2F2001B8DF500D830AE40CCF5580F906BFE7B3FFF954D44C603A0109C074966A1A50C055807906DDD9FF3CAEDBA955';
wwv_flow_imp.g_varchar2_table(98) := '2453084800A65054C7B002B55701FC75C0EB0E1167FFD779294DE0160109C02D6AF6217020507315C0DF0538002BBCAD39FB2F5461F3C60584378D8004601A47B50C2C507315207F17C05580F24192C9BFE6ECDFC37F654B2508940424002521DB095408';
wwv_flow_imp.g_varchar2_table(99) := 'B80A5081345191D25FD89BA819D5342BA06353094800A69254CFD002AE02DC3FFCB567FFB1BEBF353510202001700C109848E0736FBC51ACC9B300E7894A97FEB3A74BFF51187B11FD74021280E92CD5446057FACB749E05387D90E4ECFFF4960FD6966C';
wwv_flow_imp.g_varchar2_table(100) := '3F28E91D0102350212801A256508540AE40CB5F4C7813EFF9BBF5159DB38C54A67FF318DED3822223D2D60ED940212802935D545E041A0E681C09A33DE87AA86F85763F1EAC77E68080B411258524002B0A4B6B68610C8436A3963BD146CCE78FD5AE033';
wwv_flow_imp.g_varchar2_table(101) := 'A1583C7B77FA672EFD3BFB3F6D33DA5AF14E2B200198D6536D041E056AAE02782070B7AB39FB37F93F1E527E10985C40023039A90A09EC76B90A9033D74B167920B06602BC5447CFDB127BCDD97FCF31EAFB9402EA9A5A400230B5A8FA083C17C899AB5B';
wwv_flow_imp.g_varchar2_table(102) := '01CF318E5E72FBA334F9679718E6D54280C0F4021280E94DD548E085805B012F285E7A5373FBA37405E5A50A7DD8BC8000A71790004C6FAA46022F04722BA0741560B45B01B9F49F985F209D7893C9DFD9FF0918AB084C28200198105355044E09D45C05';
wwv_flow_imp.g_varchar2_table(103) := 'C8E5F05C163FB5FF96D625C6C45A8AC9E45F121A6DBB78E7109000CCA1AA4E020702DFFAEE5F1C7C3AFFB6E6B2F8F9BDFBD8521BE3FFF8E6DB7D04A497043A169000743C78BADEBE4026B23FFCFAD7AB3A9ACBE2B93C5E55B8C342892D31D6743D66B1AB';
wwv_flow_imp.g_varchar2_table(104) := '29ABCCF60544388F8004601E57B512D86502CB44760D452E8FE732F935FBF450363125B66BFA1ABB185EB38FB20408D40B4800EAAD9424502DF0953FFAA35D26B0EA1D0E0AD65E263FD8A5F9B7B7C614C358361FA00ECE28A0EAB904240073C9AA774881';
wwv_flow_imp.g_varchar2_table(105) := '6FFFE55FEE32617DEB3BEFDC1C7F2E93E772F9CD1534B66362494CB7762B96BFF63BBFBD8BEDAD75D88F0081A7021280A726D610B8492013D4977FFFCD5D26AC9B2A38D82997CB33711EACEAF26D62482C53743EB66E094C21D9571D7A3B9F8004603E5B';
wwv_flow_imp.g_varchar2_table(106) := '350F2490892913546DC8AF7CE8C3C5A2993873EFBC58B0D102E97B6298B27BB92510EB29EB54178151052400A38EBCB82713C8849489A9B6C24CFE3FF0C9D776792DED73EBBDF352BD4B6CFFFC6FFE46B199187CE8C77F7CF7B73FFEF162D97D8158C77C';
wwv_flow_imp.g_varchar2_table(107) := 'FFD9EB9605C436A78004604E5D756F5E20135126A4DA4033D165F24FF9BF5331E9E5DEF917BEF2E514EF6AA9EDF3A1456C6A838C79EC6BCB2B4780C0530109C053136B085409E461BF4C4455851F0A65823B9CF45FF9F087AACE7C9304E45EFA43155DFC';
wwv_flow_imp.g_varchar2_table(108) := '4B5FD3E75267E371582636C7EB0EB71FBF8F7DC6E078BDCFDB1110C9BC021280797DD5BE41813CEC9789E79A87FD7EE0B54FEE32C11D73645DCDA4977BE999588FF76FED73FA98BE96FA959813FB71B9ACCBB6E3F5E73E670CFC86C0391DEB095C169000';
wwv_flow_imp.g_varchar2_table(109) := '5CF6B195C04B0299FCF3B05F269E97365CF890C93F67FBE78A64D2CBBDF073DBF7EB33B1E6C1BAFDE7D65EEF9DFCF7F1C42366FBCF35AF1913B7046AA47A2AA3AF730B4800E61656FF660432C164A2A90D28937A1E70BB34F9EFEBCAA4B77F7FE9350FD6';
wwv_flow_imp.g_varchar2_table(110) := 'B59A042441B9D4F7FDB69A5863F66857F1DB12FB7A734B2063B4FFEC950081CB021280CB3EB6127814C8C49209E6F143C58F4CFEFB07DC2A8AEF32E1D55EFA6EF13703AA1FFA7BB81552E3B12F13C35A97EC9331CA58E5BDA56F01BD9F5F400230BFB116';
wwv_flow_imp.g_varchar2_table(111) := '3A17C8849289A5368C4C5899B86ACBEFCBE5CC38FBEE3F9F7BCD0376B9DC7E6EFBD2EBD397F4A9D46E624BA2532A77BCBDD665BF5FC62A63B6FFEC950081D3021280D32ED6127814C8C37E99501E3F54FCC8249709ABA2E8C922D937570F4E6E3C5899CB';
wwv_flow_imp.g_varchar2_table(112) := 'ED99780F56ADF2367D485F4A8D4FE1923A4AEDECB767CC3276FBCF5E7B13D0DF250424004B286BA33B813CEC9709E4DA87FD3281DF1B6CEDD5834CBCB9F4BEC6330169336DA70FA57893D04CE1923AAE490232767E43A0343AB68F2C20011879F4C57E52';
wwv_flow_imp.g_varchar2_table(113) := '20937F1EF6CB0472B2C08995796AFD96CBDB27AA7A5C95FA1EDF147EE4D27B1E0CCC9978964CCC855D6EDE9CBAB364E24F9B69BBA6B2DA84A6A6AE2401B536FBFA32966E09EC35FA78D5CB65042400CB386BA513814C1499306ABB9BB3DBC7A7D53FFCA1';
wwv_flow_imp.g_varchar2_table(114) := 'DA5DAACA2599B8E66C3767E2593231FFE497BEB83BB7941A3FB75FD6A7EE2CB5137FDABA268694AF5962F368EE37046AB89421705640027096C686D10432F9E7DE716DDC99FCA73CBB3D6E3767BB734CA0C7EDCCF5397D4F0C73D51FFBB4515B7FC63663';
wwv_flow_imp.g_varchar2_table(115) := '5C5B5EB9B504B4BB948004602969ED342D90892113446D2733F16402AA2D7F6BB94CA069EBD6FDD7DA2F7D4EDFE76E3F6DA4ADDA7632C619EBDAF2CA11D8B2800460CBA32BB62A813CEC9789A1AAF043A14C3899781EDE2EF22F6DA5CD451A9BA091F435';
wwv_flow_imp.g_varchar2_table(116) := '7D9EA0AAAA2AD256DAAC2AFC5028639D317F78EB5F8302BAB49C800460396B2D35269087FD32115CFBB05F269CA543499BD74C724BF76FDF5EFA98BEEE3F2FF59A36D3766D7B1973BF2150ABA5DC560524005B1D59715D14C8E49F87FD32115C2CF87CE3';
wwv_flow_imp.g_varchar2_table(117) := 'E3FDFED73EF9F817FB9EAF5AFCE5DA496EC90EEE7DD2C725DB3D6C2B6DFB0D8143911EDFEBF39202128025B5B5D58440EE0167F2AFEDCCE3E4F6C9D7569DFCF77DCD249727E073B69B7EEDD7AFF59A3E64D2CDF310793A7FAD7EECDB4D1FE2937EEDD795';
wwv_flow_imp.g_varchar2_table(118) := '5E734B20C744A99CED04B6262001D8DA888AE7A240BEE8F3857FB1D0C1C64CB499DC0E5635F1368940FA95C92E7DCC849765EECEA58D2C8F93FEC31591F42193EEDCED5E5B7FFA1597DAFD724CE4D8A82DAFDC3C026A5D564002B0ACB7D65614C8177CBE';
wwv_flow_imp.g_varchar2_table(119) := 'E86BBB900924136D6DF9B5CAA58F99F0B22421B8B494FA7869DF6C4B1B5932E96729D5B7E6F6B8640C6BFB906323C7486D79E508F42E2001E87D04F5BF4A200FFBE50BBEAAF043A14C1C99401EDEFAD7B140C63063591B428E911C2BB5E5959B52405D4B';
wwv_flow_imp.g_varchar2_table(120) := '0B48009616D7DEA20279D82F5FE8B50FFBA573B9BC9D8923EF2DFD0B642CAF490272ACF80D81FEC75D0465010940D948894E0532F9E761BF7CA1D784B0BFB7DDFAA5ED9A5894795920494012BB97D75EFE9463C72D81CB46536E55D7F2021280E5CDB5B8';
wwv_flow_imp.g_varchar2_table(121) := '8040BEB8F3055EDBD4E3E4DFC893FEB57D56EE3A812476798E21635DBB676E09E458AA2DAF1C819E0424003D8D96BE160572D69F4BFEF9E22E167E5E209787F360DBF38F5E362E90B1CE98D7869963491250AB756B39FBAD21200158435D9B930BEC27FE';
wwv_flow_imp.g_varchar2_table(122) := '9CF5D75EF24F273211E4F270DE5BC611C89867EC6B234E1290E7022402B562CAF5202001E86194F4F1894026FC2C39DBCF72EDC49F0A33016422C87BCB780219FB1C03D744BE4F0472CC2519C892E3F09A3A947D2A60CD3A02128075DCB55A2990B3AE53';
wwv_flow_imp.g_varchar2_table(123) := '4B26FC2C39DBCF5259DD8B6279202C13C08B15DE0C299063E0DA24205039E6920C64C97178EA18CDBA94B51068554002D0EAC8E8D72C0279002C937F1E089BA501957627902420C744771DDF4C8705B2968004602D79ED2E2EF038F97BD27F71F71E1A4C';
wwv_flow_imp.g_varchar2_table(124) := '4298DF10B8E56A400FF1E9238153021280532AD66D4E205FEC79FA7B7381096852815C0DC8B13269A52ABB2860E37A021280F5ECB56AA8E8310000081649444154BC80C0E359FF6B9FDCE58B7D81E634B101811C2BB9252011D8C0600AE1A28004E0228F';
wwv_flow_imp.g_varchar2_table(125) := '8D730B64829EA38DD49B2FF19CF5E7F2EE1C6DF458675CCEF5DB84F7814C8E99240231C9F2C196E9DECD55EF743D5CA2266DAC29200158535FDB939E996772CB62E23F7F6065523BB7F5D2B673FB6C7D7D4CB264B2CE3265BCA977CAFAD445E05A0109C0';
wwv_flow_imp.g_varchar2_table(126) := 'B562CA4F2A9033AD5B1EBECA44BF5F1E27FC87CBFC39DBCF923A27EDE4862A8BCDB1771C63B8A130270F25937596D8C52AC94096D865B9A6C1944F1DD7ECB3D5B2E25A574002B0AEBFD69F0BECBF5CF3055BB364A2DF2F99D4B23CAFCA4B85C0A1771CF9';
wwv_flow_imp.g_varchar2_table(127) := '55A03D2F12ABF865895D969A63765F26E553C7F3EABC10584D4002B01ABD8609102030B280D8D7169000AC3D02DA2740800001022B0848005640D724010204461710FFFA021280F5C7400F0810204080C0E2021280C5C93548800081D105C4DF828004A0';
wwv_flow_imp.g_varchar2_table(128) := '8551D0070204081020B0B08004606170CD112040607401F1B721200168631CF48200010204082C2A200158945B63040810185D40FCAD0848005A1909FD2040800001020B0A480016C4D6140102044617107F3B02128076C6424F0810204080C062021280';
wwv_flow_imp.g_varchar2_table(129) := 'C5A83544800081D105C4DF928004A0A5D1D0170204081020B0908004602168CD102040607401F1B7252001686B3CF48600010204082C22200158845923040810185D40FCAD0948005A1B11FD2140800001020B0848001640D6040102044617107F7B0212';
wwv_flow_imp.g_varchar2_table(130) := '80F6C6448F0810204080C0EC021280D9893540800081D105C4DFA28004A0C551D127020408102030B38004606660D5132040607401F1B729200168735CF48A0001020408CC2A2001989557E5040810185D40FCAD0A48005A1D19FD224080000102330A48';
wwv_flow_imp.g_varchar2_table(131) := '0066C455350102044617107FBB02128076C746CF0810204080C06C021280D968554C800081D105C4DFB28004A0E5D1D137020408102030938004602658D5122040607401F1B72D2001687B7CF48E0001020408CC222001988555A5040810185D40FCAD0B';
wwv_flow_imp.g_varchar2_table(132) := '48005A1F21FD23408000010233084800664055250102044617107FFB021280F6C7480F0910204080C0E4021280C9495548800081D105C4DF838004A08751D247020408102030B18004606250D5112040607401F1F7212001E8639CF49200010204084C2A';
wwv_flow_imp.g_varchar2_table(133) := '200198945365040810185D40FCBD0848007A1929FD244080000102130A480026C454150102044617107F3F0212807EC64A4F0910204080C064021280C9285544800081D105C4DF938004A0A7D1D257020408102030918004602248D5102040607401F1F7';
wwv_flow_imp.g_varchar2_table(134) := '252001E86BBCF49600010204084C22200198845125040810185D40FCBD0948007A1B31FD25408000010213084800264054050102044617107F7F021280FEC64C8F0910204080C0DD021280BB095540800081D105C4DFA38004A0C751D367020408102070';
wwv_flow_imp.g_varchar2_table(135) := 'A78004E04E40BB132040607401F1F7292001E873DCF49A0001020408DC252001B88BCFCE040810185D40FCBD0A48007A1D39FD26408000010277084800EEC0B32B0102044617107FBF0212807EC74ECF0910204080C0CD0212809BE9EC48800081D105C4';
wwv_flow_imp.g_varchar2_table(136) := 'DFB38004A0E7D1D377020408102070A38004E04638BB112040607401F1F72D2001E87BFCF49E0001020408DC242001B889CD4E040810185D40FCBD0B48007A1F41FD274080000102370848006E40B30B0102044617107FFF021280FEC750040408102040';
wwv_flow_imp.g_varchar2_table(137) := 'E06A0109C0D56476204080C0E802E2DF828004600BA32806020408102070A58004E04A30C509102030BA80F8B7212001D8C6388A8200010204085C252001B88A4B610204088C2E20FEAD084800B63292E220408000010257084800AEC05294000102A30B';
wwv_flow_imp.g_varchar2_table(138) := '887F3B021280ED8CA548081020408040B58004A09A4A410204088C2E20FE2D094800B6349A62214080000102950212804A28C508102030BA80F8B7252001D8D6788A86000102040854094800AA9814224080C0E802E2DF9A8004606B232A1E0204081020';
wwv_flow_imp.g_varchar2_table(139) := '50212001A8405284000102A30B887F7B021280ED8DA98808102040804051400250245280000102A30B887F8B0212802D8EAA980810204080404140025000B299000102A30B887F9B0212806D8EABA80810204080C0450109C0451E1B09102030BA80F8B7';
wwv_flow_imp.g_varchar2_table(140) := '2A2001D8EAC88A8B00010204085C1090005CC0B189000102A30B887FBB021280ED8EADC80810204080C0590109C0591A1B08102030BA80F8B72C2001D8F2E88A8D00010204089C1190009C81B19A000102A30B887FDB0212806D8FAFE80810204080C049';
wwv_flow_imp.g_varchar2_table(141) := '0109C049162B09102030BA80F8B72E2001D8FA088B8F00010204089C1090009C40B18A000102A30B887FFB021280ED8FB1080910204080C0130109C013122B08102030BA80F8471090008C30CA622440800001024702128023101F09102030BA80F8C710';
wwv_flow_imp.g_varchar2_table(142) := '90008C31CEA22440800001022F0948005EE2F081000102A30B887F140109C028232D4E02040810207020200138C0F096000102A30B887F1C0109C038632D520204081020F0424002F082C21B0204088C2E20FE91042400238DB6580910204080C0730109';
wwv_flow_imp.g_varchar2_table(143) := 'C073082F040810185D40FC63094800C61A6FD1122040800081470109C023831F040810185D40FCA3094800461B71F1122040800081070109C003827F040810185D40FCE3094800C61B73111320408000819D04C04140800081E105008C2820011871D4C5';
wwv_flow_imp.g_varchar2_table(144) := '4C80000102C30B4800863F0400102030BA80F8C71490008C39EEA22640800081C1052400831F00C22740607401F18F2A20011875E4C54D80000102430B4800861E7EC1132030BA80F8C71590008C3BF622274080008181052400030FBED00910185D40FC';
wwv_flow_imp.g_varchar2_table(145) := '230B4800461E7DB113204080C0B002128061875EE004088C2E20FEB105FE060000FFFF36D2A9E60000000649444154030094D7E20060CEAF460000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4585226909134463890)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013061006Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061006Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(4585228235810463891)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20261013061006Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061006Z')
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
 p_id=>wwv_flow_imp.id(4585294369002464613)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(4585294369002464613)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20261013061014Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061014Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4585295078054464614)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4585294610638464613)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tms_employees_first_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4585242144040464143)
,p_lov_name=>'TMS_EMPLOYEES.FIRST_NAME'
,p_static_id=>'tms-employees-first-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TMS_EMPLOYEES'
,p_return_column_name=>'EMPLOYEE_ID'
,p_display_column_name=>'FIRST_NAME'
,p_default_sort_column_name=>'FIRST_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:O1vm05Yj4GZy2MD94fbGr32RnvGbVrvoK2ArKsWJAWQ'
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061009Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tms_leave_types
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4615845595422597722)
,p_lov_name=>'TMS_LEAVE.TYPES'
,p_static_id=>'tms-leave-types'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TMS_LEAVE_TYPES'
,p_return_column_name=>'LEAVE_TYPE_ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:tA-eA7iVBg_V6DU1x5h-TZRho0wjBbs-gTxw0IcQqKs'
,p_created_on=>wwv_flow_imp.dz('20261013091905Z')
,p_updated_on=>wwv_flow_imp.dz('20261013091905Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tms_task_category
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4615895333722607882)
,p_lov_name=>'TMS_TASK.CATEGORY'
,p_static_id=>'tms-task-category'
,p_lov_query=>'.'||wwv_flow_imp.id(4615895333722607882)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:HHJXNDLctQ-9J7UHuEAM5zBIq5WSSV13IhW6Xy2IEms'
,p_created_on=>wwv_flow_imp.dz('20261013092046Z')
,p_updated_on=>wwv_flow_imp.dz('20261013092046Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615896742401607886)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Benefits'
,p_lov_return_value=>'Benefits'
,p_static_id=>'benefits'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615897109294607887)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Facilities'
,p_lov_return_value=>'Facilities'
,p_static_id=>'facilities'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615895913976607885)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'HR Documents'
,p_lov_return_value=>'HR Documents'
,p_static_id=>'hr-documents'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615895534485607884)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'IT Setup'
,p_lov_return_value=>'IT Setup'
,p_static_id=>'it-setup'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615896336056607886)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Training'
,p_lov_return_value=>'Training'
,p_static_id=>'training'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tms_task_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4615862582118602441)
,p_lov_name=>'TMS_TASK.STATUS'
,p_static_id=>'tms-task-status'
,p_lov_query=>'.'||wwv_flow_imp.id(4615862582118602441)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:H4uzTvMRCIk06XYVcAY91L9IdAX3ay5IZrNfnht16UY'
,p_created_on=>wwv_flow_imp.dz('20261013091952Z')
,p_updated_on=>wwv_flow_imp.dz('20261013091952Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615863970392602444)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Blocked'
,p_lov_return_value=>'Blocked'
,p_static_id=>'blocked'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615863561991602443)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Done'
,p_lov_return_value=>'Done'
,p_static_id=>'done'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615863150307602443)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'In Progress'
,p_lov_return_value=>'In Progress'
,p_static_id=>'in-progress'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4615862721803602442)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Pending'
,p_lov_return_value=>'Pending'
,p_static_id=>'pending'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(4585228586165463893)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(4585222197427463713)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20261013061005Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4585222369218463714)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20261013061005Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061005Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4585269875090464578)
,p_short_name=>'Leave Request'
,p_static_id=>'leave-request'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4585266153928464571)
,p_short_name=>'My Onboarding Tasks'
,p_static_id=>'my-onboarding-tasks'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4585271564298464581)
,p_short_name=>'My Payslip'
,p_static_id=>'my-payslip'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4585268189613464575)
,p_short_name=>'My Profile'
,p_static_id=>'my-profile'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
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
 p_id=>wwv_flow_imp.id(4585223074282463717)
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
,p_created_on=>wwv_flow_imp.dz('20261013061005Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061006Z')
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
 p_id=>wwv_flow_imp.id(4585221416796463710)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20261013061005Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061005Z')
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
 p_id=>wwv_flow_imp.id(4585221700514463711)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20261013061005Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061005Z')
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
,p_created_on=>wwv_flow_imp.dz('20261013061006Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013061006Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Employee Self-Service Portal'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013072244Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4585238259421463948)
,p_plug_name=>'Employee Self-Service Portal'
,p_static_id=>'employee-self-service-portal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>Welcome, <span>&APP_USER.</span>!</h2>',
'<p>You have onboarding tasks waiting.</p>'))
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013072151Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4585293968996464612)
,p_plug_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(4585291751964464607)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2890197131116233323
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20261013061014Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061014Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4472947109277473017)
,p_plug_name=>'Your Onboarding Progress'
,p_static_id=>'your-onboarding-progress'
,p_title=>'Your Onboarding Progress'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="width:100%;height:16px;overflow:hidden;background:#e0e0e0;border-radius:8px;">',
'  <div id="prog" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0" style="width:0%;height:100%;background:#3B82F6;border-radius:8px;">',
'  </div>',
'</div>',
'<p id="prog-status" style="margin:8px 0 0;">0% complete - tasks not yet loaded</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013072244Z')
,p_updated_on=>wwv_flow_imp.dz('20261013072244Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'My Onboarding Tasks'
,p_alias=>'MY-ONBOARDING-TASKS'
,p_step_title=>'My Onboarding Tasks'
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
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013075035Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4585265586260464570)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(4585222197427463713)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4585257873428464543)
,p_plug_name=>'Onboarding Tasks'
,p_static_id=>'my-onboarding-tasks'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        T.*, E.Email',
'    FROM',
'        TMS_ONBOARDING_TASKS T',
'        JOIN TMS_EMPLOYEES E ON E.EMPLOYEE_ID = T.EMPLOYEE_ID',
'    WHERE',
'        lower(T.ASSIGNED_TO) = LOWER(:APP_USER)',
''))
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
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013075035Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594983478761740408)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20261013074933Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594983501178740409)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20261013074933Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472950239029473048)
,p_name=>'ASSIGNED_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNED_TO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Assigned To'
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
,p_updated_on=>wwv_flow_imp.dz('20261013075022Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472950368313473049)
,p_name=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Category'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
,p_updated_on=>wwv_flow_imp.dz('20261013075022Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594982821992740402)
,p_name=>'COMPLETED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPLETED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Completed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
,p_updated_on=>wwv_flow_imp.dz('20261013074933Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594982951797740403)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Created'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261013075035Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594983034213740404)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Created By'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261013075035Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472950439356473050)
,p_name=>'DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Due Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
,p_updated_on=>wwv_flow_imp.dz('20261013075022Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594983318171740407)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1280
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
,p_updated_on=>wwv_flow_imp.dz('20261013074933Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472950013035473046)
,p_name=>'EMPLOYEE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Employee Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
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
,p_updated_on=>wwv_flow_imp.dz('20261013074932Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594982708316740401)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Pending;Pending,In Progress;In Progress,Done;Done,Blocked;Blocked'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'--Select Status--'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261013074933Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472949979484473045)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261013074932Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4472950131566473047)
,p_name=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Task Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
,p_updated_on=>wwv_flow_imp.dz('20261013074955Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594983156698740405)
,p_name=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Updated'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261013075035Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4594983216994740406)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Updated By'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261013075035Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4472949887919473044)
,p_internal_uid=>4472949887919473044
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
,p_updated_on=>wwv_flow_imp.dz('20261013074933Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4595053514262752278)
,p_interactive_grid_id=>wwv_flow_imp.id(4472949887919473044)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20261013074933Z')
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4595053623944752279)
,p_report_id=>wwv_flow_imp.id(4595053514262752278)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595054138724752280)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4472949979484473045)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595055106590752282)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4472950013035473046)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595056055870752284)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4472950131566473047)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595057068356752286)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4472950239029473048)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595057822556752288)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4472950368313473049)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595058790762752290)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4472950439356473050)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595059635871752292)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4594982708316740401)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595060590182752293)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4594982821992740402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595061489831752295)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4594982951797740403)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595062328213752297)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4594983034213740404)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595063270345752299)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4594983156698740405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595064128301752301)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4594983216994740406)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595065030876752303)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4594983318171740407)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4595065957241752304)
,p_view_id=>wwv_flow_imp.id(4595053623944752279)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(4594983478761740408)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4585264264763464568)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4585257873428464543)
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
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013074932Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4585264614597464569)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4585257873428464543)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4585265069526464569)
,p_event_id=>wwv_flow_imp.id(4585264614597464569)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4585257873428464543)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4594983636671740410)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4585257873428464543)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Onboarding Tasks - Save Interactive Grid Data'
,p_static_id=>'onboarding-tasks-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4594983636671740410
,p_created_on=>wwv_flow_imp.dz('20261013074932Z')
,p_updated_on=>wwv_flow_imp.dz('20261013074932Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Onboarding Task'
,p_alias=>'ONBOARDING-TASK'
,p_page_mode=>'MODAL'
,p_step_title=>'Onboarding Task'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4585250453616464155)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061009Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4585241356105464142)
,p_plug_name=>'Onboarding Task'
,p_static_id=>'onboarding-task'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TMS_ONBOARDING_TASKS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4585250878131464155)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4585250453616464155)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061009Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(4585251399432464156)
,p_button_id=>wwv_flow_imp.id(4585250878131464155)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061009Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4585252637872464157)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4585250453616464155)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061009Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4585251873494464157)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4585250453616464155)
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
,p_button_condition=>'P3_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4585252264648464157)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4585250453616464155)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061009Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585243181647464145)
,p_name=>'P3_ASSIGNED_TO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_item_source_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_prompt=>'Assigned To'
,p_source=>'ASSIGNED_TO'
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
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585243503050464146)
,p_name=>'P3_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_item_source_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_prompt=>'Category'
,p_source=>'CATEGORY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585244788723464149)
,p_name=>'P3_COMPLETED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_item_source_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_prompt=>'Completed Date'
,p_source=>'COMPLETED_DATE'
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
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585245185138464150)
,p_name=>'P3_CREATED'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_item_source_plug_id=>wwv_flow_imp.id(4585241356105464142)
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
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585245557742464151)
,p_name=>'P3_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_item_source_plug_id=>wwv_flow_imp.id(4585241356105464142)
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
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585243900954464147)
,p_name=>'P3_DUE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_item_source_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_prompt=>'Due Date'
,p_source=>'DUE_DATE'
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
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585242001932464143)
,p_name=>'P3_EMPLOYEE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_item_source_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_prompt=>'Employee'
,p_source=>'EMPLOYEE_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TMS_EMPLOYEES.FIRST_NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585244357447464147)
,p_name=>'P3_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_item_source_plug_id=>wwv_flow_imp.id(4585241356105464142)
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
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585241605756464142)
,p_name=>'P3_TASK_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_item_source_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_prompt=>'Task ID'
,p_source=>'TASK_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1612549789555753698
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585242738079464145)
,p_name=>'P3_TASK_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_item_source_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_prompt=>'Task Name'
,p_source=>'TASK_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585245905279464151)
,p_name=>'P3_UPDATED'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_item_source_plug_id=>wwv_flow_imp.id(4585241356105464142)
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
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585246396950464152)
,p_name=>'P3_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4585241356105464142)
,p_item_source_plug_id=>wwv_flow_imp.id(4585241356105464142)
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
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4585253842501464159)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4585253842501464159
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061009Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4585253061567464158)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4585241356105464142)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Onboarding Task'
,p_static_id=>'initialize-form-onboarding-task'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>4585253061567464158
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061009Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4585253440858464158)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4585241356105464142)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Onboarding Task'
,p_static_id=>'process-form-onboarding-task'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4585253440858464158
,p_created_on=>wwv_flow_imp.dz('20261013061009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061009Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'My Profile'
,p_alias=>'MY-PROFILE'
,p_step_title=>'My Profile'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4585267505338464574)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(4585222197427463713)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Leave Request'
,p_alias=>'LEAVE-REQUEST'
,p_step_title=>'Leave Request'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013104715Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4585269241589464577)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(4585222197427463713)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4594986464650740438)
,p_plug_name=>'Leave Request Form'
,p_static_id=>'leave-request-form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TMS_LEAVE_REQUESTS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261013100008Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100009Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4623772370365840405)
,p_plug_name=>'My Leave History'
,p_static_id=>'my-leave-history'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT leave_type_id,',
'       start_date,',
'       end_date,',
'       days_requested,',
'       status',
'  FROM tms_leave_requests',
' WHERE employee_id = :P5_EMPLOYEE_ID',
' ORDER BY start_date DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P5_EMPLOYEE_ID'
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
,p_created_on=>wwv_flow_imp.dz('20261013100434Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100527Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4623772409735840406)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>4623772409735840406
,p_created_on=>wwv_flow_imp.dz('20261013100434Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100527Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4623772880445840410)
,p_db_column_name=>'DAYS_REQUESTED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Days Requested'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013100435Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100435Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4623772757760840409)
,p_db_column_name=>'END_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013100435Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100435Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4623772516216840407)
,p_db_column_name=>'LEAVE_TYPE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Leave Type Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013100434Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100434Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4623772675081840408)
,p_db_column_name=>'START_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013100434Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100434Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4623772937189840411)
,p_db_column_name=>'STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013100435Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100435Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4627435743958567689)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LEAVE_TYPE_ID:START_DATE:END_DATE:DAYS_REQUESTED:STATUS'
,p_created_on=>wwv_flow_imp.dz('20261013100527Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100527Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4623772286132840404)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_button_name=>'Cancel'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261013100048Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100048Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4623772187867840403)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_button_name=>'SUBMIT_LEAVE'
,p_static_id=>'submit-leave'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Leave'
,p_button_position=>'CREATE'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261013100009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013104715Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4594987425934740448)
,p_name=>'P5_APPROVER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_item_source_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_source=>'APPROVER_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013100009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100230Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4594987177008740445)
,p_name=>'P5_DAYS_REQUESTED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_item_source_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_prompt=>'Days Requested'
,p_source=>'DAYS_REQUESTED'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013100008Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100008Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4594986738784740441)
,p_name=>'P5_EMPLOYEE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_item_source_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_prompt=>'Employee Id'
,p_source=>'EMPLOYEE_ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013100008Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100147Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4594987062507740444)
,p_name=>'P5_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_item_source_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
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
,p_created_on=>wwv_flow_imp.dz('20261013100008Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100008Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4594986854499740442)
,p_name=>'P5_LEAVE_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_item_source_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_prompt=>'Leave Type Id'
,p_source=>'LEAVE_TYPE_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TMS_LEAVE.TYPES'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select Leave Type---'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013100008Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100147Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4594987257249740446)
,p_name=>'P5_REASON'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_item_source_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_prompt=>'Reason'
,p_source=>'REASON'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013100008Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100008Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4594986683608740440)
,p_name=>'P5_REQUEST_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_item_source_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_source=>'REQUEST_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013100008Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100008Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4594986932724740443)
,p_name=>'P5_START_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_item_source_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
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
,p_created_on=>wwv_flow_imp.dz('20261013100008Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100008Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4594987392424740447)
,p_name=>'P5_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_item_source_plug_id=>wwv_flow_imp.id(4594986464650740438)
,p_item_default=>'Submitted'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013100008Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100219Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(4623773273474840414)
,p_computation_sequence=>10
,p_computation_item=>'P5_DAYS_REQUESTED'
,p_static_id=>'p5-days-requested'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'TRUNC(TO_DATE(:P5_END_DATE, ''MM/DD/YYYY'')) - TRUNC(TO_DATE(:P5_START_DATE, ''MM/DD/YYYY'')) + 1'
,p_created_on=>wwv_flow_imp.dz('20261013104426Z')
,p_updated_on=>wwv_flow_imp.dz('20261013104426Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4623773313939840415)
,p_validation_name=>'End date must be after start date'
,p_static_id=>'end-date-must-be-after-start-date'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P_END_DATE IS NOT NULL',
'AND :P_START_DATE IS NOT NULL',
'AND TRUNC(:P_END_DATE) < TRUNC(:P_START_DATE)',
'THEN',
'RETURN ''End date must be after start date'';',
'END IF;',
'',
'RETURN NULL;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261013104544Z')
,p_updated_on=>wwv_flow_imp.dz('20261013104544Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4623773428091840416)
,p_validation_name=>'Sufficient balance'
,p_static_id=>'sufficient-balance'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_balance NUMBER;',
'',
'BEGIN',
'',
'l_balance := ess_util.calculate_leave_balance(:P5_EMPLOYEE_ID, :P5_LEAVE_TYPE_ID);',
'IF l_balance IS NULL THEN',
'',
'RETURN ''Unable to determine leave balance.'';',
'',
'ELSIF l_balance < :P5_DAYS_REQUESTED THEN',
'',
'RETURN ''Insufficient leave balance.'';',
'',
'END IF;',
'RETURN NULL;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261013104544Z')
,p_updated_on=>wwv_flow_imp.dz('20261013104544Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4594986539440740439)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4594986464650740438)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Leave Request'
,p_static_id=>'initialize-form-leave-request'
,p_internal_uid=>4594986539440740439
,p_created_on=>wwv_flow_imp.dz('20261013100009Z')
,p_updated_on=>wwv_flow_imp.dz('20261013100009Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4623773635184840418)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4594986464650740438)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Leave Request'
,p_static_id=>'process-form-leave-request'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4623773635184840418
,p_created_on=>wwv_flow_imp.dz('20261013104652Z')
,p_updated_on=>wwv_flow_imp.dz('20261013104652Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'My Payslip'
,p_alias=>'MY-PAYSLIP'
,p_step_title=>'My Payslip'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013061013Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4585270991267464580)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(4585222197427463713)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261013061013Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061013Z')
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
,p_step_title=>'Employee Self-Service Portal - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2104585595298951431
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20261013061006Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4585230519800463898)
,p_plug_name=>'Employee Self-Service Portal'
,p_static_id=>'employee-self-service-portal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677585639786677191
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4585232753484463937)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4585230519800463898)
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
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585231973768463936)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4585230519800463898)
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
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585232488820463937)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4585230519800463898)
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
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4585231491873463935)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4585230519800463898)
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
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4585236985933463943)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4585236985933463943
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4585236559617463943)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>4585236559617463943
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4585233103995463938)
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
,p_internal_uid=>4585233103995463938
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4585234225928463940)
,p_page_process_id=>wwv_flow_imp.id(4585233103995463938)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4585234749090463941)
,p_page_process_id=>wwv_flow_imp.id(4585233103995463938)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4585233686841463939)
,p_page_process_id=>wwv_flow_imp.id(4585233103995463938)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4585235165232463941)
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
,p_internal_uid=>4585235165232463941
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4585236195849463942)
,p_page_process_id=>wwv_flow_imp.id(4585235165232463941)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4585235659208463942)
,p_page_process_id=>wwv_flow_imp.id(4585235165232463941)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20261013061007Z')
,p_updated_on=>wwv_flow_imp.dz('20261013061007Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(4592381611947774032)
,p_deinstall_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013070148Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013104901Z')
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
 p_id=>wwv_flow_imp.id(4592415510916777124)
,p_install_id=>wwv_flow_imp.id(4592381611947774032)
,p_name=>'TMS_DDL'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013070219Z')
,p_updated_on=>wwv_flow_imp.dz('20261013070219Z')
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
 p_id=>wwv_flow_imp.id(4592425231586779351)
,p_install_id=>wwv_flow_imp.id(4592381611947774032)
,p_name=>'TMS_DML'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013070241Z')
,p_updated_on=>wwv_flow_imp.dz('20261013070241Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
end;
/
prompt --application/deployment/install/install_ess_util
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := 'create or replace PACKAGE ess_util AS'||wwv_flow.LF||
'  FUNCTION calculate_leave_balance ('||wwv_flow.LF||
'      p_emp_id        I';
wwv_flow_imp.g_varchar2_table(2) := 'N NUMBER,'||wwv_flow.LF||
'      p_leave_type_id IN NUMBER'||wwv_flow.LF||
'  ) RETURN NUMBER;'||wwv_flow.LF||
'END ess_util;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'create or replace ';
wwv_flow_imp.g_varchar2_table(3) := 'PACKAGE BODY ess_util AS'||wwv_flow.LF||
'  FUNCTION calculate_leave_balance ('||wwv_flow.LF||
'      p_emp_id        IN NUMBER,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(4) := '    p_leave_type_id IN NUMBER'||wwv_flow.LF||
'  ) RETURN NUMBER'||wwv_flow.LF||
'  IS'||wwv_flow.LF||
'      l_year        NUMBER := EXTRACT(YEAR F';
wwv_flow_imp.g_varchar2_table(5) := 'ROM SYSDATE);'||wwv_flow.LF||
'      l_remaining   TMS_LEAVE_BALANCES.REMAINING%TYPE;'||wwv_flow.LF||
'      l_entitlement TMS_LEAVE';
wwv_flow_imp.g_varchar2_table(6) := '_TYPES.MAX_DAYS_PER_YEAR%TYPE;'||wwv_flow.LF||
'      l_used        NUMBER := 0;'||wwv_flow.LF||
'  BEGIN'||wwv_flow.LF||
'      IF p_emp_id IS NULL';
wwv_flow_imp.g_varchar2_table(7) := ' OR p_leave_type_id IS NULL THEN'||wwv_flow.LF||
'          RETURN NULL;'||wwv_flow.LF||
'      END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'      -- First try the cu';
wwv_flow_imp.g_varchar2_table(8) := 'rrent balance table.'||wwv_flow.LF||
'      BEGIN'||wwv_flow.LF||
'          SELECT b.remaining'||wwv_flow.LF||
'            INTO l_remaining'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(9) := '       FROM tms_leave_balances b'||wwv_flow.LF||
'           WHERE b.employee_id   = p_emp_id'||wwv_flow.LF||
'             AND b.le';
wwv_flow_imp.g_varchar2_table(10) := 'ave_type_id = p_leave_type_id'||wwv_flow.LF||
'             AND b.year          = l_year;'||wwv_flow.LF||
''||wwv_flow.LF||
'          RETURN l_rema';
wwv_flow_imp.g_varchar2_table(11) := 'ining;'||wwv_flow.LF||
'      EXCEPTION'||wwv_flow.LF||
'          WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'              NULL;'||wwv_flow.LF||
'      END;'||wwv_flow.LF||
''||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(12) := ' -- Fallback: calculate from entitlement minus approved leave requests.'||wwv_flow.LF||
'      BEGIN'||wwv_flow.LF||
'          SELE';
wwv_flow_imp.g_varchar2_table(13) := 'CT lt.max_days_per_year'||wwv_flow.LF||
'            INTO l_entitlement'||wwv_flow.LF||
'            FROM tms_leave_types lt'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(14) := '     WHERE lt.leave_type_id = p_leave_type_id;'||wwv_flow.LF||
'      EXCEPTION'||wwv_flow.LF||
'          WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(15) := '              RETURN NULL;'||wwv_flow.LF||
'      END;'||wwv_flow.LF||
''||wwv_flow.LF||
'      SELECT NVL(SUM(lr.days_requested), 0)'||wwv_flow.LF||
'        INTO ';
wwv_flow_imp.g_varchar2_table(16) := 'l_used'||wwv_flow.LF||
'        FROM tms_leave_requests lr'||wwv_flow.LF||
'       WHERE lr.employee_id   = p_emp_id'||wwv_flow.LF||
'         AND l';
wwv_flow_imp.g_varchar2_table(17) := 'r.leave_type_id = p_leave_type_id'||wwv_flow.LF||
'         AND lr.status        = ''Approved'''||wwv_flow.LF||
'         AND EXTRACT(';
wwv_flow_imp.g_varchar2_table(18) := 'YEAR FROM lr.start_date) = l_year;'||wwv_flow.LF||
''||wwv_flow.LF||
'      RETURN GREATEST(l_entitlement - l_used, 0);'||wwv_flow.LF||
'  END calcu';
wwv_flow_imp.g_varchar2_table(19) := 'late_leave_balance;'||wwv_flow.LF||
'END ess_util;'||wwv_flow.LF||
'/ ';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(4633840513004137369)
,p_install_id=>wwv_flow_imp.id(4592381611947774032)
,p_name=>'ess_util'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261013104901Z')
,p_updated_on=>wwv_flow_imp.dz('20261013104901Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(4633840693908137369)
,p_script_id=>wwv_flow_imp.id(4633840513004137369)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'ESS_UTIL'
,p_created_on=>wwv_flow_imp.dz('20261013104901Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261013104901Z')
,p_created_by=>'ROOPESH.THOKALA@ORACLE.COM'
,p_last_updated_by=>'ROOPESH.THOKALA@ORACLE.COM'
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
