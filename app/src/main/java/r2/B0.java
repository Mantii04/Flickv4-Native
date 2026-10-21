package r2;

import android.net.Uri;
import cz.msebera.android.httpclient.HttpHost;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class B0 implements InterfaceC1562V {

    /* renamed from: b, reason: collision with root package name */
    public static final Set f19727b = Collections.unmodifiableSet(new HashSet(Arrays.asList(HttpHost.DEFAULT_SCHEME_NAME, "https")));

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1562V f19728a;

    public B0(InterfaceC1562V interfaceC1562V) {
        this.f19728a = interfaceC1562V;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(Uri uri, int i2, int i7, l2.q qVar) {
        return this.f19728a.buildLoadData(new C1550I(uri.toString()), i2, i7, qVar);
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(Uri uri) {
        return f19727b.contains(uri.getScheme());
    }
}
