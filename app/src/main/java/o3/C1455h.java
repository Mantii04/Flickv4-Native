package o3;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.carousel.CarouselLayoutManager;
import m1.C1288j0;

/* renamed from: o3.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1455h extends AbstractC1456i {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CarouselLayoutManager f19098b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1455h(CarouselLayoutManager carouselLayoutManager) {
        super(0);
        this.f19098b = carouselLayoutManager;
    }

    @Override // o3.AbstractC1456i
    public final int a() {
        CarouselLayoutManager carouselLayoutManager = this.f19098b;
        return carouselLayoutManager.getHeight() - carouselLayoutManager.getPaddingBottom();
    }

    @Override // o3.AbstractC1456i
    public final int b() {
        CarouselLayoutManager carouselLayoutManager = this.f19098b;
        if (carouselLayoutManager.y()) {
            return 0;
        }
        return carouselLayoutManager.getWidth();
    }

    @Override // o3.AbstractC1456i
    public final int c() {
        return 0;
    }

    @Override // o3.AbstractC1456i
    public final int d() {
        return this.f19098b.getWidth();
    }

    @Override // o3.AbstractC1456i
    public final int e() {
        CarouselLayoutManager carouselLayoutManager = this.f19098b;
        if (carouselLayoutManager.y()) {
            return carouselLayoutManager.getWidth();
        }
        return 0;
    }

    @Override // o3.AbstractC1456i
    public final int f() {
        return this.f19098b.getPaddingTop();
    }

    @Override // o3.AbstractC1456i
    public float getMaskMargins(C1288j0 c1288j0) {
        return ((ViewGroup.MarginLayoutParams) c1288j0).rightMargin + ((ViewGroup.MarginLayoutParams) c1288j0).leftMargin;
    }

    @Override // o3.AbstractC1456i
    public void layoutDecoratedWithMargins(View view, int i2, int i7) {
        CarouselLayoutManager carouselLayoutManager = this.f19098b;
        int paddingTop = carouselLayoutManager.getPaddingTop();
        C1288j0 c1288j0 = (C1288j0) view.getLayoutParams();
        this.f19098b.layoutDecoratedWithMargins(view, i2, paddingTop, i7, carouselLayoutManager.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) c1288j0).topMargin + ((ViewGroup.MarginLayoutParams) c1288j0).bottomMargin + paddingTop);
    }

    @Override // o3.AbstractC1456i
    public void offsetChild(View view, Rect rect, float f3, float f7) {
        view.offsetLeftAndRight((int) (f7 - (rect.left + f3)));
    }
}
