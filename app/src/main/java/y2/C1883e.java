package y2;

import android.util.Log;
import com.bumptech.glide.load.EncodeStrategy;
import java.io.File;
import java.io.IOException;
import l2.q;
import l2.s;
import n2.InterfaceC1391M;

/* renamed from: y2.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1883e implements s {
    @Override // l2.s
    public EncodeStrategy getEncodeStrategy(q qVar) {
        return EncodeStrategy.f9189b;
    }

    @Override // l2.InterfaceC1220a
    public boolean encode(InterfaceC1391M interfaceC1391M, File file, q qVar) {
        try {
            G2.c.toFile(((C1882d) interfaceC1391M.get()).getBuffer(), file);
            return true;
        } catch (IOException e3) {
            if (!Log.isLoggable("GifEncoder", 5)) {
                return false;
            }
            Log.w("GifEncoder", "Failed to encode GIF drawable data", e3);
            return false;
        }
    }
}
