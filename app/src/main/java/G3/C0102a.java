package G3;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: G3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0102a implements InterfaceC0104c {

    /* renamed from: a, reason: collision with root package name */
    public final float f1069a;

    public C0102a(float f3) {
        this.f1069a = f3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0102a) && this.f1069a == ((C0102a) obj).f1069a;
    }

    @Override // G3.InterfaceC0104c
    public float getCornerSize(RectF rectF) {
        return this.f1069a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f1069a)});
    }
}
