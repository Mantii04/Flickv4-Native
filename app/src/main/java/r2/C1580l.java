package r2;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import l2.InterfaceC1220a;

/* renamed from: r2.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1580l implements InterfaceC1220a {
    @Override // l2.InterfaceC1220a
    public boolean encode(ByteBuffer byteBuffer, File file, l2.q qVar) {
        try {
            G2.c.toFile(byteBuffer, file);
            return true;
        } catch (IOException e3) {
            if (!Log.isLoggable("ByteBufferEncoder", 3)) {
                return false;
            }
            Log.d("ByteBufferEncoder", "Failed to write data", e3);
            return false;
        }
    }
}
