package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.cast.framework.R;

/* loaded from: classes.dex */
final class zzi {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f9925a = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public final int f9926b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9927c;

    /* renamed from: d, reason: collision with root package name */
    public final int f9928d;

    /* renamed from: e, reason: collision with root package name */
    public final int f9929e;

    /* renamed from: f, reason: collision with root package name */
    public final zzh f9930f;

    public zzi(zzh zzhVar) {
        this.f9930f = zzhVar;
        Resources resources = zzhVar.getResources();
        this.f9926b = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_inner_radius);
        this.f9927c = resources.getDimensionPixelOffset(R.dimen.cast_libraries_material_featurehighlight_inner_margin);
        this.f9928d = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_text_max_width);
        this.f9929e = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_text_horizontal_offset);
    }

    public final int a(View view, int i2, int i7, int i8, int i9) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i10 = i9 - i2;
        int i11 = i7 - i9;
        int i12 = i9 - (i8 / 2);
        int i13 = this.f9929e;
        int i14 = i10 <= i11 ? i12 + i13 : i12 - i13;
        int i15 = marginLayoutParams.leftMargin;
        if (i14 - i15 < i2) {
            return i2 + i15;
        }
        int i16 = marginLayoutParams.rightMargin;
        return (i14 + i8) + i16 > i7 ? (i7 - i8) - i16 : i14;
    }

    public final void b(View view, int i2, int i7) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeMeasureSpec(Math.min((i2 - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin, this.f9928d), 1073741824), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
    }
}
