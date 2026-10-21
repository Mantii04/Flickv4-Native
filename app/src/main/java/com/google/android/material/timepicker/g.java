package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;

/* loaded from: classes2.dex */
public final class g implements InputFilter {

    /* renamed from: a, reason: collision with root package name */
    public final int f12978a;

    public g(int i2) {
        this.f12978a = i2;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i2, int i7, Spanned spanned, int i8, int i9) {
        try {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i8, i9, charSequence.subSequence(i2, i7).toString());
            if (Integer.parseInt(sb.toString()) <= this.f12978a) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }
}
