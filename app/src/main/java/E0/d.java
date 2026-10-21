package E0;

import P3.v;
import androidx.media3.common.Metadata;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public abstract class d implements a {
    public final Metadata decode(b bVar) {
        ByteBuffer byteBuffer = (ByteBuffer) v.checkNotNull(bVar.data);
        v.checkArgument(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        return decode(bVar, byteBuffer);
    }

    public abstract Metadata decode(b bVar, ByteBuffer byteBuffer);
}
