package o3;

import android.content.Context;
import android.graphics.PointF;
import android.view.View;
import com.google.android.material.carousel.CarouselLayoutManager;
import m1.I;

/* renamed from: o3.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1451d extends I {

    /* renamed from: q, reason: collision with root package name */
    public final /* synthetic */ CarouselLayoutManager f19091q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1451d(CarouselLayoutManager carouselLayoutManager, Context context) {
        super(context);
        this.f19091q = carouselLayoutManager;
    }

    @Override // m1.I
    public int calculateDxToMakeVisible(View view, int i2) {
        CarouselLayoutManager carouselLayoutManager = this.f19091q;
        if (carouselLayoutManager.f12551u == null || !carouselLayoutManager.isHorizontal()) {
            return 0;
        }
        int position = carouselLayoutManager.getPosition(view);
        return (int) (carouselLayoutManager.f12546p - carouselLayoutManager.v(position, carouselLayoutManager.u(position)));
    }

    @Override // m1.I
    public int calculateDyToMakeVisible(View view, int i2) {
        CarouselLayoutManager carouselLayoutManager = this.f19091q;
        if (carouselLayoutManager.f12551u == null || carouselLayoutManager.isHorizontal()) {
            return 0;
        }
        int position = carouselLayoutManager.getPosition(view);
        return (int) (carouselLayoutManager.f12546p - carouselLayoutManager.v(position, carouselLayoutManager.u(position)));
    }

    @Override // m1.w0
    public PointF computeScrollVectorForPosition(int i2) {
        return this.f19091q.computeScrollVectorForPosition(i2);
    }
}
