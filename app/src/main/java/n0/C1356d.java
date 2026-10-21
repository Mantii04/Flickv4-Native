package n0;

import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.g0;
import androidx.lifecycle.i0;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p.r;

/* renamed from: n0.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1356d extends AbstractC1353a {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0561t f18770a;

    /* renamed from: b, reason: collision with root package name */
    public final C1355c f18771b;

    public C1356d(InterfaceC0561t interfaceC0561t, i0 i0Var) {
        this.f18770a = interfaceC0561t;
        this.f18771b = (C1355c) new g0(i0Var, C1355c.f18768e).get(C1355c.class);
    }

    @Override // n0.AbstractC1353a
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f18771b.dump(str, fileDescriptor, printWriter, strArr);
    }

    @Override // n0.AbstractC1353a
    public void markForRedelivery() {
        r rVar = this.f18771b.f18769d;
        if (rVar.size() <= 0) {
            return;
        }
        rVar.valueAt(0).getClass();
        throw new ClassCastException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        L.b.buildShortClassTag(this.f18770a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
