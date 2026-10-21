package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.R;
import l.e2;

/* loaded from: classes2.dex */
public class TabItem extends View {

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f12812b;

    /* renamed from: e, reason: collision with root package name */
    public final Drawable f12813e;

    /* renamed from: f, reason: collision with root package name */
    public final int f12814f;

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(context, attributeSet, R.styleable.TabItem);
        this.f12812b = obtainStyledAttributes.getText(R.styleable.TabItem_android_text);
        this.f12813e = obtainStyledAttributes.getDrawable(R.styleable.TabItem_android_icon);
        this.f12814f = obtainStyledAttributes.getResourceId(R.styleable.TabItem_android_layout, 0);
        obtainStyledAttributes.recycle();
    }
}
