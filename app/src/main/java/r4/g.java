package r4;

import android.graphics.Canvas;
import android.graphics.PointF;
import p4.InterfaceC1501a;

/* loaded from: classes2.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public int f19836a;

    /* renamed from: b, reason: collision with root package name */
    public int f19837b;

    /* renamed from: c, reason: collision with root package name */
    public int f19838c;

    /* renamed from: d, reason: collision with root package name */
    public PointF f19839d;

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC1501a f19840e;

    public abstract void draw(Canvas canvas);

    public int getDesiredHeight() {
        return 150;
    }

    public int getDesiredWidth() {
        return 150;
    }

    public abstract void initializeObjects();

    public void setColor(int i2) {
        this.f19836a = i2;
    }

    public void setInvalidateListener(InterfaceC1501a interfaceC1501a) {
        this.f19840e = interfaceC1501a;
    }

    public void setSize(int i2, int i7) {
        this.f19837b = i2;
        this.f19838c = i7;
        this.f19839d = new PointF(i2 / 2.0f, i7 / 2.0f);
    }

    public abstract void setUpAnimation();
}
