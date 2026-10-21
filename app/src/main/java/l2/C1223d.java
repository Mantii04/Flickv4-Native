package l2;

import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: l2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1223d implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InputStream f18112a;

    public C1223d(InputStream inputStream) {
        this.f18112a = inputStream;
    }

    @Override // l2.k
    public ImageHeaderParser$ImageType getTypeAndRewind(InterfaceC1222c interfaceC1222c) throws IOException {
        InputStream inputStream = this.f18112a;
        try {
            return interfaceC1222c.getType(inputStream);
        } finally {
            inputStream.reset();
        }
    }
}
