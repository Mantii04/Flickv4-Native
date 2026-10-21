package com.afollestad.materialdialogs.internal;

import S1.a;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;
import com.afollestad.materialdialogs.GravityEnum;
import com.afollestad.materialdialogs.R;

/* loaded from: classes.dex */
public class MDButton extends TextView {

    /* renamed from: b, reason: collision with root package name */
    public boolean f8982b;

    /* renamed from: e, reason: collision with root package name */
    public GravityEnum f8983e;

    /* renamed from: f, reason: collision with root package name */
    public final int f8984f;

    /* renamed from: j, reason: collision with root package name */
    public Drawable f8985j;

    /* renamed from: m, reason: collision with root package name */
    public Drawable f8986m;

    public MDButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8982b = false;
        this.f8984f = context.getResources().getDimensionPixelSize(R.dimen.md_dialog_frame_margin);
        this.f8983e = GravityEnum.f8980e;
    }

    public final void a(boolean z6, boolean z7) {
        if (this.f8982b != z6 || z7) {
            setGravity(z6 ? this.f8983e.getGravityInt() | 16 : 17);
            setTextAlignment(z6 ? this.f8983e.getTextAlignment() : 4);
            a.setBackgroundCompat(this, z6 ? this.f8985j : this.f8986m);
            if (z6) {
                setPadding(this.f8984f, getPaddingTop(), this.f8984f, getPaddingBottom());
            }
            this.f8982b = z6;
        }
    }

    public void setAllCapsCompat(boolean z6) {
        setAllCaps(z6);
    }

    public void setDefaultSelector(Drawable drawable) {
        this.f8986m = drawable;
        if (this.f8982b) {
            return;
        }
        a(false, true);
    }

    public void setStackedGravity(GravityEnum gravityEnum) {
        this.f8983e = gravityEnum;
    }

    public void setStackedSelector(Drawable drawable) {
        this.f8985j = drawable;
        if (this.f8982b) {
            a(true, true);
        }
    }
}
