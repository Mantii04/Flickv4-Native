package l2;

import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.FileInputStream;
import java.io.IOException;
import o2.InterfaceC1428b;

/* renamed from: l2.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1225f implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.bumptech.glide.load.data.t f18114a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1428b f18115b;

    public C1225f(com.bumptech.glide.load.data.t tVar, InterfaceC1428b interfaceC1428b) {
        this.f18114a = tVar;
        this.f18115b = interfaceC1428b;
    }

    @Override // l2.k
    public ImageHeaderParser$ImageType getTypeAndRewind(InterfaceC1222c interfaceC1222c) throws IOException {
        com.bumptech.glide.load.data.t tVar = this.f18114a;
        com.bumptech.glide.load.resource.bitmap.a aVar = null;
        try {
            com.bumptech.glide.load.resource.bitmap.a aVar2 = new com.bumptech.glide.load.resource.bitmap.a(new FileInputStream(tVar.rewindAndGet().getFileDescriptor()), this.f18115b);
            try {
                ImageHeaderParser$ImageType type = interfaceC1222c.getType(aVar2);
                aVar2.release();
                tVar.rewindAndGet();
                return type;
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
