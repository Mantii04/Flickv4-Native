package m1;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* renamed from: m1.j0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1288j0 extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public B0 f18409a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f18410b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18411c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18412d;

    public C1288j0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18410b = new Rect();
        this.f18411c = true;
        this.f18412d = false;
    }

    public int getAbsoluteAdapterPosition() {
        return this.f18409a.getAbsoluteAdapterPosition();
    }

    public int getViewLayoutPosition() {
        return this.f18409a.getLayoutPosition();
    }

    public boolean isItemChanged() {
        return this.f18409a.i();
    }

    public boolean isItemRemoved() {
        return this.f18409a.f();
    }

    public boolean isViewInvalid() {
        return this.f18409a.e();
    }

    public boolean viewNeedsUpdate() {
        return (this.f18409a.f18226j & 2) != 0;
    }

    public C1288j0(int i2, int i7) {
        super(i2, i7);
        this.f18410b = new Rect();
        this.f18411c = true;
        this.f18412d = false;
    }

    public C1288j0(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f18410b = new Rect();
        this.f18411c = true;
        this.f18412d = false;
    }

    public C1288j0(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f18410b = new Rect();
        this.f18411c = true;
        this.f18412d = false;
    }

    public C1288j0(C1288j0 c1288j0) {
        super((ViewGroup.LayoutParams) c1288j0);
        this.f18410b = new Rect();
        this.f18411c = true;
        this.f18412d = false;
    }
}
