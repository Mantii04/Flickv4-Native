package v0;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class Q implements D {

    /* renamed from: a, reason: collision with root package name */
    public final D f20391a;

    public Q(D d7) {
        this.f20391a = d7;
    }

    @Override // v0.D
    public boolean advancePeekPosition(int i2, boolean z6) throws IOException {
        return this.f20391a.advancePeekPosition(i2, z6);
    }

    @Override // v0.D
    public long getLength() {
        return this.f20391a.getLength();
    }

    @Override // v0.D
    public long getPeekPosition() {
        return this.f20391a.getPeekPosition();
    }

    @Override // v0.D
    public long getPosition() {
        return this.f20391a.getPosition();
    }

    @Override // v0.D
    public int peek(byte[] bArr, int i2, int i7) throws IOException {
        return this.f20391a.peek(bArr, i2, i7);
    }

    @Override // v0.D
    public boolean peekFully(byte[] bArr, int i2, int i7, boolean z6) throws IOException {
        return this.f20391a.peekFully(bArr, i2, i7, z6);
    }

    @Override // v0.D, androidx.media3.common.DataReader
    public int read(byte[] bArr, int i2, int i7) throws IOException {
        return this.f20391a.read(bArr, i2, i7);
    }

    @Override // v0.D
    public boolean readFully(byte[] bArr, int i2, int i7, boolean z6) throws IOException {
        return this.f20391a.readFully(bArr, i2, i7, z6);
    }

    @Override // v0.D
    public void resetPeekPosition() {
        this.f20391a.resetPeekPosition();
    }

    @Override // v0.D
    public int skip(int i2) throws IOException {
        return this.f20391a.skip(i2);
    }

    @Override // v0.D
    public boolean skipFully(int i2, boolean z6) throws IOException {
        return this.f20391a.skipFully(i2, z6);
    }

    @Override // v0.D
    public void advancePeekPosition(int i2) throws IOException {
        this.f20391a.advancePeekPosition(i2);
    }

    @Override // v0.D
    public void peekFully(byte[] bArr, int i2, int i7) throws IOException {
        this.f20391a.peekFully(bArr, i2, i7);
    }

    @Override // v0.D
    public void readFully(byte[] bArr, int i2, int i7) throws IOException {
        this.f20391a.readFully(bArr, i2, i7);
    }

    @Override // v0.D
    public void skipFully(int i2) throws IOException {
        this.f20391a.skipFully(i2);
    }
}
