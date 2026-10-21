package com.google.android.material.datepicker;

import android.content.Context;
import m1.x0;

/* renamed from: com.google.android.material.datepicker.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0761o extends K {

    /* renamed from: E, reason: collision with root package name */
    public final /* synthetic */ int f12644E;

    /* renamed from: F, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f12645F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0761o(MaterialCalendar materialCalendar, Context context, int i2, int i7) {
        super(context, i2, false);
        this.f12645F = materialCalendar;
        this.f12644E = i7;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void calculateExtraLayoutSpace(x0 x0Var, int[] iArr) {
        int i2 = this.f12644E;
        MaterialCalendar materialCalendar = this.f12645F;
        if (i2 == 0) {
            iArr[0] = materialCalendar.f12608m0.getWidth();
            iArr[1] = materialCalendar.f12608m0.getWidth();
        } else {
            iArr[0] = materialCalendar.f12608m0.getHeight();
            iArr[1] = materialCalendar.f12608m0.getHeight();
        }
    }
}
