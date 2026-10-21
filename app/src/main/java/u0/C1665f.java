package u0;

import androidx.media3.common.Format;
import androidx.media3.common.MediaLibraryInfo;
import java.nio.ByteBuffer;

/* renamed from: u0.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1665f extends AbstractC1660a {
    public static final int BUFFER_REPLACEMENT_MODE_DIRECT = 2;
    public static final int BUFFER_REPLACEMENT_MODE_DISABLED = 0;
    public static final int BUFFER_REPLACEMENT_MODE_NORMAL = 1;
    private final int bufferReplacementMode;
    public final C1663d cryptoInfo;
    public ByteBuffer data;
    public Format format;
    private final int paddingSize;
    public ByteBuffer supplementalData;
    public long timeUs;
    public boolean waitingForKeys;

    static {
        MediaLibraryInfo.registerModule("media3.decoder");
    }

    public C1665f(int i2) {
        this(i2, 0);
    }

    public static C1665f newNoDataInstance() {
        return new C1665f(0);
    }

    public final ByteBuffer b(final int i2) {
        int i7 = this.bufferReplacementMode;
        if (i7 == 1) {
            return ByteBuffer.allocate(i2);
        }
        if (i7 == 2) {
            return ByteBuffer.allocateDirect(i2);
        }
        ByteBuffer byteBuffer = this.data;
        final int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        throw new IllegalStateException(capacity, i2) { // from class: androidx.media3.decoder.DecoderInputBuffer$InsufficientCapacityException
            {
                super("Buffer too small (" + capacity + " < " + i2 + ")");
            }
        };
    }

    @Override // u0.AbstractC1660a
    public void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.supplementalData;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.waitingForKeys = false;
    }

    public void ensureSpaceForWrite(int i2) {
        int i7 = i2 + this.paddingSize;
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer == null) {
            this.data = b(i7);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i8 = i7 + position;
        if (capacity >= i8) {
            this.data = byteBuffer;
            return;
        }
        ByteBuffer b7 = b(i8);
        b7.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            b7.put(byteBuffer);
        }
        this.data = b7;
    }

    public final void flip() {
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.supplementalData;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean isEncrypted() {
        return getFlag(1073741824);
    }

    public void resetSupplementalData(int i2) {
        ByteBuffer byteBuffer = this.supplementalData;
        if (byteBuffer == null || byteBuffer.capacity() < i2) {
            this.supplementalData = ByteBuffer.allocate(i2);
        } else {
            this.supplementalData.clear();
        }
    }

    public C1665f(int i2, int i7) {
        this.cryptoInfo = new C1663d();
        this.bufferReplacementMode = i2;
        this.paddingSize = i7;
    }
}
