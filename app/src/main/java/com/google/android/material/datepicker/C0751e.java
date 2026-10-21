package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import com.google.android.material.R;

/* renamed from: com.google.android.material.datepicker.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0751e {
    public static C0751e a(Context context, int i2) {
        L.h.checkArgument(i2 != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i2, R.styleable.MaterialCalendarItem);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetLeft, 0), obtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetTop, 0), obtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetRight, 0), obtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetBottom, 0));
        C3.d.getColorStateList(context, obtainStyledAttributes, R.styleable.MaterialCalendarItem_itemFillColor);
        C3.d.getColorStateList(context, obtainStyledAttributes, R.styleable.MaterialCalendarItem_itemTextColor);
        C3.d.getColorStateList(context, obtainStyledAttributes, R.styleable.MaterialCalendarItem_itemStrokeColor);
        obtainStyledAttributes.getDimensionPixelSize(R.styleable.MaterialCalendarItem_itemStrokeWidth, 0);
        G3.p.builder(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearance, 0), obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).build();
        obtainStyledAttributes.recycle();
        C0751e c0751e = new C0751e();
        L.h.checkArgumentNonnegative(rect.left);
        L.h.checkArgumentNonnegative(rect.top);
        L.h.checkArgumentNonnegative(rect.right);
        L.h.checkArgumentNonnegative(rect.bottom);
        return c0751e;
    }
}
