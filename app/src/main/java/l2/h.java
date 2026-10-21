package l2;

import java.io.IOException;
import java.io.InputStream;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public final class h implements j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InputStream f18118a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1428b f18119b;

    public h(InputStream inputStream, InterfaceC1428b interfaceC1428b) {
        this.f18118a = inputStream;
        this.f18119b = interfaceC1428b;
    }

    @Override // l2.j
    public int getOrientationAndRewind(InterfaceC1222c interfaceC1222c) throws IOException {
        InputStream inputStream = this.f18118a;
        try {
            return interfaceC1222c.getOrientation(inputStream, this.f18119b);
        } finally {
            inputStream.reset();
        }
    }
}
