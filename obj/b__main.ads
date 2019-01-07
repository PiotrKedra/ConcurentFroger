pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: Community 2018 (20180523-73)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_main" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#c5895af4#;
   pragma Export (C, u00001, "mainB");
   u00002 : constant Version_32 := 16#050ff2f0#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#35869f17#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#d398a95f#;
   pragma Export (C, u00004, "ada__tagsB");
   u00005 : constant Version_32 := 16#12a0afb8#;
   pragma Export (C, u00005, "ada__tagsS");
   u00006 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00006, "adaS");
   u00007 : constant Version_32 := 16#b11c5006#;
   pragma Export (C, u00007, "ada__exceptionsB");
   u00008 : constant Version_32 := 16#2ccb9557#;
   pragma Export (C, u00008, "ada__exceptionsS");
   u00009 : constant Version_32 := 16#5726abed#;
   pragma Export (C, u00009, "ada__exceptions__last_chance_handlerB");
   u00010 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00010, "ada__exceptions__last_chance_handlerS");
   u00011 : constant Version_32 := 16#32a08138#;
   pragma Export (C, u00011, "systemS");
   u00012 : constant Version_32 := 16#ae860117#;
   pragma Export (C, u00012, "system__soft_linksB");
   u00013 : constant Version_32 := 16#77a38a8e#;
   pragma Export (C, u00013, "system__soft_linksS");
   u00014 : constant Version_32 := 16#87be2c0f#;
   pragma Export (C, u00014, "system__secondary_stackB");
   u00015 : constant Version_32 := 16#77347921#;
   pragma Export (C, u00015, "system__secondary_stackS");
   u00016 : constant Version_32 := 16#86dbf443#;
   pragma Export (C, u00016, "system__parametersB");
   u00017 : constant Version_32 := 16#7a4cd513#;
   pragma Export (C, u00017, "system__parametersS");
   u00018 : constant Version_32 := 16#ced09590#;
   pragma Export (C, u00018, "system__storage_elementsB");
   u00019 : constant Version_32 := 16#1f63cb3c#;
   pragma Export (C, u00019, "system__storage_elementsS");
   u00020 : constant Version_32 := 16#75bf515c#;
   pragma Export (C, u00020, "system__soft_links__initializeB");
   u00021 : constant Version_32 := 16#5697fc2b#;
   pragma Export (C, u00021, "system__soft_links__initializeS");
   u00022 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00022, "system__stack_checkingB");
   u00023 : constant Version_32 := 16#bc1fead0#;
   pragma Export (C, u00023, "system__stack_checkingS");
   u00024 : constant Version_32 := 16#34742901#;
   pragma Export (C, u00024, "system__exception_tableB");
   u00025 : constant Version_32 := 16#6f0ee87a#;
   pragma Export (C, u00025, "system__exception_tableS");
   u00026 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00026, "system__exceptionsB");
   u00027 : constant Version_32 := 16#5ac3ecce#;
   pragma Export (C, u00027, "system__exceptionsS");
   u00028 : constant Version_32 := 16#80916427#;
   pragma Export (C, u00028, "system__exceptions__machineB");
   u00029 : constant Version_32 := 16#3bad9081#;
   pragma Export (C, u00029, "system__exceptions__machineS");
   u00030 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00030, "system__exceptions_debugB");
   u00031 : constant Version_32 := 16#4c2a78fc#;
   pragma Export (C, u00031, "system__exceptions_debugS");
   u00032 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00032, "system__img_intB");
   u00033 : constant Version_32 := 16#307b61fa#;
   pragma Export (C, u00033, "system__img_intS");
   u00034 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00034, "system__tracebackB");
   u00035 : constant Version_32 := 16#6c825ffc#;
   pragma Export (C, u00035, "system__tracebackS");
   u00036 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00036, "system__traceback_entriesB");
   u00037 : constant Version_32 := 16#32fb7748#;
   pragma Export (C, u00037, "system__traceback_entriesS");
   u00038 : constant Version_32 := 16#9ad5ad12#;
   pragma Export (C, u00038, "system__traceback__symbolicB");
   u00039 : constant Version_32 := 16#c84061d1#;
   pragma Export (C, u00039, "system__traceback__symbolicS");
   u00040 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00040, "ada__containersS");
   u00041 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00041, "ada__exceptions__tracebackB");
   u00042 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00042, "ada__exceptions__tracebackS");
   u00043 : constant Version_32 := 16#e865e681#;
   pragma Export (C, u00043, "system__bounded_stringsB");
   u00044 : constant Version_32 := 16#455da021#;
   pragma Export (C, u00044, "system__bounded_stringsS");
   u00045 : constant Version_32 := 16#74f70e62#;
   pragma Export (C, u00045, "system__crtlS");
   u00046 : constant Version_32 := 16#d5de7583#;
   pragma Export (C, u00046, "system__dwarf_linesB");
   u00047 : constant Version_32 := 16#f4013fc9#;
   pragma Export (C, u00047, "system__dwarf_linesS");
   u00048 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00048, "ada__charactersS");
   u00049 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00049, "ada__characters__handlingB");
   u00050 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00050, "ada__characters__handlingS");
   u00051 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00051, "ada__characters__latin_1S");
   u00052 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00052, "ada__stringsS");
   u00053 : constant Version_32 := 16#96df1a3f#;
   pragma Export (C, u00053, "ada__strings__mapsB");
   u00054 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00054, "ada__strings__mapsS");
   u00055 : constant Version_32 := 16#a21ad5cd#;
   pragma Export (C, u00055, "system__bit_opsB");
   u00056 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00056, "system__bit_opsS");
   u00057 : constant Version_32 := 16#0626fdbb#;
   pragma Export (C, u00057, "system__unsigned_typesS");
   u00058 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00058, "ada__strings__maps__constantsS");
   u00059 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00059, "interfacesS");
   u00060 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00060, "system__address_imageB");
   u00061 : constant Version_32 := 16#934c1c02#;
   pragma Export (C, u00061, "system__address_imageS");
   u00062 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00062, "system__img_unsB");
   u00063 : constant Version_32 := 16#99d2c14c#;
   pragma Export (C, u00063, "system__img_unsS");
   u00064 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00064, "system__ioB");
   u00065 : constant Version_32 := 16#ace27677#;
   pragma Export (C, u00065, "system__ioS");
   u00066 : constant Version_32 := 16#3080f2ca#;
   pragma Export (C, u00066, "system__mmapB");
   u00067 : constant Version_32 := 16#08d13e5f#;
   pragma Export (C, u00067, "system__mmapS");
   u00068 : constant Version_32 := 16#92d882c5#;
   pragma Export (C, u00068, "ada__io_exceptionsS");
   u00069 : constant Version_32 := 16#a82e20f9#;
   pragma Export (C, u00069, "system__mmap__os_interfaceB");
   u00070 : constant Version_32 := 16#8f4541b8#;
   pragma Export (C, u00070, "system__mmap__os_interfaceS");
   u00071 : constant Version_32 := 16#35737c3a#;
   pragma Export (C, u00071, "system__os_libB");
   u00072 : constant Version_32 := 16#d8e681fb#;
   pragma Export (C, u00072, "system__os_libS");
   u00073 : constant Version_32 := 16#ec4d5631#;
   pragma Export (C, u00073, "system__case_utilB");
   u00074 : constant Version_32 := 16#0d75376c#;
   pragma Export (C, u00074, "system__case_utilS");
   u00075 : constant Version_32 := 16#2a8e89ad#;
   pragma Export (C, u00075, "system__stringsB");
   u00076 : constant Version_32 := 16#52b6adad#;
   pragma Export (C, u00076, "system__stringsS");
   u00077 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00077, "interfaces__cB");
   u00078 : constant Version_32 := 16#467817d8#;
   pragma Export (C, u00078, "interfaces__cS");
   u00079 : constant Version_32 := 16#40d3d043#;
   pragma Export (C, u00079, "system__object_readerB");
   u00080 : constant Version_32 := 16#ec38df4d#;
   pragma Export (C, u00080, "system__object_readerS");
   u00081 : constant Version_32 := 16#1a74a354#;
   pragma Export (C, u00081, "system__val_lliB");
   u00082 : constant Version_32 := 16#a8846798#;
   pragma Export (C, u00082, "system__val_lliS");
   u00083 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00083, "system__val_lluB");
   u00084 : constant Version_32 := 16#7cd4aac9#;
   pragma Export (C, u00084, "system__val_lluS");
   u00085 : constant Version_32 := 16#269742a9#;
   pragma Export (C, u00085, "system__val_utilB");
   u00086 : constant Version_32 := 16#9e0037c6#;
   pragma Export (C, u00086, "system__val_utilS");
   u00087 : constant Version_32 := 16#d7bf3f29#;
   pragma Export (C, u00087, "system__exception_tracesB");
   u00088 : constant Version_32 := 16#167fa1a2#;
   pragma Export (C, u00088, "system__exception_tracesS");
   u00089 : constant Version_32 := 16#d178f226#;
   pragma Export (C, u00089, "system__win32S");
   u00090 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00090, "system__wch_conB");
   u00091 : constant Version_32 := 16#29dda3ea#;
   pragma Export (C, u00091, "system__wch_conS");
   u00092 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00092, "system__wch_stwB");
   u00093 : constant Version_32 := 16#04cc8feb#;
   pragma Export (C, u00093, "system__wch_stwS");
   u00094 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00094, "system__wch_cnvB");
   u00095 : constant Version_32 := 16#266a1919#;
   pragma Export (C, u00095, "system__wch_cnvS");
   u00096 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00096, "system__wch_jisB");
   u00097 : constant Version_32 := 16#a61a0038#;
   pragma Export (C, u00097, "system__wch_jisS");
   u00098 : constant Version_32 := 16#796f31f1#;
   pragma Export (C, u00098, "system__htableB");
   u00099 : constant Version_32 := 16#b66232d2#;
   pragma Export (C, u00099, "system__htableS");
   u00100 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00100, "system__string_hashB");
   u00101 : constant Version_32 := 16#143c59ac#;
   pragma Export (C, u00101, "system__string_hashS");
   u00102 : constant Version_32 := 16#13533955#;
   pragma Export (C, u00102, "gtkS");
   u00103 : constant Version_32 := 16#33477ca6#;
   pragma Export (C, u00103, "glibB");
   u00104 : constant Version_32 := 16#4aaa5e9c#;
   pragma Export (C, u00104, "glibS");
   u00105 : constant Version_32 := 16#57aea1c7#;
   pragma Export (C, u00105, "gtkadaS");
   u00106 : constant Version_32 := 16#26a87304#;
   pragma Export (C, u00106, "gtkada__typesB");
   u00107 : constant Version_32 := 16#708de936#;
   pragma Export (C, u00107, "gtkada__typesS");
   u00108 : constant Version_32 := 16#1d638357#;
   pragma Export (C, u00108, "interfaces__c__stringsB");
   u00109 : constant Version_32 := 16#603c1c44#;
   pragma Export (C, u00109, "interfaces__c__stringsS");
   u00110 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00110, "ada__streamsB");
   u00111 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00111, "ada__streamsS");
   u00112 : constant Version_32 := 16#d96e3c40#;
   pragma Export (C, u00112, "system__finalization_mastersB");
   u00113 : constant Version_32 := 16#695cb8f2#;
   pragma Export (C, u00113, "system__finalization_mastersS");
   u00114 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00114, "system__img_boolB");
   u00115 : constant Version_32 := 16#c779f0d3#;
   pragma Export (C, u00115, "system__img_boolS");
   u00116 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00116, "ada__finalizationS");
   u00117 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00117, "system__finalization_rootB");
   u00118 : constant Version_32 := 16#7d52f2a8#;
   pragma Export (C, u00118, "system__finalization_rootS");
   u00119 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00119, "system__storage_poolsB");
   u00120 : constant Version_32 := 16#114d1f95#;
   pragma Export (C, u00120, "system__storage_poolsS");
   u00121 : constant Version_32 := 16#5a895de2#;
   pragma Export (C, u00121, "system__pool_globalB");
   u00122 : constant Version_32 := 16#7141203e#;
   pragma Export (C, u00122, "system__pool_globalS");
   u00123 : constant Version_32 := 16#5dc07a5a#;
   pragma Export (C, u00123, "system__memoryB");
   u00124 : constant Version_32 := 16#6bdde70c#;
   pragma Export (C, u00124, "system__memoryS");
   u00125 : constant Version_32 := 16#2e260032#;
   pragma Export (C, u00125, "system__storage_pools__subpoolsB");
   u00126 : constant Version_32 := 16#cc5a1856#;
   pragma Export (C, u00126, "system__storage_pools__subpoolsS");
   u00127 : constant Version_32 := 16#84042202#;
   pragma Export (C, u00127, "system__storage_pools__subpools__finalizationB");
   u00128 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00128, "system__storage_pools__subpools__finalizationS");
   u00129 : constant Version_32 := 16#039168f8#;
   pragma Export (C, u00129, "system__stream_attributesB");
   u00130 : constant Version_32 := 16#8bc30a4e#;
   pragma Export (C, u00130, "system__stream_attributesS");
   u00131 : constant Version_32 := 16#6fb37bb4#;
   pragma Export (C, u00131, "glib__objectB");
   u00132 : constant Version_32 := 16#2aa3baae#;
   pragma Export (C, u00132, "glib__objectS");
   u00133 : constant Version_32 := 16#9137cba8#;
   pragma Export (C, u00133, "glib__type_conversion_hooksB");
   u00134 : constant Version_32 := 16#31bc26cd#;
   pragma Export (C, u00134, "glib__type_conversion_hooksS");
   u00135 : constant Version_32 := 16#125d25ef#;
   pragma Export (C, u00135, "gtkada__bindingsB");
   u00136 : constant Version_32 := 16#3c0d33c6#;
   pragma Export (C, u00136, "gtkada__bindingsS");
   u00137 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00137, "gnatS");
   u00138 : constant Version_32 := 16#b48102f5#;
   pragma Export (C, u00138, "gnat__ioB");
   u00139 : constant Version_32 := 16#6227e843#;
   pragma Export (C, u00139, "gnat__ioS");
   u00140 : constant Version_32 := 16#b4645806#;
   pragma Export (C, u00140, "gnat__stringsS");
   u00141 : constant Version_32 := 16#100afe53#;
   pragma Export (C, u00141, "gtkada__cB");
   u00142 : constant Version_32 := 16#64cc7473#;
   pragma Export (C, u00142, "gtkada__cS");
   u00143 : constant Version_32 := 16#40ef8f07#;
   pragma Export (C, u00143, "glib__typesB");
   u00144 : constant Version_32 := 16#5a21e7e7#;
   pragma Export (C, u00144, "glib__typesS");
   u00145 : constant Version_32 := 16#4ceb3587#;
   pragma Export (C, u00145, "glib__valuesB");
   u00146 : constant Version_32 := 16#c5616fd8#;
   pragma Export (C, u00146, "glib__valuesS");
   u00147 : constant Version_32 := 16#4d2a14c0#;
   pragma Export (C, u00147, "glib__glistB");
   u00148 : constant Version_32 := 16#9a45eaf4#;
   pragma Export (C, u00148, "glib__glistS");
   u00149 : constant Version_32 := 16#5d07bab0#;
   pragma Export (C, u00149, "glib__gslistB");
   u00150 : constant Version_32 := 16#6ad64af4#;
   pragma Export (C, u00150, "glib__gslistS");
   u00151 : constant Version_32 := 16#bdad985b#;
   pragma Export (C, u00151, "gtk__mainB");
   u00152 : constant Version_32 := 16#87ce5cdc#;
   pragma Export (C, u00152, "gtk__mainS");
   u00153 : constant Version_32 := 16#693b2ab9#;
   pragma Export (C, u00153, "gdkS");
   u00154 : constant Version_32 := 16#1f09b683#;
   pragma Export (C, u00154, "gdk__deviceB");
   u00155 : constant Version_32 := 16#f2b29831#;
   pragma Export (C, u00155, "gdk__deviceS");
   u00156 : constant Version_32 := 16#dbc9c6f8#;
   pragma Export (C, u00156, "glib__generic_propertiesB");
   u00157 : constant Version_32 := 16#4302ca8a#;
   pragma Export (C, u00157, "glib__generic_propertiesS");
   u00158 : constant Version_32 := 16#e939861d#;
   pragma Export (C, u00158, "gdk__displayB");
   u00159 : constant Version_32 := 16#bef4245f#;
   pragma Export (C, u00159, "gdk__displayS");
   u00160 : constant Version_32 := 16#b7b78b1d#;
   pragma Export (C, u00160, "gtk__argumentsB");
   u00161 : constant Version_32 := 16#7b267290#;
   pragma Export (C, u00161, "gtk__argumentsS");
   u00162 : constant Version_32 := 16#954d425d#;
   pragma Export (C, u00162, "cairoB");
   u00163 : constant Version_32 := 16#9ba1db53#;
   pragma Export (C, u00163, "cairoS");
   u00164 : constant Version_32 := 16#50ae1241#;
   pragma Export (C, u00164, "cairo__regionB");
   u00165 : constant Version_32 := 16#254e7d82#;
   pragma Export (C, u00165, "cairo__regionS");
   u00166 : constant Version_32 := 16#d2a0694f#;
   pragma Export (C, u00166, "gdk__eventB");
   u00167 : constant Version_32 := 16#6237c24c#;
   pragma Export (C, u00167, "gdk__eventS");
   u00168 : constant Version_32 := 16#3ec46981#;
   pragma Export (C, u00168, "gdk__rectangleB");
   u00169 : constant Version_32 := 16#97189aa1#;
   pragma Export (C, u00169, "gdk__rectangleS");
   u00170 : constant Version_32 := 16#3a5a13ec#;
   pragma Export (C, u00170, "gdk__typesS");
   u00171 : constant Version_32 := 16#506046c9#;
   pragma Export (C, u00171, "gdk__rgbaB");
   u00172 : constant Version_32 := 16#000fcaec#;
   pragma Export (C, u00172, "gdk__rgbaS");
   u00173 : constant Version_32 := 16#7777f4da#;
   pragma Export (C, u00173, "gtk__dialogB");
   u00174 : constant Version_32 := 16#c68248a0#;
   pragma Export (C, u00174, "gtk__dialogS");
   u00175 : constant Version_32 := 16#e140b4cc#;
   pragma Export (C, u00175, "gtk__settingsB");
   u00176 : constant Version_32 := 16#a1d2b4c4#;
   pragma Export (C, u00176, "gtk__settingsS");
   u00177 : constant Version_32 := 16#d6f987c1#;
   pragma Export (C, u00177, "gdk__screenB");
   u00178 : constant Version_32 := 16#f34002e1#;
   pragma Export (C, u00178, "gdk__screenS");
   u00179 : constant Version_32 := 16#cf3c2289#;
   pragma Export (C, u00179, "gdk__visualB");
   u00180 : constant Version_32 := 16#a7ecc653#;
   pragma Export (C, u00180, "gdk__visualS");
   u00181 : constant Version_32 := 16#c5f68ec4#;
   pragma Export (C, u00181, "glib__propertiesB");
   u00182 : constant Version_32 := 16#b616830a#;
   pragma Export (C, u00182, "glib__propertiesS");
   u00183 : constant Version_32 := 16#280647e9#;
   pragma Export (C, u00183, "gtk__enumsB");
   u00184 : constant Version_32 := 16#2f638c79#;
   pragma Export (C, u00184, "gtk__enumsS");
   u00185 : constant Version_32 := 16#ec1ad30c#;
   pragma Export (C, u00185, "gtk__style_providerB");
   u00186 : constant Version_32 := 16#dd1bb3e8#;
   pragma Export (C, u00186, "gtk__style_providerS");
   u00187 : constant Version_32 := 16#6f51a557#;
   pragma Export (C, u00187, "gtk__widgetB");
   u00188 : constant Version_32 := 16#4afcdf25#;
   pragma Export (C, u00188, "gtk__widgetS");
   u00189 : constant Version_32 := 16#65d39f71#;
   pragma Export (C, u00189, "gdk__colorB");
   u00190 : constant Version_32 := 16#c9512792#;
   pragma Export (C, u00190, "gdk__colorS");
   u00191 : constant Version_32 := 16#e86ae14e#;
   pragma Export (C, u00191, "gdk__drag_contextsB");
   u00192 : constant Version_32 := 16#0881bf7d#;
   pragma Export (C, u00192, "gdk__drag_contextsS");
   u00193 : constant Version_32 := 16#a31287ff#;
   pragma Export (C, u00193, "gdk__frame_clockB");
   u00194 : constant Version_32 := 16#c9431fde#;
   pragma Export (C, u00194, "gdk__frame_clockS");
   u00195 : constant Version_32 := 16#c7357f7c#;
   pragma Export (C, u00195, "gdk__frame_timingsB");
   u00196 : constant Version_32 := 16#c32e4c50#;
   pragma Export (C, u00196, "gdk__frame_timingsS");
   u00197 : constant Version_32 := 16#59209c0b#;
   pragma Export (C, u00197, "gdk__pixbufB");
   u00198 : constant Version_32 := 16#efc371a2#;
   pragma Export (C, u00198, "gdk__pixbufS");
   u00199 : constant Version_32 := 16#269a2175#;
   pragma Export (C, u00199, "glib__errorB");
   u00200 : constant Version_32 := 16#2d1670cc#;
   pragma Export (C, u00200, "glib__errorS");
   u00201 : constant Version_32 := 16#c87dd074#;
   pragma Export (C, u00201, "gtk__accel_groupB");
   u00202 : constant Version_32 := 16#a060ac8c#;
   pragma Export (C, u00202, "gtk__accel_groupS");
   u00203 : constant Version_32 := 16#6aa1c9c6#;
   pragma Export (C, u00203, "gtk__builderB");
   u00204 : constant Version_32 := 16#2d3e9163#;
   pragma Export (C, u00204, "gtk__builderS");
   u00205 : constant Version_32 := 16#547c16e9#;
   pragma Export (C, u00205, "gtk__selection_dataB");
   u00206 : constant Version_32 := 16#c0b12b6d#;
   pragma Export (C, u00206, "gtk__selection_dataS");
   u00207 : constant Version_32 := 16#8afadb39#;
   pragma Export (C, u00207, "gtk__styleB");
   u00208 : constant Version_32 := 16#0a74348f#;
   pragma Export (C, u00208, "gtk__styleS");
   u00209 : constant Version_32 := 16#46c287fb#;
   pragma Export (C, u00209, "gtk__target_listB");
   u00210 : constant Version_32 := 16#c8e201a7#;
   pragma Export (C, u00210, "gtk__target_listS");
   u00211 : constant Version_32 := 16#4ed74dac#;
   pragma Export (C, u00211, "gtk__target_entryB");
   u00212 : constant Version_32 := 16#a4198072#;
   pragma Export (C, u00212, "gtk__target_entryS");
   u00213 : constant Version_32 := 16#1afdae39#;
   pragma Export (C, u00213, "pangoS");
   u00214 : constant Version_32 := 16#40439d80#;
   pragma Export (C, u00214, "pango__contextB");
   u00215 : constant Version_32 := 16#c7fb249d#;
   pragma Export (C, u00215, "pango__contextS");
   u00216 : constant Version_32 := 16#90244a10#;
   pragma Export (C, u00216, "pango__enumsB");
   u00217 : constant Version_32 := 16#3471da10#;
   pragma Export (C, u00217, "pango__enumsS");
   u00218 : constant Version_32 := 16#f679a38b#;
   pragma Export (C, u00218, "pango__fontB");
   u00219 : constant Version_32 := 16#ee4660ad#;
   pragma Export (C, u00219, "pango__fontS");
   u00220 : constant Version_32 := 16#f800783b#;
   pragma Export (C, u00220, "pango__font_metricsB");
   u00221 : constant Version_32 := 16#0dbbdc00#;
   pragma Export (C, u00221, "pango__font_metricsS");
   u00222 : constant Version_32 := 16#fb8949c3#;
   pragma Export (C, u00222, "pango__languageB");
   u00223 : constant Version_32 := 16#32ede72a#;
   pragma Export (C, u00223, "pango__languageS");
   u00224 : constant Version_32 := 16#199257f3#;
   pragma Export (C, u00224, "pango__font_familyB");
   u00225 : constant Version_32 := 16#d2c37653#;
   pragma Export (C, u00225, "pango__font_familyS");
   u00226 : constant Version_32 := 16#7105f807#;
   pragma Export (C, u00226, "pango__font_faceB");
   u00227 : constant Version_32 := 16#f8ceb2ac#;
   pragma Export (C, u00227, "pango__font_faceS");
   u00228 : constant Version_32 := 16#1d83f1a5#;
   pragma Export (C, u00228, "pango__fontsetB");
   u00229 : constant Version_32 := 16#b449ca40#;
   pragma Export (C, u00229, "pango__fontsetS");
   u00230 : constant Version_32 := 16#6d1debf9#;
   pragma Export (C, u00230, "pango__matrixB");
   u00231 : constant Version_32 := 16#18c25bb4#;
   pragma Export (C, u00231, "pango__matrixS");
   u00232 : constant Version_32 := 16#32c7ce91#;
   pragma Export (C, u00232, "pango__layoutB");
   u00233 : constant Version_32 := 16#5328b47b#;
   pragma Export (C, u00233, "pango__layoutS");
   u00234 : constant Version_32 := 16#0eb638f0#;
   pragma Export (C, u00234, "pango__attributesB");
   u00235 : constant Version_32 := 16#752e808c#;
   pragma Export (C, u00235, "pango__attributesS");
   u00236 : constant Version_32 := 16#5b034ede#;
   pragma Export (C, u00236, "pango__tabsB");
   u00237 : constant Version_32 := 16#d7d606fb#;
   pragma Export (C, u00237, "pango__tabsS");
   u00238 : constant Version_32 := 16#981f8cc5#;
   pragma Export (C, u00238, "gtk__boxB");
   u00239 : constant Version_32 := 16#5a8f2fb2#;
   pragma Export (C, u00239, "gtk__boxS");
   u00240 : constant Version_32 := 16#f73c3e39#;
   pragma Export (C, u00240, "gtk__buildableB");
   u00241 : constant Version_32 := 16#246ded72#;
   pragma Export (C, u00241, "gtk__buildableS");
   u00242 : constant Version_32 := 16#01a6c5ac#;
   pragma Export (C, u00242, "gtk__containerB");
   u00243 : constant Version_32 := 16#41498077#;
   pragma Export (C, u00243, "gtk__containerS");
   u00244 : constant Version_32 := 16#fdcfc008#;
   pragma Export (C, u00244, "gtk__adjustmentB");
   u00245 : constant Version_32 := 16#db201ea1#;
   pragma Export (C, u00245, "gtk__adjustmentS");
   u00246 : constant Version_32 := 16#d5815295#;
   pragma Export (C, u00246, "gtk__orientableB");
   u00247 : constant Version_32 := 16#00f89d78#;
   pragma Export (C, u00247, "gtk__orientableS");
   u00248 : constant Version_32 := 16#3ea48423#;
   pragma Export (C, u00248, "gtk__windowB");
   u00249 : constant Version_32 := 16#66770038#;
   pragma Export (C, u00249, "gtk__windowS");
   u00250 : constant Version_32 := 16#bc6f0714#;
   pragma Export (C, u00250, "gdk__windowB");
   u00251 : constant Version_32 := 16#74e3a3ff#;
   pragma Export (C, u00251, "gdk__windowS");
   u00252 : constant Version_32 := 16#e826a213#;
   pragma Export (C, u00252, "gtk__binB");
   u00253 : constant Version_32 := 16#f9228dba#;
   pragma Export (C, u00253, "gtk__binS");
   u00254 : constant Version_32 := 16#00271f06#;
   pragma Export (C, u00254, "gtk__gentryB");
   u00255 : constant Version_32 := 16#d89cec48#;
   pragma Export (C, u00255, "gtk__gentryS");
   u00256 : constant Version_32 := 16#5b79f7c8#;
   pragma Export (C, u00256, "glib__g_iconB");
   u00257 : constant Version_32 := 16#21dac1d0#;
   pragma Export (C, u00257, "glib__g_iconS");
   u00258 : constant Version_32 := 16#b6631d04#;
   pragma Export (C, u00258, "glib__variantB");
   u00259 : constant Version_32 := 16#a52d83b0#;
   pragma Export (C, u00259, "glib__variantS");
   u00260 : constant Version_32 := 16#83f118a3#;
   pragma Export (C, u00260, "glib__stringB");
   u00261 : constant Version_32 := 16#99f54ff7#;
   pragma Export (C, u00261, "glib__stringS");
   u00262 : constant Version_32 := 16#a972b00d#;
   pragma Export (C, u00262, "gtk__cell_editableB");
   u00263 : constant Version_32 := 16#54c8eb28#;
   pragma Export (C, u00263, "gtk__cell_editableS");
   u00264 : constant Version_32 := 16#42ae15d1#;
   pragma Export (C, u00264, "gtk__editableB");
   u00265 : constant Version_32 := 16#68af644e#;
   pragma Export (C, u00265, "gtk__editableS");
   u00266 : constant Version_32 := 16#ecdbb023#;
   pragma Export (C, u00266, "gtk__entry_bufferB");
   u00267 : constant Version_32 := 16#7fa0bb53#;
   pragma Export (C, u00267, "gtk__entry_bufferS");
   u00268 : constant Version_32 := 16#0623743c#;
   pragma Export (C, u00268, "gtk__entry_completionB");
   u00269 : constant Version_32 := 16#e7327b8d#;
   pragma Export (C, u00269, "gtk__entry_completionS");
   u00270 : constant Version_32 := 16#543c9f83#;
   pragma Export (C, u00270, "gtk__cell_areaB");
   u00271 : constant Version_32 := 16#974f3a07#;
   pragma Export (C, u00271, "gtk__cell_areaS");
   u00272 : constant Version_32 := 16#f4c06e89#;
   pragma Export (C, u00272, "gtk__cell_area_contextB");
   u00273 : constant Version_32 := 16#3d88dd82#;
   pragma Export (C, u00273, "gtk__cell_area_contextS");
   u00274 : constant Version_32 := 16#77f7a454#;
   pragma Export (C, u00274, "gtk__cell_layoutB");
   u00275 : constant Version_32 := 16#263bfe7e#;
   pragma Export (C, u00275, "gtk__cell_layoutS");
   u00276 : constant Version_32 := 16#3b47cdd0#;
   pragma Export (C, u00276, "gtk__cell_rendererB");
   u00277 : constant Version_32 := 16#0a4257ea#;
   pragma Export (C, u00277, "gtk__cell_rendererS");
   u00278 : constant Version_32 := 16#a688e6d9#;
   pragma Export (C, u00278, "gtk__tree_modelB");
   u00279 : constant Version_32 := 16#89b243bf#;
   pragma Export (C, u00279, "gtk__tree_modelS");
   u00280 : constant Version_32 := 16#71becee3#;
   pragma Export (C, u00280, "gtk__imageB");
   u00281 : constant Version_32 := 16#8f4ac823#;
   pragma Export (C, u00281, "gtk__imageS");
   u00282 : constant Version_32 := 16#8ef34314#;
   pragma Export (C, u00282, "gtk__icon_setB");
   u00283 : constant Version_32 := 16#36190202#;
   pragma Export (C, u00283, "gtk__icon_setS");
   u00284 : constant Version_32 := 16#9144495d#;
   pragma Export (C, u00284, "gtk__icon_sourceB");
   u00285 : constant Version_32 := 16#73e79ecd#;
   pragma Export (C, u00285, "gtk__icon_sourceS");
   u00286 : constant Version_32 := 16#ca4cf7f1#;
   pragma Export (C, u00286, "gtk__style_contextB");
   u00287 : constant Version_32 := 16#607aefda#;
   pragma Export (C, u00287, "gtk__style_contextS");
   u00288 : constant Version_32 := 16#09f4d264#;
   pragma Export (C, u00288, "gtk__css_sectionB");
   u00289 : constant Version_32 := 16#6027d9ca#;
   pragma Export (C, u00289, "gtk__css_sectionS");
   u00290 : constant Version_32 := 16#dc7fee84#;
   pragma Export (C, u00290, "gtk__miscB");
   u00291 : constant Version_32 := 16#5aac264f#;
   pragma Export (C, u00291, "gtk__miscS");
   u00292 : constant Version_32 := 16#fff16baf#;
   pragma Export (C, u00292, "gtk__notebookB");
   u00293 : constant Version_32 := 16#10caa265#;
   pragma Export (C, u00293, "gtk__notebookS");
   u00294 : constant Version_32 := 16#c7d072e0#;
   pragma Export (C, u00294, "gtk__print_operationB");
   u00295 : constant Version_32 := 16#7757c76b#;
   pragma Export (C, u00295, "gtk__print_operationS");
   u00296 : constant Version_32 := 16#538d4280#;
   pragma Export (C, u00296, "gtk__page_setupB");
   u00297 : constant Version_32 := 16#e5833ef9#;
   pragma Export (C, u00297, "gtk__page_setupS");
   u00298 : constant Version_32 := 16#c4aea9e4#;
   pragma Export (C, u00298, "glib__key_fileB");
   u00299 : constant Version_32 := 16#b39d6798#;
   pragma Export (C, u00299, "glib__key_fileS");
   u00300 : constant Version_32 := 16#10b85d05#;
   pragma Export (C, u00300, "gtk__paper_sizeB");
   u00301 : constant Version_32 := 16#4c4d014a#;
   pragma Export (C, u00301, "gtk__paper_sizeS");
   u00302 : constant Version_32 := 16#2ea12429#;
   pragma Export (C, u00302, "gtk__print_contextB");
   u00303 : constant Version_32 := 16#bd7b750a#;
   pragma Export (C, u00303, "gtk__print_contextS");
   u00304 : constant Version_32 := 16#26f1a591#;
   pragma Export (C, u00304, "pango__font_mapB");
   u00305 : constant Version_32 := 16#9232faa7#;
   pragma Export (C, u00305, "pango__font_mapS");
   u00306 : constant Version_32 := 16#a6c7f413#;
   pragma Export (C, u00306, "gtk__print_operation_previewB");
   u00307 : constant Version_32 := 16#35840b76#;
   pragma Export (C, u00307, "gtk__print_operation_previewS");
   u00308 : constant Version_32 := 16#6f2baee3#;
   pragma Export (C, u00308, "gtk__print_settingsB");
   u00309 : constant Version_32 := 16#c06ebe02#;
   pragma Export (C, u00309, "gtk__print_settingsS");
   u00310 : constant Version_32 := 16#8efedc1e#;
   pragma Export (C, u00310, "gtk__status_barB");
   u00311 : constant Version_32 := 16#6efa3aae#;
   pragma Export (C, u00311, "gtk__status_barS");
   u00312 : constant Version_32 := 16#aca3d3ad#;
   pragma Export (C, u00312, "gtk__text_iterB");
   u00313 : constant Version_32 := 16#4517b106#;
   pragma Export (C, u00313, "gtk__text_iterS");
   u00314 : constant Version_32 := 16#b381a7b3#;
   pragma Export (C, u00314, "gtk__text_attributesB");
   u00315 : constant Version_32 := 16#6d6e43a1#;
   pragma Export (C, u00315, "gtk__text_attributesS");
   u00316 : constant Version_32 := 16#791156b9#;
   pragma Export (C, u00316, "gtk__text_tagB");
   u00317 : constant Version_32 := 16#212a9e65#;
   pragma Export (C, u00317, "gtk__text_tagS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  gnat%s
   --  gnat.io%s
   --  gnat.io%b
   --  interfaces%s
   --  system%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.io%s
   --  system.io%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  gnat.strings%s
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.case_util%s
   --  system.standard_library%s
   --  system.exception_traces%s
   --  ada.exceptions%s
   --  system.wch_stw%s
   --  system.val_util%s
   --  system.val_llu%s
   --  system.val_lli%s
   --  system.os_lib%s
   --  system.bit_ops%s
   --  ada.characters.handling%s
   --  ada.exceptions.traceback%s
   --  system.secondary_stack%s
   --  system.case_util%b
   --  system.address_image%s
   --  system.bounded_strings%s
   --  system.soft_links%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.containers%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  ada.exceptions.last_chance_handler%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.exception_traces%b
   --  system.memory%s
   --  system.memory%b
   --  system.wch_stw%b
   --  system.val_util%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  interfaces.c%s
   --  system.win32%s
   --  system.mmap%s
   --  system.mmap.os_interface%s
   --  system.mmap.os_interface%b
   --  system.mmap%b
   --  system.os_lib%b
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%b
   --  ada.exceptions.traceback%b
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  system.bounded_strings%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  ada.exceptions.last_chance_handler%b
   --  system.standard_library%b
   --  system.object_reader%s
   --  system.dwarf_lines%s
   --  system.dwarf_lines%b
   --  interfaces.c%b
   --  ada.strings.maps%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  system.object_reader%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c.strings%s
   --  interfaces.c.strings%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.finalization_masters%b
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.storage_pools.subpools%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  gtkada%s
   --  glib%s
   --  gtkada.types%s
   --  glib%b
   --  gtkada.types%b
   --  glib.error%s
   --  glib.error%b
   --  gdk%s
   --  gdk.frame_timings%s
   --  gdk.frame_timings%b
   --  glib.glist%s
   --  glib.glist%b
   --  gdk.visual%s
   --  gdk.visual%b
   --  glib.gslist%s
   --  glib.gslist%b
   --  gtkada.c%s
   --  gtkada.c%b
   --  glib.object%s
   --  glib.values%s
   --  glib.values%b
   --  glib.types%s
   --  glib.type_conversion_hooks%s
   --  glib.type_conversion_hooks%b
   --  gtkada.bindings%s
   --  glib.types%b
   --  gtkada.bindings%b
   --  glib.object%b
   --  cairo%s
   --  cairo%b
   --  cairo.region%s
   --  cairo.region%b
   --  gdk.rectangle%s
   --  gdk.rectangle%b
   --  glib.generic_properties%s
   --  glib.generic_properties%b
   --  gdk.color%s
   --  gdk.color%b
   --  gdk.rgba%s
   --  gdk.rgba%b
   --  gdk.types%s
   --  gdk.event%s
   --  gdk.event%b
   --  glib.key_file%s
   --  glib.key_file%b
   --  glib.properties%s
   --  glib.properties%b
   --  glib.string%s
   --  glib.string%b
   --  glib.variant%s
   --  glib.variant%b
   --  glib.g_icon%s
   --  glib.g_icon%b
   --  gtk%s
   --  gtk.builder%s
   --  gtk.builder%b
   --  gtk.buildable%s
   --  gtk.buildable%b
   --  gtk.cell_area_context%s
   --  gtk.cell_area_context%b
   --  gtk.css_section%s
   --  gtk.css_section%b
   --  gtk.enums%s
   --  gtk.enums%b
   --  gtk.orientable%s
   --  gtk.orientable%b
   --  gtk.paper_size%s
   --  gtk.paper_size%b
   --  gtk.page_setup%s
   --  gtk.page_setup%b
   --  gtk.print_settings%s
   --  gtk.print_settings%b
   --  gtk.target_entry%s
   --  gtk.target_entry%b
   --  gtk.target_list%s
   --  gtk.target_list%b
   --  pango%s
   --  pango.enums%s
   --  pango.enums%b
   --  pango.attributes%s
   --  pango.attributes%b
   --  pango.font_metrics%s
   --  pango.font_metrics%b
   --  pango.language%s
   --  pango.language%b
   --  pango.font%s
   --  pango.font%b
   --  gtk.text_attributes%s
   --  gtk.text_attributes%b
   --  gtk.text_tag%s
   --  gtk.text_tag%b
   --  pango.font_face%s
   --  pango.font_face%b
   --  pango.font_family%s
   --  pango.font_family%b
   --  pango.fontset%s
   --  pango.fontset%b
   --  pango.matrix%s
   --  pango.matrix%b
   --  pango.context%s
   --  pango.context%b
   --  pango.font_map%s
   --  pango.font_map%b
   --  pango.tabs%s
   --  pango.tabs%b
   --  pango.layout%s
   --  pango.layout%b
   --  gtk.print_context%s
   --  gtk.print_context%b
   --  gdk.display%s
   --  gtk.print_operation_preview%s
   --  gtk.tree_model%s
   --  gtk.entry_buffer%s
   --  gtk.editable%s
   --  gtk.cell_editable%s
   --  gtk.adjustment%s
   --  gtk.style%s
   --  gtk.accel_group%s
   --  gdk.frame_clock%s
   --  gdk.pixbuf%s
   --  gtk.icon_source%s
   --  gtk.icon_source%b
   --  gdk.pixbuf%b
   --  gdk.screen%s
   --  gdk.screen%b
   --  gdk.device%s
   --  gdk.drag_contexts%s
   --  gdk.drag_contexts%b
   --  gdk.device%b
   --  gtk.text_iter%s
   --  gtk.text_iter%b
   --  gdk.window%s
   --  gdk.window%b
   --  gtk.selection_data%s
   --  gtk.selection_data%b
   --  gtk.widget%s
   --  gtk.misc%s
   --  gtk.misc%b
   --  gtk.style_provider%s
   --  gtk.style_provider%b
   --  gtk.settings%s
   --  gtk.settings%b
   --  gtk.style_context%s
   --  gtk.icon_set%s
   --  gtk.icon_set%b
   --  gtk.image%s
   --  gtk.image%b
   --  gtk.cell_renderer%s
   --  gtk.container%s
   --  gtk.bin%s
   --  gtk.bin%b
   --  gtk.box%s
   --  gtk.box%b
   --  gtk.status_bar%s
   --  gtk.notebook%s
   --  gtk.cell_layout%s
   --  gtk.cell_layout%b
   --  gtk.cell_area%s
   --  gtk.entry_completion%s
   --  gtk.window%s
   --  gtk.dialog%s
   --  gtk.print_operation%s
   --  gtk.gentry%s
   --  gtk.arguments%s
   --  gtk.status_bar%b
   --  gtk.print_operation_preview%b
   --  gtk.print_operation%b
   --  gtk.notebook%b
   --  gtk.style_context%b
   --  gtk.gentry%b
   --  gtk.tree_model%b
   --  gtk.cell_area%b
   --  gtk.entry_completion%b
   --  gtk.cell_renderer%b
   --  gtk.entry_buffer%b
   --  gtk.editable%b
   --  gtk.cell_editable%b
   --  gtk.window%b
   --  gtk.dialog%b
   --  gtk.adjustment%b
   --  gtk.container%b
   --  gtk.style%b
   --  gtk.widget%b
   --  gtk.accel_group%b
   --  gdk.frame_clock%b
   --  gtk.arguments%b
   --  gdk.display%b
   --  gtk.main%s
   --  gtk.main%b
   --  main%b
   --  END ELABORATION ORDER

end ada_main;
