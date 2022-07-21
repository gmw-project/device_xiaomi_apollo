/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_kona.h>

static const variant_info_t apollocn_info = {
    .hwc_value = "CN",
    .sku_value = "",

    .brand = "Redmi",
    .device = "apollo",
    .marketname = "Redmi K30S Ultra",
    .model = "M2007J3SC",
    .build_fingerprint = "Redmi/apollo_global/apollo:12/RKQ1.211001.001/V13.0.3.0.SJDMIXM:user/release-keys",

    .nfc = true,
};

static const variant_info_t apollo_info = {
    .hwc_value = "",
    .sku_value = "std",

    .brand = "Xiaomi",
    .device = "apollo",
    .marketname = "Mi 10T",
    .model = "M2007J3SY",
    .build_fingerprint = "Xiaomi/apollo_global/apollo:12/RKQ1.211001.001/V13.0.3.0.SJDMIXM:user/release-keys",

    .nfc = true,
};

static const variant_info_t apollopro_info = {
    .hwc_value = "",
    .sku_value = "pro",

    .brand = "Xiaomi",
    .device = "apollo",
    .marketname = "Mi 10T Pro",
    .model = "M2007J3SG",
    .build_fingerprint = "Xiaomi/apollo_global/apollo:12/RKQ1.211001.001/V13.0.3.0.SJDMIXM:user/release-keys",

    .nfc = true,
};

static const std::vector<variant_info_t> variants = {
    apollocn_info,
    apollo_info,
    apollopro_info,
};

void vendor_load_properties() {
    search_variant(variants);
}
