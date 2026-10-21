package com.google.android.gms.common.internal;

import E.c;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import com.google.android.gms.common.util.DeviceProperties;

/* loaded from: classes.dex */
public final class zaaa extends Button {
    public zaaa(Context context, AttributeSet attributeSet) {
        super(context, null, R.attr.buttonStyle);
    }

    public static final int a(int i2, int i7, int i8, int i9) {
        if (i2 == 0) {
            return i7;
        }
        if (i2 == 1) {
            return i8;
        }
        if (i2 == 2) {
            return i9;
        }
        StringBuilder sb = new StringBuilder(33);
        sb.append("Unknown color scheme: ");
        sb.append(i2);
        throw new IllegalStateException(sb.toString());
    }

    public final void zaa(Resources resources, int i2, int i7) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i8 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i8);
        setMinWidth(i8);
        int i9 = com.google.android.gms.base.R.drawable.common_google_signin_btn_icon_dark;
        int i10 = com.google.android.gms.base.R.drawable.common_google_signin_btn_icon_light;
        int a7 = a(i7, i9, i10, i10);
        int i11 = com.google.android.gms.base.R.drawable.common_google_signin_btn_text_dark;
        int i12 = com.google.android.gms.base.R.drawable.common_google_signin_btn_text_light;
        int a8 = a(i7, i11, i12, i12);
        if (i2 == 0 || i2 == 1) {
            a7 = a8;
        } else if (i2 != 2) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Unknown button size: ");
            sb.append(i2);
            throw new IllegalStateException(sb.toString());
        }
        Drawable wrap = c.wrap(resources.getDrawable(a7));
        c.setTintList(wrap, resources.getColorStateList(com.google.android.gms.base.R.color.common_google_signin_btn_tint));
        c.setTintMode(wrap, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(wrap);
        int i13 = com.google.android.gms.base.R.color.common_google_signin_btn_text_dark;
        int i14 = com.google.android.gms.base.R.color.common_google_signin_btn_text_light;
        setTextColor((ColorStateList) Preconditions.checkNotNull(resources.getColorStateList(a(i7, i13, i14, i14))));
        if (i2 == 0) {
            setText(resources.getString(com.google.android.gms.base.R.string.common_signin_button_text));
        } else if (i2 == 1) {
            setText(resources.getString(com.google.android.gms.base.R.string.common_signin_button_text_long));
        } else {
            if (i2 != 2) {
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Unknown button size: ");
                sb2.append(i2);
                throw new IllegalStateException(sb2.toString());
            }
            setText((CharSequence) null);
        }
        setTransformationMethod(null);
        if (DeviceProperties.isWearable(getContext())) {
            setGravity(19);
        }
    }
}
