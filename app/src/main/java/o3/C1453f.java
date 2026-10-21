package o3;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.carousel.CarouselLayoutManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import m1.AbstractC1276d0;
import m1.x0;

/* renamed from: o3.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1453f extends AbstractC1276d0 {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f19095a;

    /* renamed from: b, reason: collision with root package name */
    public List f19096b;

    public C1453f() {
        Paint paint = new Paint();
        this.f19095a = paint;
        this.f19096b = Collections.unmodifiableList(new ArrayList());
        paint.setStrokeWidth(5.0f);
        paint.setColor(-65281);
    }

    @Override // m1.AbstractC1276d0
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, x0 x0Var) {
        Canvas canvas2;
        super.onDrawOver(canvas, recyclerView, x0Var);
        Paint paint = this.f19095a;
        paint.setStrokeWidth(recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width));
        for (C1460m c1460m : this.f19096b) {
            paint.setColor(D.a.blendARGB(-65281, -16776961, c1460m.f19113c));
            if (((CarouselLayoutManager) recyclerView.getLayoutManager()).isHorizontal()) {
                float f3 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f12555y.f();
                float a7 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f12555y.a();
                float f7 = c1460m.f19112b;
                canvas2 = canvas;
                canvas2.drawLine(f7, f3, f7, a7, paint);
            } else {
                float c7 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f12555y.c();
                float d7 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f12555y.d();
                float f8 = c1460m.f19112b;
                canvas2 = canvas;
                canvas2.drawLine(c7, f8, d7, f8, paint);
            }
            canvas = canvas2;
        }
    }
}
