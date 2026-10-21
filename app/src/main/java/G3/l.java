package G3;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class l implements InterfaceC0104c {

    /* renamed from: a, reason: collision with root package name */
    public final float f1115a;

    public l(float f3) {
        this.f1115a = f3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l) && this.f1115a == ((l) obj).f1115a;
    }

    @Override // G3.InterfaceC0104c
    public float getCornerSize(RectF rectF) {
        return Math.min(rectF.width(), rectF.height()) * this.f1115a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f1115a)});
    }
}
