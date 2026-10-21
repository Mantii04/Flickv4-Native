package com.google.android.material.datepicker;

/* renamed from: com.google.android.material.datepicker.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC0759m implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12642b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f12643e;

    public RunnableC0759m(MaterialCalendar materialCalendar, int i2) {
        this.f12643e = materialCalendar;
        this.f12642b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f12643e.f12608m0.smoothScrollToPosition(this.f12642b);
    }
}
