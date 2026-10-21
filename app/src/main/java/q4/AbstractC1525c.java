package q4;

import android.graphics.Paint;

/* renamed from: q4.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1525c {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f19651a;

    public AbstractC1525c() {
        Paint paint = new Paint();
        this.f19651a = paint;
        paint.setAntiAlias(true);
    }

    public void setAlpha(int i2) {
        this.f19651a.setAlpha(i2);
    }

    public void setColor(int i2) {
        this.f19651a.setColor(i2);
    }

    public void setStyle(Paint.Style style) {
        this.f19651a.setStyle(style);
    }

    public void setWidth(float f3) {
        this.f19651a.setStrokeWidth(f3);
    }
}
