package androidx.appcompat.widget;

import M.AbstractC0181p0;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import e.C0816D;
import l.K0;

/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: b, reason: collision with root package name */
    public TypedValue f5038b;

    /* renamed from: e, reason: collision with root package name */
    public TypedValue f5039e;

    /* renamed from: f, reason: collision with root package name */
    public TypedValue f5040f;

    /* renamed from: j, reason: collision with root package name */
    public TypedValue f5041j;

    /* renamed from: m, reason: collision with root package name */
    public TypedValue f5042m;

    /* renamed from: n, reason: collision with root package name */
    public TypedValue f5043n;

    /* renamed from: p, reason: collision with root package name */
    public final Rect f5044p;

    /* renamed from: q, reason: collision with root package name */
    public K0 f5045q;

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f5042m == null) {
            this.f5042m = new TypedValue();
        }
        return this.f5042m;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f5043n == null) {
            this.f5043n = new TypedValue();
        }
        return this.f5043n;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f5040f == null) {
            this.f5040f = new TypedValue();
        }
        return this.f5040f;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f5041j == null) {
            this.f5041j = new TypedValue();
        }
        return this.f5041j;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f5038b == null) {
            this.f5038b = new TypedValue();
        }
        return this.f5038b;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f5039e == null) {
            this.f5039e = new TypedValue();
        }
        return this.f5039e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        K0 k02 = this.f5045q;
        if (k02 != null) {
            ((C0816D) k02).onAttachedFromWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        K0 k02 = this.f5045q;
        if (k02 != null) {
            ((C0816D) k02).onDetachedFromWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ac A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b3  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(K0 k02) {
        this.f5045q = k02;
    }

    public void setDecorPadding(int i2, int i7, int i8, int i9) {
        this.f5044p.set(i2, i7, i8, i9);
        if (AbstractC0181p0.isLaidOut(this)) {
            requestLayout();
        }
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5044p = new Rect();
    }
}
