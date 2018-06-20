project (cv_raster_graphics_editor)
cmake_minimum_required(VERSION 2.8)

# configure OpenCV
find_package(OpenCV REQUIRED)

add_executable(cv_raster_graphics_editor cv_raster_graphics_editor.cpp)
target_link_libraries(cv_raster_graphics_editor ${OpenCV_LIBS})

