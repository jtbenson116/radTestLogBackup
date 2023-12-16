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

	.rodata_addr = 0x300e00,
	.data_relro_addr = 0x0,
	.data_addr = 0x303600,
	.bss_addr = 0x303c10,

	.init_addr = 0x1010,
	.init_array_addr = 0x0,
	.init_array_size = 0x0,

	.valufrag_addr = 0x50bbc0,
	.valufrag_size = 0xc0,
};

extern unsigned char gsi_module_dump_start, gsi_module_dump_end;

static const struct gsi_module module = {
	.md = &md,
	.path = "build/debug/gsi_l1_dynamic_test.mod",
	.dump_start = &gsi_module_dump_start,
	.dump_end = &gsi_module_dump_end,
};
const struct gsi_module *gsi_module = &module;

static const uint32_t read_l1_task = 0x50b598;
const uint32_t *GSI_TASK_read_l1_task = &read_l1_task;

static const uint32_t populate_task = 0x50b240;
const uint32_t *GSI_TASK_populate_task = &populate_task;

static const uint32_t _gsi_apuc_init = 0x5010dc;
const uint32_t *GSI_TASK__gsi_apuc_init = &_gsi_apuc_init;

