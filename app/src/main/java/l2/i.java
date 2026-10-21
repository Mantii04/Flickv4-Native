package l2;

import java.io.FileInputStream;
import java.io.IOException;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public final class i implements j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.bumptech.glide.load.data.t f18120a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1428b f18121b;

    public i(com.bumptech.glide.load.data.t tVar, InterfaceC1428b interfaceC1428b) {
        this.f18120a = tVar;
        this.f18121b = interfaceC1428b;
    }

    @Override // l2.j
    public int getOrientationAndRewind(InterfaceC1222c interfaceC1222c) throws IOException {
        InterfaceC1428b interfaceC1428b = this.f18121b;
        com.bumptech.glide.load.data.t tVar = this.f18120a;
        com.bumptech.glide.load.resource.bitmap.a aVar = null;
        try {
            com.bumptech.glide.load.resource.bitmap.a aVar2 = new com.bumptech.glide.load.resource.bitmap.a(new FileInputStream(tVar.rewindAndGet().getFileDescriptor()), interfaceC1428b);
            try {
                int orientation = interfaceC1222c.getOrientation(aVar2, interfaceC1428b);
                aVar2.release();
                tVar.rewindAndGet();
                return orientation;
            } catch (Throwable th) {
                th = th;
                aVar = aVar2;
                if (aVar != null) {
                    aVar.release();
                }
                tVar.rewindAndGet();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
