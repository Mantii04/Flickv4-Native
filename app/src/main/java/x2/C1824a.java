package x2;

import java.io.File;
import l2.q;
import l2.r;
import n2.InterfaceC1391M;

/* renamed from: x2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1824a implements r {
    @Override // l2.r
    public InterfaceC1391M decode(File file, int i2, int i7, q qVar) {
        return new C1825b(file);
    }

    @Override // l2.r
    public boolean handles(File file, q qVar) {
        return true;
    }
}
