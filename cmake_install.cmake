# Install script for directory: /home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/bin/BrokerageHouseMain;/bin/DriverMain;/bin/MarketExchangeMain;/bin/dbt5-post-process;/bin/dbt5-sysstats;/bin/dbt5-get-os-info;/bin/dbt5-run-workload;/bin/dbt5-plot-transaction-rate;/bin/dbt5-generate-report;/bin/dbt5-pgsql-start-db;/bin/dbt5-pgsql-create-indexes;/bin/dbt5-pgsql-create-tables;/bin/dbt5-pgsql-drop-tables;/bin/dbt5-pgsql-restore-db;/bin/dbt5-pgsql-load-stored-procs;/bin/dbt5-pgsql-backup-db;/bin/dbt5-pgsql-db-plans;/bin/dbt5-pgsql-drop-db;/bin/dbt5-pgsql-check-db;/bin/dbt5-pgsql-db-stat;/bin/dbt5-pgsql-stop-db;/bin/dbt5-pgsql-create-db;/bin/dbt5-pgsql-build-db")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/bin" TYPE PROGRAM FILES
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/bin/BrokerageHouseMain"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/bin/DriverMain"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/bin/MarketExchangeMain"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/dbt5-post-process"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/dbt5-sysstats"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/dbt5-get-os-info"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/dbt5-run-workload"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/dbt5-plot-transaction-rate"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/dbt5-generate-report"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-start-db"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-create-indexes"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-create-tables"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-drop-tables"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-restore-db"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-load-stored-procs"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-backup-db"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-db-plans"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-drop-db"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-check-db"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-db-stat"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-stop-db"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-create-db"
    "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/scripts/pgsql/dbt5-pgsql-build-db"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/zsy/softwareInstallation/clionWorkplace/dbt5-0.1.0/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
