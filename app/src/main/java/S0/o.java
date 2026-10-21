package S0;

import Q3.C0248s;
import com.google.common.collect.ImmutableList;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract /* synthetic */ class o {
    public static i a(s sVar, byte[] bArr, int i2, int i7) {
        C0248s builder = ImmutableList.builder();
        r rVar = r.f3275c;
        Objects.requireNonNull(builder);
        sVar.parse(bArr, i2, i7, rVar, new A0.a(builder, 11));
        return new d(builder.build());
    }

    public static void b(s sVar) {
    }
}
