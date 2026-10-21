package S0;

import P3.v;
import androidx.media3.extractor.text.SubtitleDecoderException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public abstract class h extends u0.j implements j {
    private final String name;

    public h(String str) {
        super(new m[2], new n[2]);
        this.name = str;
        setInitialInputBufferSize(1024);
    }

    public abstract i decode(byte[] bArr, int i2, boolean z6) throws SubtitleDecoderException;

    @Override // u0.InterfaceC1664e
    public final String getName() {
        return this.name;
    }

    @Override // u0.j
    public final m createInputBuffer() {
        return new m();
    }

    @Override // u0.j
    public final n createOutputBuffer() {
        return new g(this);
    }

    @Override // u0.j
    public final SubtitleDecoderException createUnexpectedDecodeException(Throwable th) {
        return new SubtitleDecoderException("Unexpected decode error", th);
    }

    @Override // u0.j
    public final SubtitleDecoderException decode(m mVar, n nVar, boolean z6) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) v.checkNotNull(mVar.data);
            nVar.setContent(mVar.timeUs, decode(byteBuffer.array(), byteBuffer.limit(), z6), mVar.f3271b);
            nVar.shouldBeSkipped = false;
            return null;
        } catch (SubtitleDecoderException e3) {
            return e3;
        }
    }

    @Override // S0.j
    public void setPositionUs(long j7) {
    }
}
