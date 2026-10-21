package b2;

import T1.G;
import T1.K;
import W1.u;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import g2.C0949c;

/* renamed from: b2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0644d extends AbstractC0642b {

    /* renamed from: A, reason: collision with root package name */
    public u f8421A;

    /* renamed from: x, reason: collision with root package name */
    public final U1.a f8422x;

    /* renamed from: y, reason: collision with root package name */
    public final Rect f8423y;

    /* renamed from: z, reason: collision with root package name */
    public final Rect f8424z;

    public C0644d(G g7, C0645e c0645e) {
        super(g7, c0645e);
        this.f8422x = new U1.a(3);
        this.f8423y = new Rect();
        this.f8424z = new Rect();
    }

    @Override // b2.AbstractC0642b, Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        super.addValueCallback(t6, c0949c);
        if (t6 == K.f3581y) {
            if (c0949c == null) {
                this.f8421A = null;
            } else {
                this.f8421A = new u(c0949c);
            }
        }
    }

    @Override // b2.AbstractC0642b
    public void drawLayer(Canvas canvas, Matrix matrix, int i2) {
        Bitmap imageAsset = this.f8406n.getImageAsset(this.f8407o.f8431g);
        if (imageAsset == null || imageAsset.isRecycled()) {
            return;
        }
        float dpScale = f2.h.dpScale();
        U1.a aVar = this.f8422x;
        aVar.setAlpha(i2);
        u uVar = this.f8421A;
        if (uVar != null) {
            aVar.setColorFilter((ColorFilter) uVar.getValue());
        }
        canvas.save();
        canvas.concat(matrix);
        int width = imageAsset.getWidth();
        int height = imageAsset.getHeight();
        Rect rect = this.f8423y;
        rect.set(0, 0, width, height);
        int width2 = (int) (imageAsset.getWidth() * dpScale);
        int height2 = (int) (imageAsset.getHeight() * dpScale);
        Rect rect2 = this.f8424z;
        rect2.set(0, 0, width2, height2);
        canvas.drawBitmap(imageAsset, rect, rect2, aVar);
        canvas.restore();
    }

    @Override // b2.AbstractC0642b, V1.f
    public void getBounds(RectF rectF, Matrix matrix, boolean z6) {
        super.getBounds(rectF, matrix, z6);
        if (this.f8406n.getImageAsset(this.f8407o.f8431g) != null) {
            rectF.set(0.0f, 0.0f, f2.h.dpScale() * r3.getWidth(), f2.h.dpScale() * r3.getHeight());
            this.f8405m.mapRect(rectF);
        }
    }
}
