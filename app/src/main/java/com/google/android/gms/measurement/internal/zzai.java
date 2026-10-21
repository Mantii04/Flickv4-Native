package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
enum zzai {
    UNSET('0'),
    REMOTE_DEFAULT('1'),
    REMOTE_DELEGATION('2'),
    MANIFEST('3'),
    INITIALIZATION('4'),
    API('5'),
    CHILD_ACCOUNT('6'),
    TCF('7'),
    REMOTE_ENFORCED_DEFAULT('8'),
    FAILSAFE('9');


    /* renamed from: b, reason: collision with root package name */
    public final char f11191b;

    zzai(char c7) {
        this.f11191b = c7;
    }

    public static zzai zza(char c7) {
        for (zzai zzaiVar : values()) {
            if (zzaiVar.f11191b == c7) {
                return zzaiVar;
            }
        }
        return UNSET;
    }
}
