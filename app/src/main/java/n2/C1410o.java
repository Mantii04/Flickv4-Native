package n2;

import android.util.Log;
import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import z2.InterfaceC1988e;

/* renamed from: n2.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1410o {

    /* renamed from: a, reason: collision with root package name */
    public final Class f18985a;

    /* renamed from: b, reason: collision with root package name */
    public final List f18986b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1988e f18987c;

    /* renamed from: d, reason: collision with root package name */
    public final L.e f18988d;

    /* renamed from: e, reason: collision with root package name */
    public final String f18989e;

    public C1410o(Class<Object> cls, Class<Object> cls2, Class<Object> cls3, List<? extends l2.r> list, InterfaceC1988e interfaceC1988e, L.e eVar) {
        this.f18985a = cls;
        this.f18986b = list;
        this.f18987c = interfaceC1988e;
        this.f18988d = eVar;
        this.f18989e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final InterfaceC1391M a(com.bumptech.glide.load.data.g gVar, int i2, int i7, l2.q qVar, List list) {
        List list2 = this.f18986b;
        int size = list2.size();
        InterfaceC1391M interfaceC1391M = null;
        for (int i8 = 0; i8 < size; i8++) {
            l2.r rVar = (l2.r) list2.get(i8);
            try {
                if (rVar.handles(gVar.rewindAndGet(), qVar)) {
                    interfaceC1391M = rVar.decode(gVar.rewindAndGet(), i2, i7, qVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e3) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + rVar, e3);
                }
                list.add(e3);
            }
            if (interfaceC1391M != null) {
                break;
            }
        }
        if (interfaceC1391M != null) {
            return interfaceC1391M;
        }
        throw new GlideException(this.f18989e, new ArrayList(list));
    }

    public InterfaceC1391M decode(com.bumptech.glide.load.data.g gVar, int i2, int i7, l2.q qVar, InterfaceC1409n interfaceC1409n) throws GlideException {
        L.e eVar = this.f18988d;
        List list = (List) G2.r.checkNotNull(eVar.acquire());
        try {
            InterfaceC1391M a7 = a(gVar, i2, i7, qVar, list);
            eVar.release(list);
            return this.f18987c.transcode(((C1407l) interfaceC1409n).onResourceDecoded(a7), qVar);
        } catch (Throwable th) {
            eVar.release(list);
            throw th;
        }
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f18985a + ", decoders=" + this.f18986b + ", transcoder=" + this.f18987c + '}';
    }
}
