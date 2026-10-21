package com.google.android.material.datepicker;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f12646a;

    public p(MaterialCalendar materialCalendar) {
        this.f12646a = materialCalendar;
    }

    public void onDayClick(long j7) {
        MaterialCalendar materialCalendar = this.f12646a;
        if (((C0755i) materialCalendar.f12603h0.getDateValidator()).isValid(j7)) {
            materialCalendar.getClass();
            throw null;
        }
    }
}
