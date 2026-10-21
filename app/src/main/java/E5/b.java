package E5;

import K5.d;

/* loaded from: classes2.dex */
public final class b extends D5.b {
    @Override // C5.b
    public d defaultPlatformRandom() {
        Integer num = a.f977a;
        return (num == null || num.intValue() >= 34) ? new L5.a() : super.defaultPlatformRandom();
    }
}
