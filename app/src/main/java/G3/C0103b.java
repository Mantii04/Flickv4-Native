package G3;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: G3.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0103b implements InterfaceC0104c {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0104c f1070a;

    /* renamed from: b, reason: collision with root package name */
    public final float f1071b;

    public C0103b(float f3, InterfaceC0104c interfaceC0104c) {
        while (interfaceC0104c instanceof C0103b) {
            interfaceC0104c = ((C0103b) interfaceC0104c).f1070a;
            f3 += ((C0103b) interfaceC0104c).f1071b;
        }
        this.f1070a = interfaceC0104c;
        this.f1071b = f3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0103b)) {
            return false;
        }
        C0103b c0103b = (C0103b) obj;
        return this.f1070a.equals(c0103b.f1070a) && this.f1071b == c0103b.f1071b;
    }

    @Override // G3.InterfaceC0104c
    public float getCornerSize(RectF rectF) {
        return Math.max(0.0f, this.f1070a.getCornerSize(rectF) + this.f1071b);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1070a, Float.valueOf(this.f1071b)});
    }
}
