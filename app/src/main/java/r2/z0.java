package r2;

import android.net.Uri;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class z0 implements InterfaceC1562V {

    /* renamed from: b, reason: collision with root package name */
    public static final Set f19821b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", FirebaseAnalytics.Param.CONTENT, "android.resource")));

    /* renamed from: a, reason: collision with root package name */
    public final x0 f19822a;

    public z0(x0 x0Var) {
        this.f19822a = x0Var;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(Uri uri, int i2, int i7, l2.q qVar) {
        return new C1561U(new F2.d(uri), this.f19822a.build(uri));
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(Uri uri) {
        return f19821b.contains(uri.getScheme());
    }
}
