package com.google.android.gms.cast;

import com.google.android.gms.common.Feature;

/* loaded from: classes.dex */
public final class zzax {

    /* renamed from: a, reason: collision with root package name */
    public static final Feature f10465a;

    /* renamed from: b, reason: collision with root package name */
    public static final Feature f10466b;

    /* renamed from: c, reason: collision with root package name */
    public static final Feature f10467c;

    /* renamed from: d, reason: collision with root package name */
    public static final Feature f10468d;

    /* renamed from: e, reason: collision with root package name */
    public static final Feature[] f10469e;

    static {
        Feature feature = new Feature("client_side_logging", 1L);
        Feature feature2 = new Feature("cxless_client_minimal", 1L);
        f10465a = feature2;
        Feature feature3 = new Feature("cxless_caf_control", 1L);
        Feature feature4 = new Feature("module_flag_control", 1L);
        f10466b = feature4;
        Feature feature5 = new Feature("discovery_hint_supply", 1L);
        Feature feature6 = new Feature("relay_casting_set_active_account", 1L);
        Feature feature7 = new Feature("analytics_proto_enum_translation", 1L);
        f10467c = feature7;
        Feature feature8 = new Feature("integer_to_integer_map", 1L);
        f10468d = feature8;
        f10469e = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, feature8, new Feature("relay_casting_set_remote_casting_mode", 1L), new Feature("get_relay_access_token", 1L), new Feature("get_cast_settings", 1L), new Feature("set_bundle_setting", 1L), new Feature("get_client_updated_info", 1L)};
    }
}
