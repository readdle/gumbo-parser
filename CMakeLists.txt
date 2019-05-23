cmake_minimum_required(VERSION 3.11)
project(gumbo)

set(CMAKE_C_STANDARD 99)

file(GLOB HEADER_FILES src/*.h )
file(GLOB EXPORT_HEADER_FILES src/gumbo.h src/tag_enum.h)

set(INCLUDE_DIRECTORIES src)

if(MSVC)
  list(APPEND HEADER_FILES visualc/include/strings.h)
  list(APPEND INCLUDE_DIRECTORIES visualc/include)
endif()

file(INSTALL ${EXPORT_HEADER_FILES} DESTINATION ${CMAKE_BINARY_DIR}/include/gumbo)		

file(GLOB SOURCE_FILES src/*.c)

add_library(gumbo STATIC ${HEADER_FILES} ${SOURCE_FILES})
target_include_directories(gumbo PRIVATE ${INCLUDE_DIRECTORIES})

install(FILES ${EXPORT_HEADER_FILES} 
        DESTINATION ${CMAKE_INSTALL_PREFIX}/include/gumbo
)

install(
        TARGETS gumbo
        EXPORT "${TARGETS_EXPORT_NAME}"
        LIBRARY DESTINATION "lib"
        ARCHIVE DESTINATION "lib"
        RUNTIME DESTINATION "bin"
        INCLUDES DESTINATION "include/gumbo"
)
