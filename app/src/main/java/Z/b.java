package Z;

import H5.l;
import androidx.datastore.core.CorruptionException;
import java.io.IOException;
import kotlin.jvm.internal.j;
import y5.InterfaceC1944c;

/* loaded from: classes.dex */
public final class b implements Y.a {

    /* renamed from: a, reason: collision with root package name */
    public final l f4441a;

    public b(l produceNewData) {
        j.checkNotNullParameter(produceNewData, "produceNewData");
        this.f4441a = produceNewData;
    }

    @Override // Y.a
    public Object handleCorruption(CorruptionException corruptionException, InterfaceC1944c interfaceC1944c) throws IOException {
        return this.f4441a.invoke(corruptionException);
    }
}
