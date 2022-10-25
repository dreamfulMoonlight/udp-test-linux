if(NOT DEFINED OpenCV_URL)
    set(OpenCV_URL "https://devops-generic.pkg.coding.smoa.cloud/common/3rdparty/opencv-4.5.3-linux-libjpeg-turbo.zip")
    set(OpenCV_MD5 "b95ae6778412613905c37b9273029ca3d4017c34")
endif()

include(FetchContent)
set(FETCHCONTENT_BASE_DIR ${PROJECT_BINARY_DIR}/3rdParty)

FetchContent_Declare(OpenCV
    URL ${OpenCV_URL}
    URL_HASH SHA1=${OpenCV_MD5}
)

FetchContent_MakeAvailable(OpenCV)

FetchContent_GetProperties(OpenCV SOURCE_DIR OpenCV_SOURCE_DIR)

# get OpenCV_DIR
if(WIN32)
    set(OpenCV_DIR ${OpenCV_SOURCE_DIR}/x64/vc15/lib)
else()
    set(OpenCV_DIR ${OpenCV_SOURCE_DIR}/lib/cmake/opencv4)
endif()