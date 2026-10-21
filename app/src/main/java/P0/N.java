package P0;

import androidx.media3.common.util.Util;
import com.google.common.primitives.ImmutableIntArray;
import java.util.ArrayList;
import v0.k0;

/* loaded from: classes.dex */
public final class N implements k0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f2554a;

    /* renamed from: b, reason: collision with root package name */
    public final ImmutableIntArray f2555b;

    public N(int i2, int[] iArr) {
        this.f2554a = i2;
        this.f2555b = iArr != null ? ImmutableIntArray.copyOf(iArr) : ImmutableIntArray.of();
    }

    public String toString() {
        ImmutableIntArray immutableIntArray = this.f2555b;
        ArrayList arrayList = new ArrayList(immutableIntArray.length());
        for (int i2 = 0; i2 < immutableIntArray.length(); i2++) {
            arrayList.add(Util.toFourccString(immutableIntArray.get(i2)));
        }
        return "UnsupportedBrands{major=" + Util.toFourccString(this.f2554a) + ", compatible=" + arrayList + "}";
    }
}
