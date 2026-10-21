package n2;

import com.bumptech.glide.Registry$NoResultEncoderAvailableException;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
import e.s0;
import java.util.ArrayList;
import r2.C1561U;

/* renamed from: n2.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1407l implements InterfaceC1409n {

    /* renamed from: a, reason: collision with root package name */
    public final DataSource f18980a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.bumptech.glide.load.engine.a f18981b;

    public C1407l(com.bumptech.glide.load.engine.a aVar, DataSource dataSource) {
        this.f18981b = aVar;
        this.f18980a = dataSource;
    }

    public InterfaceC1391M onResourceDecoded(InterfaceC1391M interfaceC1391M) {
        InterfaceC1391M interfaceC1391M2;
        l2.t tVar;
        EncodeStrategy encodeStrategy;
        boolean z6;
        Object c1402g;
        com.bumptech.glide.load.engine.a aVar = this.f18981b;
        aVar.getClass();
        Class<?> cls = interfaceC1391M.get().getClass();
        DataSource dataSource = DataSource.f9182j;
        DataSource dataSource2 = this.f18980a;
        C1406k c1406k = aVar.f9256b;
        l2.s sVar = null;
        if (dataSource2 != dataSource) {
            l2.t c7 = c1406k.c(cls);
            tVar = c7;
            interfaceC1391M2 = c7.transform(aVar.f9263q, interfaceC1391M, aVar.f9267u, aVar.f9268v);
        } else {
            interfaceC1391M2 = interfaceC1391M;
            tVar = null;
        }
        if (!interfaceC1391M.equals(interfaceC1391M2)) {
            interfaceC1391M.recycle();
        }
        if (c1406k.f18964c.getRegistry().isResourceEncoderAvailable(interfaceC1391M2)) {
            sVar = c1406k.f18964c.getRegistry().getResultEncoder(interfaceC1391M2);
            encodeStrategy = sVar.getEncodeStrategy(aVar.f9270x);
        } else {
            encodeStrategy = EncodeStrategy.f9191f;
        }
        l2.s sVar2 = sVar;
        l2.m mVar = aVar.f9247G;
        ArrayList b7 = c1406k.b();
        int size = b7.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                z6 = false;
                break;
            }
            if (((C1561U) b7.get(i2)).f19756a.equals(mVar)) {
                z6 = true;
                break;
            }
            i2++;
        }
        if (!aVar.f9269w.isResourceCacheable(!z6, dataSource2, encodeStrategy)) {
            return interfaceC1391M2;
        }
        if (sVar2 == null) {
            throw new Registry$NoResultEncoderAvailableException(interfaceC1391M2.get().getClass());
        }
        int ordinal = encodeStrategy.ordinal();
        if (ordinal == 0) {
            c1402g = new C1402g(aVar.f9247G, aVar.f9264r);
        } else {
            if (ordinal != 1) {
                throw new IllegalArgumentException("Unknown strategy: " + encodeStrategy);
            }
            c1402g = new C1393O(c1406k.f18964c.getArrayPool(), aVar.f9247G, aVar.f9264r, aVar.f9267u, aVar.f9268v, tVar, cls, aVar.f9270x);
        }
        C1390L c1390l = (C1390L) G2.r.checkNotNull((C1390L) C1390L.f18903m.acquire());
        c1390l.f18907j = false;
        c1390l.f18906f = true;
        c1390l.f18905e = interfaceC1391M2;
        s0 s0Var = aVar.f9261n;
        s0Var.f13865a = c1402g;
        s0Var.f13866b = sVar2;
        s0Var.f13867c = c1390l;
        return c1390l;
    }
}
