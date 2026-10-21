package com.google.android.material.datepicker;

import M.f1;
import M.h1;
import android.view.View;

/* loaded from: classes2.dex */
public final class x implements M.L {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12655a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f12656b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12657c;

    public x(View view, int i2, int i7) {
        this.f12655a = i2;
        this.f12656b = view;
        this.f12657c = i7;
    }

    @Override // M.L
    public h1 onApplyWindowInsets(View view, h1 h1Var) {
        int i2 = h1Var.getInsets(f1.systemBars()).f809b;
        View view2 = this.f12656b;
        int i7 = this.f12655a;
        if (i7 >= 0) {
            view2.getLayoutParams().height = i7 + i2;
            view2.setLayoutParams(view2.getLayoutParams());
        }
        view2.setPadding(view2.getPaddingLeft(), this.f12657c + i2, view2.getPaddingRight(), view2.getPaddingBottom());
        return h1Var;
    }
}
