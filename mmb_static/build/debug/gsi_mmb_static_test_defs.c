#include <gsi/module_metadata.h>

static const struct gsi_module_loader_metadata md = {
	.api_version = { .major = 0U, .minor = 0U },

	.phdr_size = 0x1000,
	.load_fixup = 0x500000,

	.data_seg_addr = 0x300000,

	.mem_size = 0x30de58,
	.real_data_seg_addr = 0x300000,
	.text_addr = 0x1020,

	.rel = 0xffb00000,
	.relent = 0x0,
	.relsz = 0x0,

	.rodata_addr = 0x300a00,
	.data_relro_addr = 0x0,
	.data_addr = 0x303600,
	.bss_addr = 0x303c10,

	.init_addr = 0x1010,
	.init_array_addr = 0x0,
	.init_array_size = 0x0,

	.valufrag_addr = 0x509df0,
	.valufrag_size = 0x180,
};

extern unsigned char gsi_module_dump_start, gsi_module_dump_end;

static const struct gsi_module module = {
	.md = &md,
	.path = "build/debug/gsi_mmb_static_test.mod",
	.dump_start = &gsi_module_dump_start,
	.dump_end = &gsi_module_dump_end,
};
const struct gsi_module *gsi_module = &module;

static const uint32_t populate_task = 0x5091b8;
const uint32_t *GSI_TASK_populate_task = &populate_task;

static const uint32_t read_mmb_task = 0x509620;
const uint32_t *GSI_TASK_read_mmb_task = &read_mmb_task;

static const uint32_t _gsi_apuc_init = 0x5010d0;
const uint32_t *GSI_TASK__gsi_apuc_init = &_gsi_apuc_init;

