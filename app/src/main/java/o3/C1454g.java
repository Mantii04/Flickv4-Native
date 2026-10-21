package o3;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.carousel.CarouselLayoutManager;
import m1.C1288j0;

/* renamed from: o3.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1454g extends AbstractC1456i {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CarouselLayoutManager f19097b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1454g(CarouselLayoutManager carouselLayoutManager) {
        super(1);
        this.f19097b = carouselLayoutManager;
    }

    @Override // o3.AbstractC1456i
    public final int a() {
        return this.f19097b.getHeight();
    }

    @Override // o3.AbstractC1456i
    public final int b() {
        return this.f19097b.getHeight();
    }

    @Override // o3.AbstractC1456i
    public final int c() {
        return this.f19097b.getPaddingLeft();
    }

    @Override // o3.AbstractC1456i
    public final int d() {
        CarouselLayoutManager carouselLayoutManager = this.f19097b;
        return carouselLayoutManager.getWidth() - carouselLayoutManager.getPaddingRight();
    }

    @Override // o3.AbstractC1456i
    public final int e() {
        return 0;
    }

    @Override // o3.AbstractC1456i
    public final int f() {
        return 0;
    }

    @Override // o3.AbstractC1456i
    public float getMaskMargins(C1288j0 c1288j0) {
        return ((ViewGroup.MarginLayoutParams) c1288j0).topMargin + ((ViewGroup.MarginLayoutParams) c1288j0).bottomMargin;
    }

    @Override // o3.AbstractC1456i
    public void layoutDecoratedWithMargins(View view, int i2, int i7) {
        CarouselLayoutManager carouselLayoutManager = this.f19097b;
        int paddingLeft = carouselLayoutManager.getPaddingLeft();
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        this.f19097b.layoutDecoratedWithMargins(view, paddingLeft, i2, carouselLayoutManager.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) c1288j0).leftMargin + ((ViewGroup.MarginLayoutParams) c1288j0).rightMargin + paddingLeft, i7);
    }

    @Override // o3.AbstractC1456i
    public void offsetChild(View view, Rect rect, float f3, float f7) {
        view.offsetTopAndBottom((int) (f7 - (rect.top + f3)));
    }
}
