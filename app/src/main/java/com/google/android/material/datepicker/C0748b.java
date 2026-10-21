package com.google.android.material.datepicker;

import android.os.Bundle;
import java.util.Calendar;

/* renamed from: com.google.android.material.datepicker.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0748b {

    /* renamed from: f, reason: collision with root package name */
    public static final long f12619f;

    /* renamed from: g, reason: collision with root package name */
    public static final long f12620g;

    /* renamed from: a, reason: collision with root package name */
    public long f12621a;

    /* renamed from: b, reason: collision with root package name */
    public long f12622b;

    /* renamed from: c, reason: collision with root package name */
    public Long f12623c;

    /* renamed from: d, reason: collision with root package name */
    public int f12624d;

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC0749c f12625e;

    static {
        C b7 = C.b(1900, 0);
        Calendar c7 = M.c(null);
        c7.setTimeInMillis(b7.f12586n);
        f12619f = M.a(c7).getTimeInMillis();
        C b8 = C.b(2100, 11);
        Calendar c8 = M.c(null);
        c8.setTimeInMillis(b8.f12586n);
        f12620g = M.a(c8).getTimeInMillis();
    }

    public C0750d build() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("DEEP_COPY_VALIDATOR_KEY", this.f12625e);
        C d7 = C.d(this.f12621a);
        C d8 = C.d(this.f12622b);
        InterfaceC0749c interfaceC0749c = (InterfaceC0749c) bundle.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l7 = this.f12623c;
        return new C0750d(d7, d8, interfaceC0749c, l7 == null ? null : C.d(l7.longValue()), this.f12624d);
    }

    public C0748b setOpenAt(long j7) {
        this.f12623c = Long.valueOf(j7);
        return this;
    }
}
