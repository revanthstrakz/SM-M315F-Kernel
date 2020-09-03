#! /bin/bash
#git clone --depth=1 https://github.com/Panchajanya1999/azure-clang.git clang-llvm
TC_DIR=~/android/toolchain/clang-llvm
export KBUILD_BUILD_USER="Revanth"
export ARCH=arm64
export SUBARCH=arm64
export ANDROID_MAJOR_VERSION=q
KBUILD_COMPILER_STRING=$("$TC_DIR"/bin/clang --version | head -n 1 | perl -pe 's/\(http.*?\)//gs' | sed -e 's/  */ /g' -e 's/[[:space:]]*$//')
PATH=$TC_DIR/bin/:$PATH
#MAKE+=(
#			CROSS_COMPILE=aarch64-linux-gnu- \
#			CROSS_COMPILE_ARM32=arm-linux-gnueabi- \
#			CC=clang \
#			AR=llvm-ar \
#			OBJDUMP=llvm-objdump \
#			STRIP=llvm-strip
#		)
DEFCONFIG=exynos9610-m31nsxx_defconfig
make $DEFCONFIG
make -j"$PROCS"


	
