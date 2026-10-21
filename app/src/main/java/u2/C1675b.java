package u2;

import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.EncodeStrategy;
import java.io.File;
import n2.InterfaceC1391M;
import o2.InterfaceC1430d;

/* renamed from: u2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1675b implements l2.s {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1430d f20281a;

    /* renamed from: b, reason: collision with root package name */
    public final l2.s f20282b;

    public C1675b(InterfaceC1430d interfaceC1430d, l2.s sVar) {
        this.f20281a = interfaceC1430d;
        this.f20282b = sVar;
    }

    @Override // l2.s
    public EncodeStrategy getEncodeStrategy(l2.q qVar) {
        return this.f20282b.getEncodeStrategy(qVar);
    }

    @Override // l2.InterfaceC1220a
    public boolean encode(InterfaceC1391M interfaceC1391M, File file, l2.q qVar) {
        return this.f20282b.encode(new C1678e(((BitmapDrawable) interfaceC1391M.get()).getBitmap(), this.f20281a), file, qVar);
    }
}
