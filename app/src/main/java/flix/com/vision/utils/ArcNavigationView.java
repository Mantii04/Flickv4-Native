package flix.com.vision.utils;

import A3.k;
import M.AbstractC0181p0;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.View;
import c0.f;
import com.google.android.material.internal.NavigationMenuView;
import h5.C0987a;
import h5.C0988b;
import java.lang.reflect.Field;
import x3.F;

/* loaded from: classes2.dex */
public class ArcNavigationView extends k {

    /* renamed from: J, reason: collision with root package name */
    public C0988b f16306J;

    /* renamed from: K, reason: collision with root package name */
    public int f16307K;

    /* renamed from: L, reason: collision with root package name */
    public int f16308L;

    /* renamed from: M, reason: collision with root package name */
    public Path f16309M;

    /* renamed from: N, reason: collision with root package name */
    public Path f16310N;

    public ArcNavigationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16307K = 0;
        this.f16308L = 0;
        init(context, attributeSet);
    }

    private void setInsetsColor(int i2) {
        try {
            Field declaredField = F.class.getDeclaredField("b");
            declaredField.setAccessible(true);
            declaredField.set(this, new ColorDrawable(i2));
        } catch (IllegalAccessException | NoSuchFieldException e3) {
            e3.printStackTrace();
        }
    }

    @Override // A3.k, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        canvas.save();
        canvas.clipPath(this.f16309M);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public void init(Context context, AttributeSet attributeSet) {
        C0988b c0988b = new C0988b(context, attributeSet);
        this.f16306J = c0988b;
        c0988b.setElevation(AbstractC0181p0.getElevation(this));
        setBackgroundColor(0);
        setInsetsColor(0);
        Math.round(C0988b.dpToPx(getContext(), 15));
    }

    @Override // android.view.ViewGroup
    @SuppressLint({"RestrictedApi"})
    public void measureChild(View view, int i2, int i7) {
        if (view instanceof NavigationMenuView) {
            view.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
        } else {
            super.measureChild(view, i2, i7);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        if (!z6 || this.f16306J == null) {
            return;
        }
        this.f16307K = getMeasuredHeight();
        int measuredWidth = getMeasuredWidth();
        this.f16308L = measuredWidth;
        if (measuredWidth <= 0 || this.f16307K <= 0) {
            return;
        }
        Path path = new Path();
        this.f16310N = new Path();
        float arcWidth = this.f16306J.getArcWidth();
        f fVar = (f) getLayoutParams();
        if (this.f16306J.isCropInside()) {
            int i10 = fVar.f8529a;
            if (i10 == 8388611 || i10 == 3) {
                this.f16310N.moveTo(this.f16308L, 0.0f);
                Path path2 = this.f16310N;
                float f3 = this.f16308L;
                float f7 = this.f16307K;
                path2.quadTo(f3 - arcWidth, f7 / 2.0f, f3, f7);
                this.f16310N.close();
                path.moveTo(0.0f, 0.0f);
                path.lineTo(this.f16308L, 0.0f);
                float f8 = this.f16308L;
                float f9 = this.f16307K;
                path.quadTo(f8 - arcWidth, f9 / 2.0f, f8, f9);
                path.lineTo(0.0f, this.f16307K);
                path.close();
            } else if (i10 == 8388613 || i10 == 5) {
                this.f16310N.moveTo(0.0f, 0.0f);
                Path path3 = this.f16310N;
                float f10 = this.f16307K;
                path3.quadTo(arcWidth, f10 / 2.0f, 0.0f, f10);
                this.f16310N.close();
                path.moveTo(this.f16308L, 0.0f);
                path.lineTo(0.0f, 0.0f);
                float f11 = this.f16307K;
                path.quadTo(arcWidth, f11 / 2.0f, 0.0f, f11);
                path.lineTo(this.f16308L, this.f16307K);
                path.close();
            }
        } else {
            int i11 = fVar.f8529a;
            if (i11 == 8388611 || i11 == 3) {
                float f12 = arcWidth / 2.0f;
                this.f16310N.moveTo(this.f16308L - f12, 0.0f);
                Path path4 = this.f16310N;
                float f13 = this.f16308L;
                float f14 = this.f16307K;
                path4.quadTo(f13 + f12, f14 / 2.0f, f13 - f12, f14);
                this.f16310N.close();
                path.moveTo(0.0f, 0.0f);
                path.lineTo(this.f16308L - f12, 0.0f);
                float f15 = this.f16308L;
                float f16 = this.f16307K;
                path.quadTo(f15 + f12, f16 / 2.0f, f15 - f12, f16);
                path.lineTo(0.0f, this.f16307K);
                path.close();
            } else if (i11 == 8388613 || i11 == 5) {
                float f17 = arcWidth / 2.0f;
                this.f16310N.moveTo(f17, 0.0f);
                Path path5 = this.f16310N;
                float f18 = (-arcWidth) / 2.0f;
                float f19 = this.f16307K;
                path5.quadTo(f18, f19 / 2.0f, f17, f19);
                this.f16310N.close();
                path.moveTo(this.f16308L, 0.0f);
                path.lineTo(f17, 0.0f);
                float f20 = this.f16307K;
                path.quadTo(f18, f20 / 2.0f, f17, f20);
                path.lineTo(this.f16308L, this.f16307K);
                path.close();
            }
        }
        this.f16309M = path;
        AbstractC0181p0.setElevation(this, this.f16306J.getElevation());
        setOutlineProvider(new C0987a(this));
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt instanceof NavigationMenuView) {
                childAt.setBackground(this.f16306J.getBackgroundDrawable());
                AbstractC0181p0.setElevation(childAt, this.f16306J.getElevation());
            }
        }
    }
}
