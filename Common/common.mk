SHELL := /bin/bash

# Verbose compile default to true
V ?= 1
ifeq ($(V),1)
  Q =
else
  Q = @
endif

# Build location
BUILD_DIR = build

# Ubuntu LSB
UBUNTU_CODENAME := $(shell lsb_release --short  --codename)

# Default product is x86_64 - amd64 server using the MetaWare toolchain for ARC
product ?= x86_64
ifeq ($(product),edge)
  TARGET          := edge
else ifeq ($(product),gnu)
  TARGET          := gnu
else ifeq ($(product),sim)
  TARGET          := sim
else ifeq ($(product),x86_64)
  TARGET          := x86_64
else
  $(error "illegal optional value of product='$(product)'. Valid values are [gnu|edge|x86_64|sim]")
endif

hardware_type ?= leda_g
ifeq ($(hardware_type),leda_g)
  APU_HARDWARE_TYPE := leda_g
else ifeq ($(hardware_type),leda_e)
  APU_HARDWARE_TYPE := leda_e
else ifeq ($(hardware_type),leda_s)
  APU_HARDWARE_TYPE := leda_s
else
  $(error "illegal optional value of hardware_type='$(hardware_type)'. Valid values are leda_g,leda_e,leda_s")
endif

leda_s_APU_CC_HARDWARE_DEFS := -DGSI_PRODUCT_APU_HARDWARE_LEDA_S
APU_CC_HARDWARE_DEFS := $($(APU_HARDWARE_TYPE)_APU_CC_HARDWARE_DEFS)


# Default mode is debug
mode ?= debug
ifeq ($(mode),debug)
  # Debug
else ifeq ($(mode),release)
  # Release
else
  $(error invalid mode=$(mode), call again with a valid mode - [release|debug])
endif

x86_64_TARGET_GCC_ARCH := x86_64
   gnu_TARGET_GCC_ARCH := x86_64
   sim_TARGET_GCC_ARCH := x86_32_nostdlib
  edge_TARGET_GCC_ARCH := aarch64
TARGET_GCC_ARCH        := $($(TARGET)_TARGET_GCC_ARCH)

# /usr and other locations
x86_64_GSI_USR		     := /usr
   gnu_GSI_USR		     := /opt/gsi/gnu/ubuntu
   sim_GSI_USR		     := /usr
  edge_GSI_USR		     := /opt/gsi/edge/ubuntu
GSI_USR     := $($(TARGET)_GSI_USR)
x86_64_GSI_USR_LOCAL_LIB     := /usr/local/lib
   gnu_GSI_USR_LOCAL_LIB     := /opt/gsi/gnu/ubuntu/lib
   sim_GSI_USR_LOCAL_LIB     := /usr/local/lib
  edge_GSI_USR_LOCAL_LIB     := /opt/gsi/edge/ubuntu/lib
GSI_USR_LOCAL_LIB     := $($(TARGET)_GSI_USR_LOCAL_LIB)
x86_64_GSI_USR_LOCAL_INCLUDE := /usr/local/include
   gnu_GSI_USR_LOCAL_INCLUDE := /opt/gsi/gnu/ubuntu/include
   sim_GSI_USR_LOCAL_INCLUDE := /usr/local/include
  edge_GSI_USR_LOCAL_INCLUDE := /opt/gsi/edge/ubuntu/include
GSI_USR_LOCAL_INCLUDE := $($(TARGET)_GSI_USR_LOCAL_INCLUDE)

x86_64_GSI_USR_LIB           := /usr/lib
   sim_GSI_USR_LIB           := /usr/lib
   gnu_GSI_USR_LIB           := /opt/gsi/gnu/ubuntu/lib
  edge_GSI_USR_LIB           := /opt/gsi/edge/ubuntu/lib
GSI_USR_LIB           := $($(TARGET)_GSI_USR_LIB)
x86_64_GSI_USR_INCLUDE       := /usr/include
   sim_GSI_USR_INCLUDE       := /usr/include
   gnu_GSI_USR_INCLUDE       := /opt/gsi/gnu/ubuntu/include
  edge_GSI_USR_INCLUDE       := /opt/gsi/edge/ubuntu/include
GSI_USR_INCLUDE       := $($(TARGET)_GSI_USR_INCLUDE)


# Toolchains
edge_TOOLCHAIN              := /efs/data/public/petalinux-v2018.2/tools/x86_64-sdk-linux/sysroots
edge_TOOLCHAIN_CROSS_PREFIX := $(edge_TOOLCHAIN)/x86_64-petalinux-linux/usr/bin/aarch64-xilinx-linux/aarch64-xilinx-linux-
edge_CPU_FLAGS              := -march=armv8-a+crc+crypto -mcpu=cortex-a53

gnu_TOOLCHAIN_CROSS_PREFIX  := /opt/gsi/ubuntu/$(UBUNTU_CODENAME)/x86_64/GNU/arc_gnu_2021.09-release_elf32_le_linux_no_sdata/arc-snps-elf/bin/arc-snps-elf-

# gcc is the compiler on the host (ex: not the ARC compiler ccac)
x86_64_GCC_CMD                  :=                               gcc -mavx
   gnu_GCC_CMD                  :=                               gcc -mavx
   sim_GCC_CMD                  :=                               gcc -mavx -fopenmp -g3 -gdwarf -fPIC
  edge_GCC_CMD                  := $(edge_TOOLCHAIN_CROSS_PREFIX)gcc --sysroot=$(edge_TOOLCHAIN)/aarch64-xilinx-linux $(edge_CPU_FLAGS)
GCC_CMD                         := $($(TARGET)_GCC_CMD)

GCC_LINK_GROUP_START        := -Wl,--as-needed -Wl,--no-undefined -Wl,--start-group
GCC_LINK_GROUP_END          := -Wl,--end-group


# Common to all versions of versions of gcc
GCC_DEFS_ALL     := -Wall -Wextra \
                    -D_REENTRANT -D_BUILD_OS_GNU_LINUX -D__STDC_FORMAT_MACROS -D_GNU_SOURCE -D__EXTENSIONS__

# Common to all versions of versions of gcc+sim
sim_GCC_DEFS_all := -DGSI_LIBSYS_X86 -DAPUC_ARCH_x86 \
                    -D_PRODUCT_sw_sim -DBOARD_TYPE_fake -DAPUC_TYPE_sw_sim -D_GSI_NEED_SIM_PARAMS

x86_64_GCC_DEFS := -DGSI_LIBSYS_X86_64
   gnu_GCC_DEFS := -DGSI_LIBSYS_X86_64
   sim_GCC_DEFS := $(x86_64_GCC_DEFS) $(sim_GCC_DEFS_all)
  edge_GCC_DEFS := -DGSI_LIBSYS_AARCH64 -DGSI_PRODUCT_TYPE_APU_EDGE
GCC_DEFS        := $($(TARGET)_GCC_DEFS) $(GCC_DEFS_ALL)

x86_64_OBJCOPY              :=                               objcopy -I binary -O elf64-x86-64        -B i386
   gnu_OBJCOPY              :=                               objcopy -I binary -O elf64-x86-64        -B i386
   sim_OBJCOPY              :=                               objcopy -I binary -O elf64-x86-64        -B i386
  edge_OBJCOPY              := $(edge_TOOLCHAIN_CROSS_PREFIX)objcopy -I binary -O elf64-littleaarch64 -B aarch64
OBJCOPY                     := $($(TARGET)_OBJCOPY)

x86_64_ELF2BIN         := elf2bin
   gnu_ELF2BIN         := $(gnu_TOOLCHAIN_CROSS_PREFIX)objcopy
   sim_ELF2BIN         := objcopy
  edge_ELF2BIN         := elf2bin
ELF2BIN                := $($(TARGET)_ELF2BIN)

x86_64_ELF2BIN_CMD         := $(ELF2BIN) -Pload -q
   gnu_ELF2BIN_CMD         := $(ELF2BIN) -O binary
   sim_ELF2BIN_CMD         := $(ELF2BIN) -O binary
  edge_ELF2BIN_CMD         := $(ELF2BIN) -Pload -q
ELF2BIN_CMD                := $($(TARGET)_ELF2BIN_CMD)

x86_64_APU_CC   := ccac
   gnu_APU_CC   := $(gnu_TOOLCHAIN_CROSS_PREFIX)gcc
   sim_APU_CC   := gcc
  edge_APU_CC   := $(x86_64_APU_CC)
APU_CC          := $($(TARGET)_APU_CC)

x86_64_APU_CC_CMD_ALL := \
                      -DGSI_LIBSYS_ARCHS36 \
                      -D_PRODUCT_arc -DBOARD_TYPE_pci -D_TARGET_CONTEXT_APUC -D_REENTRANT -DGSI_LIBSYS_ARCHS36 -DGSI_APUC -DAPUC_TYPE_hw \
                      -I $(GSI_USR_INCLUDE)/gsi/archs36 \
                      -Wall -Wextra
x86_64_APU_CC_CMD := $(x86_64_APU_CC) \
                      -tcf=$(TOP_DIR)/Common/arc.tcf -tcf_apex -tcf_core_config $(TOP_DIR)/Common/arc_module_example.lcf \
                      -Hnosdata \
                      -Hnocopyr -Hkeepasm -Hpictable -Hpurge \
                      -Xmpy_option=mac \
                      -Wa,-c -fno-short-enums -fbuiltin -std=gnu11 \
                      -I $(METAWARE_ROOT)/arc/inc \
                      $(x86_64_APU_CC_CMD_ALL)
   gnu_APU_CC_CMD := $(gnu_APU_CC) \
                      -munaligned-access \
                      -mno-sdata \
                      -mcpu=archs \
                      -mlittle-endian \
                      -matomic \
                      -mll64 \
                      -mdiv-rem \
                      -mswap \
                      -mnorm \
                      -mmpy-option=7 \
                      -mbarrel-shifter \
                      --param=l1-cache-size=16384 \
                      --param=l1-cache-line-size=32 \
                      -Wl,-marcv2elfx \
                      -L$(TOP_DIR)/Common/ \
                      -Wa,-c -fno-short-enums -fbuiltin -std=gnu11 \
                      -DGSI_WITH_GNU_TOOLCHAIN_FOR_ARC \
                      $(x86_64_APU_CC_CMD_ALL)

   sim_APU_CC_CMD := $(sim_APU_CC) $(GCC_DEFS_ALL) \
                      -g3 \
                      -m32 -nostdlib -ffreestanding \
                      -Wl,-z,noseparate-code \
                      -fPIC -gdwarf -fvisibility=hidden \
                      \
                      -Winvalid-pch -Wformat -Wshadow -Wmissing-declarations -Wredundant-decls -Wuninitialized -Wconversion -Wmissing-prototypes -Wpointer-arith -Wunused-variable \
                      -Wno-sign-conversion -Wno-unused-function -Wno-cast-align -Wno-unused-function \
                      \
                      -I /usr/include/gsi/x86_32_nostdlib \
                      -D_FILE_OFFSET_BITS=64 \
                      \
                      $(sim_GCC_DEFS_all) \
                      \
                      -DGSI_LIBSYS_X86_32_NOSTDLIB -DGSI_APUC -D_TARGET_CONTEXT_APUC

  edge_APU_CC_CMD := $(x86_64_APU_CC_CMD) -DGSI_PRODUCT_TYPE_APU_EDGE

APU_CC_CMD        := $($(TARGET)_APU_CC_CMD) $(APU_CC_HARDWARE_DEFS)


sim_APU_CC_LINK_GROUP_START := $(GCC_LINK_GROUP_START)
sim_APU_CC_LINK_GROUP_END   := /usr/lib/gsi/libgsisys_x86_32_nostdlib.a $(GCC_LINK_GROUP_END)
APU_CC_LINK_GROUP_START :=  $($(TARGET)_APU_CC_LINK_GROUP_START)
APU_CC_LINK_GROUP_END   :=  $($(TARGET)_APU_CC_LINK_GROUP_END)


x86_64_APU_AR  := arac
   gnu_APU_AR  := $(gnu_TOOLCHAIN_CROSS_PREFIX)ar
   sim_APU_AR  := ar
  edge_APU_AR  := $(x86_64_APU_AR)
APU_AR         := $($(TARGET)_APU_AR)


apl_preproc     := $(GSI_USR)/bin/apl_preproc


  debug_MODE_CFLAGS_APU := -O1 -DDEBUG_BUILD
release_MODE_CFLAGS_APU := -O3 -DNDEBUG
MODE_CFLAGS_APU := $($(mode)_MODE_CFLAGS_APU)


x86_64_gvml_lib := $(GSI_USR_LOCAL_LIB)/gsi/libgsigvml.a
   gnu_gvml_lib := $(GSI_USR_LOCAL_LIB)/gsi/libgsigvml.a
   sim_gvml_lib := $(GSI_USR_LOCAL_LIB)/x86_64-linux-gnu/gsi/libgsigvml_sim.a
  edge_gvml_lib := $(GSI_USR_LOCAL_LIB)/gsi/libgsigvml.a
gvml_a               := $($(TARGET)_gvml_lib)

x86_64_gdl_lib_name := libgsidevice.a
   gnu_gdl_lib_name := libgsidevice.a
   sim_gdl_lib_name := libgsidevice_sim.a
  edge_gdl_lib_name := libgsidevice_aarch64.a
gdl_a               := $(GSI_USR_LIB)/gsi/$($(TARGET)_gdl_lib_name)

x86_64_gal_lib_name := libgsiapu_arc.a
   gnu_gal_lib_name := libgsiapu_arc.a
   sim_gal_lib_name := libgsiapu_sim.a
  edge_gal_lib_name := libgsiapu_arc.a
gal_a               := $(GSI_USR_LIB)/gsi/$($(TARGET)_gal_lib_name)

x86_64_sys_apu_lib_name := libgsisys_archs36.a
   gnu_sys_apu_lib_name := libgsisys_archs36.a
   sim_sys_apu_lib_name := libgsisys_x86_32_nostdlib.a
  edge_sys_apu_lib_name := libgsisys_archs36.a
libsys_apu_a            := $(GSI_USR_LIB)/gsi/$($(TARGET)_sys_apu_lib_name)

x86_64_sys_host_lib_name := libgsisys_x86_64.a
   gnu_sys_host_lib_name := libgsisys_x86_64.a
   sim_sys_host_lib_name := libgsisys_x86_64.a
  edge_sys_host_lib_name := libgsisys_aarch64.a
libsys_host_a            := $(GSI_USR_LIB)/gsi/$($(TARGET)_sys_host_lib_name)

# GVML REF lib
gvml_ref_a       := $(GSI_USR_LOCAL_LIB)/$(TARGET_GCC_ARCH)-linux-gnu/gsi/libgsigvml_ref.a
bad_gvml_ref_a   := $(GSI_USR_LOCAL_LIB)/$(TARGET_GCC_ARCH)-linux-gnu/gsi/libapp-gsivml-ref.a
gvml_ref_inc_dir := $(GSI_USR_LOCAL_INCLUDE)/gsi/ref/gsi/



obj_name := $(subst -,_,$(subst .,_,$(subst /,_,$(BUILD_DIR)/$(mode)/$(lab_name).bin)))

dev_inc_dir   := ./dev_src/include
dev_internal_headers := $(wildcard $(dev_inc_dir)/*.h)
dev_src_files := $(wildcard ./dev_src/*.c)
apl_src_files := $(wildcard ./apl/*.apl)
dev_modules   := $(subst ./dev_src/, $(BUILD_DIR)/$(mode)/, $(patsubst %.c, %_module.o, $(dev_src_files)))
apl_modules   := $(subst ./apl/,     $(BUILD_DIR)/$(mode)/, $(patsubst %.apl, %_apl.o,  $(apl_src_files)))

all: info-message  check-setup $(BUILD_DIR)/$(mode) $(BUILD_DIR)/$(mode)/$(lab_name)

$(BUILD_DIR)/$(mode)/$(lab_name): ./$(lab_name)_app.c $(BUILD_DIR)/$(mode)/$(lab_name)_defs.c $(BUILD_DIR)/$(mode)/$(lab_name)_apuc_code.o
	@echo Info: link $@
	$(Q)$(GCC_CMD) $(GCC_DEFS) \
        -I $(GSI_USR_INCLUDE) \
        -I $(GSI_USR_INCLUDE)/gsi/$(TARGET_GCC_ARCH) \
        -I $(BUILD_DIR) \
        -I $(TOP_DIR)/Common \
        -I $(gvml_ref_inc_dir) \
        -g \
        $^ \
        \
        $(GCC_LINK_GROUP_START) $(gvml_ref_a) -ldl -lm $(gdl_a) $(libsys_host_a) -lpthread $(GCC_LINK_GROUP_END) \
        \
        -o $@

$(BUILD_DIR)/$(mode):
	$(Q)mkdir -p $(BUILD_DIR)/$(mode)

$(BUILD_DIR)/$(mode)/$(lab_name)_apuc_code.o: $(BUILD_DIR)/$(mode)/$(lab_name).bin
	@echo Info: $(OBJCOPY) build of $@
	$(Q)$(OBJCOPY) \
	    --redefine-sym _binary_$(obj_name)_start=gsi_module_dump_start \
	    --redefine-sym _binary_$(obj_name)_end=gsi_module_dump_end \
	    --redefine-sym _binary_$(obj_name)_size=gsi_module_dump_size \
	    $^ $@

$(BUILD_DIR)/$(mode)/$(lab_name).bin: $(BUILD_DIR)/$(mode)/$(lab_name).mod
	@echo Info: elf2bin build of $@
	$(Q)$(ELF2BIN_CMD) $^ $@

$(BUILD_DIR)/$(mode)/$(lab_name)_defs.c: $(BUILD_DIR)/$(mode)/$(lab_name).mod
	@echo Info: modtool generate C defs $@
	$(Q)$(GSI_USR)/bin/modtool -c $@ -i $(BUILD_DIR)/$(mode)/$(lab_name)_defs.h -b $^

$(BUILD_DIR)/$(mode)/$(lab_name).mod: $(BUILD_DIR)/$(mode)/$(lab_name).a
	@echo Info: compile $@
	$(Q)$(APU_CC_CMD) \
        -Wl,--whole-archive $^ -Wl,--no-whole-archive \
        \
        $(APU_CC_LINK_GROUP_START) $(gvml_a) $(gal_a) $(libsys_apu_a) $(APU_CC_LINK_GROUP_END) \
        \
        -o $@

$(BUILD_DIR)/$(mode)/$(lab_name).a: $(dev_modules) $(apl_modules)
	@echo Info: create library $@
	$(Q)$(APU_AR) -rs $@ $^

$(dev_modules): $(BUILD_DIR)/$(mode)/%_module.o: ./$(lab_name).h $(dev_internal_headers) ./dev_src/%.c
	@echo Info: compile module $@
	$(Q)$(APU_CC_CMD) \
	    -I. -I $(GSI_USR)/include \
	    -I $(GSI_USR_LOCAL_INCLUDE) \
	    -I $(dev_inc_dir) \
	    -I $(TOP_DIR)/Common \
	    $(MODE_CFLAGS_APU) \
	    -c $(filter %.c, $^) \
	    -o $@

$(BUILD_DIR)/$(mode)/%_apl.c: ./apl/%.apl
	@echo Info: generate APL C $@
	$(Q)$(apl_preproc) -o $@ --frag-section --aux-prefix=$(patsubst %.c,%,$@) --aux-same-dir "--cpp-opts=-DBUILD_$(mode) -D__APL_PREPROC__ -DAPUC_TYPE_hw" $<

$(apl_modules): $(BUILD_DIR)/$(mode)/%_apl.o: $(BUILD_DIR)/$(mode)/%_apl.c
	@echo Info: compile $@ from APL generated C file
	$(Q)$(APU_CC_CMD) \
	    -I $(GSI_USR)/include \
	    -I $(GSI_USR_LOCAL_INCLUDE) \
	    -I . \
	    -I $(TOP_DIR)/Common \
	    $(MODE_CFLAGS_APU) \
	    -c $< \
	    -o $@

clean:
	rm -rf $(BUILD_DIR)/$(mode)

distclean:
	rm -rf $(BUILD_DIR)

help:
	@echo Usage:
	@echo '    make [V=1] [mode=release|debug] [product=gnu|edge|sim] [hardware_type=leda_s] [all|clean|distclean|clang-format-check|help]'
	@echo Examples:
	@echo '    make help               # Print this help'
	@echo '    make distclean          # Clean'
	@echo '    make V=1                # Verbose - print each command before it is executes'
	@echo '    make mode=release       # Release build'
	@echo '    make product=gnu        # Build with the GNU toolchain for ARC'
	@echo '    make product=edge       # Build for APU Edge'
	@echo '    make product=sim        # Build for a simulated APU'
	@echo '    make hardware_type=leda_s # Build for APU hardware leda_s (ex: hardware 320)'
	@echo '    make clang-format-check # Check format'

clang-format-check:
	$(Q)for i in *.c */*.c; do echo info: formating of $$i into $$i.clang-format.txt; clang-format $$i > $$i.clang-format.txt; done

check-setup: check-for-good-gvml-lib
	@if test -z "`which $(APU_CC)`"; then echo Error: mising $(APU_CC) - Synopsys MetaWare toolchain is not set; exit 1; fi
	@if ! test -f $(apl_preproc);    then echo Error: APL pre processor is not found at $(apl_preproc); exit 1; fi
	@if ! test -f $(gvml_a);         then echo Error: GVML library is not found at $(gvml_a);           exit 1; fi
	@if ! test -f $(gdl_a);          then echo Error: GDL library is not found at $(gdl_a);             exit 1; fi
	@if ! test -f $(gal_a);          then echo Error: GAL library is not found at $(gal_a);             exit 1; fi

check-for-good-gvml-lib:
	@if   test -f $(bad_gvml_ref_a); then echo Error: OLD GVML ref library is found at $(bad_gvml_ref_a) - please install a newer version of the GVML package; exit 1; fi
	@if ! test -f $(gvml_ref_a);     then echo Error: GVML ref library is not found at $(gvml_ref_a) - please install the GVML package;                        exit 1; fi

info-message:
	@echo Build with product=\"$(product)\" hardware_type=\"$(hardware_type)\" mode=\"$(mode)\" BUILD_DIR=$(BUILD_DIR)
