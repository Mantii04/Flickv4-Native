package z2;

import l2.q;
import n2.InterfaceC1391M;
import v2.C1760c;
import y2.C1882d;

/* renamed from: z2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1987d implements InterfaceC1988e {
    @Override // z2.InterfaceC1988e
    public InterfaceC1391M transcode(InterfaceC1391M interfaceC1391M, q qVar) {
        return new C1760c(G2.c.toBytes(((C1882d) interfaceC1391M.get()).getBuffer()));
    }
}
