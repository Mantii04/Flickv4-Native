package e6;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.exoplayer.MediaPeriodQueue;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import okhttp3.internal.connection.RealConnection;
import okio.ByteString;
import okio.SegmentedByteString;

/* renamed from: e6.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0870l implements InterfaceC0872n, InterfaceC0871m, Cloneable, ByteChannel {

    /* renamed from: b, reason: collision with root package name */
    public H f14019b;

    /* renamed from: e, reason: collision with root package name */
    public long f14020e;

    public static /* synthetic */ C0867i readAndWriteUnsafe$default(C0870l c0870l, C0867i c0867i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            c0867i = AbstractC0860b.getDEFAULT__new_UnsafeCursor();
        }
        return c0870l.readAndWriteUnsafe(c0867i);
    }

    public final void clear() {
        skip(size());
    }

    public final long completeSegmentByteCount() {
        long size = size();
        if (size == 0) {
            return 0L;
        }
        H h7 = this.f14019b;
        kotlin.jvm.internal.j.checkNotNull(h7);
        H h8 = h7.f13997g;
        kotlin.jvm.internal.j.checkNotNull(h8);
        return (h8.f13993c >= 8192 || !h8.f13995e) ? size : size - (r3 - h8.f13992b);
    }

    public final C0870l copy() {
        C0870l c0870l = new C0870l();
        if (size() == 0) {
            return c0870l;
        }
        H h7 = this.f14019b;
        kotlin.jvm.internal.j.checkNotNull(h7);
        H sharedCopy = h7.sharedCopy();
        c0870l.f14019b = sharedCopy;
        sharedCopy.f13997g = sharedCopy;
        sharedCopy.f13996f = sharedCopy;
        for (H h8 = h7.f13996f; h8 != h7; h8 = h8.f13996f) {
            H h9 = sharedCopy.f13997g;
            kotlin.jvm.internal.j.checkNotNull(h9);
            kotlin.jvm.internal.j.checkNotNull(h8);
            h9.push(h8.sharedCopy());
        }
        c0870l.setSize$okio(size());
        return c0870l;
    }

    public final C0870l copyTo(C0870l out, long j7, long j8) {
        kotlin.jvm.internal.j.checkNotNullParameter(out, "out");
        long j9 = j7;
        AbstractC0860b.checkOffsetAndCount(size(), j9, j8);
        if (j8 != 0) {
            out.setSize$okio(out.size() + j8);
            H h7 = this.f14019b;
            while (true) {
                kotlin.jvm.internal.j.checkNotNull(h7);
                int i2 = h7.f13993c;
                int i7 = h7.f13992b;
                if (j9 < i2 - i7) {
                    break;
                }
                j9 -= i2 - i7;
                h7 = h7.f13996f;
            }
            H h8 = h7;
            long j10 = j8;
            while (j10 > 0) {
                kotlin.jvm.internal.j.checkNotNull(h8);
                H sharedCopy = h8.sharedCopy();
                int i8 = sharedCopy.f13992b + ((int) j9);
                sharedCopy.f13992b = i8;
                sharedCopy.f13993c = Math.min(i8 + ((int) j10), sharedCopy.f13993c);
                H h9 = out.f14019b;
                if (h9 == null) {
                    sharedCopy.f13997g = sharedCopy;
                    sharedCopy.f13996f = sharedCopy;
                    out.f14019b = sharedCopy;
                } else {
                    kotlin.jvm.internal.j.checkNotNull(h9);
                    H h10 = h9.f13997g;
                    kotlin.jvm.internal.j.checkNotNull(h10);
                    h10.push(sharedCopy);
                }
                j10 -= sharedCopy.f13993c - sharedCopy.f13992b;
                h8 = h8.f13996f;
                j9 = 0;
            }
        }
        return this;
    }

    public boolean equals(Object obj) {
        boolean z6 = true;
        if (this == obj) {
            return true;
        }
        boolean z7 = false;
        if (!(obj instanceof C0870l)) {
            return false;
        }
        C0870l c0870l = (C0870l) obj;
        if (size() != c0870l.size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        H h7 = this.f14019b;
        kotlin.jvm.internal.j.checkNotNull(h7);
        H h8 = c0870l.f14019b;
        kotlin.jvm.internal.j.checkNotNull(h8);
        int i2 = h7.f13992b;
        int i7 = h8.f13992b;
        long j7 = 0;
        while (j7 < size()) {
            long min = Math.min(h7.f13993c - i2, h8.f13993c - i7);
            long j8 = 0;
            while (j8 < min) {
                int i8 = i2 + 1;
                boolean z8 = z6;
                byte b7 = h7.f13991a[i2];
                int i9 = i7 + 1;
                boolean z9 = z7;
                if (b7 != h8.f13991a[i7]) {
                    return z9;
                }
                j8++;
                i7 = i9;
                i2 = i8;
                z6 = z8;
                z7 = z9;
            }
            boolean z10 = z6;
            boolean z11 = z7;
            if (i2 == h7.f13993c) {
                H h9 = h7.f13996f;
                kotlin.jvm.internal.j.checkNotNull(h9);
                i2 = h9.f13992b;
                h7 = h9;
            }
            if (i7 == h8.f13993c) {
                h8 = h8.f13996f;
                kotlin.jvm.internal.j.checkNotNull(h8);
                i7 = h8.f13992b;
            }
            j7 += min;
            z6 = z10;
            z7 = z11;
        }
        return z6;
    }

    @Override // e6.InterfaceC0872n
    public boolean exhausted() {
        return this.f14020e == 0;
    }

    public final byte getByte(long j7) {
        AbstractC0860b.checkOffsetAndCount(size(), j7, 1L);
        H h7 = this.f14019b;
        if (h7 == null) {
            kotlin.jvm.internal.j.checkNotNull(null);
            throw null;
        }
        if (size() - j7 < j7) {
            long size = size();
            while (size > j7) {
                h7 = h7.f13997g;
                kotlin.jvm.internal.j.checkNotNull(h7);
                size -= h7.f13993c - h7.f13992b;
            }
            kotlin.jvm.internal.j.checkNotNull(h7);
            return h7.f13991a[(int) ((h7.f13992b + j7) - size)];
        }
        long j8 = 0;
        while (true) {
            long j9 = (h7.f13993c - h7.f13992b) + j8;
            if (j9 > j7) {
                kotlin.jvm.internal.j.checkNotNull(h7);
                return h7.f13991a[(int) ((h7.f13992b + j7) - j8)];
            }
            h7 = h7.f13996f;
            kotlin.jvm.internal.j.checkNotNull(h7);
            j8 = j9;
        }
    }

    public int hashCode() {
        H h7 = this.f14019b;
        if (h7 == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i7 = h7.f13993c;
            for (int i8 = h7.f13992b; i8 < i7; i8++) {
                i2 = (i2 * 31) + h7.f13991a[i8];
            }
            h7 = h7.f13996f;
            kotlin.jvm.internal.j.checkNotNull(h7);
        } while (h7 != this.f14019b);
        return i2;
    }

    public long indexOf(ByteString bytes) throws IOException {
        kotlin.jvm.internal.j.checkNotNullParameter(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    @Override // e6.InterfaceC0872n
    public long indexOfElement(ByteString targetBytes) {
        kotlin.jvm.internal.j.checkNotNullParameter(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    @Override // e6.InterfaceC0872n
    public InputStream inputStream() {
        return new C0868j(this);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public OutputStream outputStream() {
        return new C0869k(this);
    }

    @Override // e6.InterfaceC0872n
    public InterfaceC0872n peek() {
        return w.buffer(new C(this));
    }

    @Override // e6.InterfaceC0872n
    public boolean rangeEquals(long j7, ByteString bytes) {
        kotlin.jvm.internal.j.checkNotNullParameter(bytes, "bytes");
        return rangeEquals(j7, bytes, 0, bytes.size());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer sink) throws IOException {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        H h7 = this.f14019b;
        if (h7 == null) {
            return -1;
        }
        int min = Math.min(sink.remaining(), h7.f13993c - h7.f13992b);
        sink.put(h7.f13991a, h7.f13992b, min);
        int i2 = h7.f13992b + min;
        h7.f13992b = i2;
        this.f14020e -= min;
        if (i2 == h7.f13993c) {
            this.f14019b = h7.pop();
            I.recycle(h7);
        }
        return min;
    }

    @Override // e6.InterfaceC0872n
    public long readAll(J sink) throws IOException {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        long size = size();
        if (size > 0) {
            sink.write(this, size);
        }
        return size;
    }

    public final C0867i readAndWriteUnsafe(C0867i unsafeCursor) {
        kotlin.jvm.internal.j.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return f6.a.commonReadAndWriteUnsafe(this, unsafeCursor);
    }

    @Override // e6.InterfaceC0872n
    public byte readByte() throws EOFException {
        if (size() == 0) {
            throw new EOFException();
        }
        H h7 = this.f14019b;
        kotlin.jvm.internal.j.checkNotNull(h7);
        int i2 = h7.f13992b;
        int i7 = h7.f13993c;
        int i8 = i2 + 1;
        byte b7 = h7.f13991a[i2];
        setSize$okio(size() - 1);
        if (i8 != i7) {
            h7.f13992b = i8;
            return b7;
        }
        this.f14019b = h7.pop();
        I.recycle(h7);
        return b7;
    }

    @Override // e6.InterfaceC0872n
    public byte[] readByteArray() {
        return readByteArray(size());
    }

    @Override // e6.InterfaceC0872n
    public ByteString readByteString() {
        return readByteString(size());
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x009f, code lost:
    
        setSize$okio(size() - r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a8, code lost:
    
        if (r2 == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00aa, code lost:
    
        r14 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ad, code lost:
    
        if (r1 >= r14) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b5, code lost:
    
        if (size() == r17) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b7, code lost:
    
        if (r2 == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b9, code lost:
    
        r1 = "Expected a digit";
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00be, code lost:
    
        r1 = A.i.s(r1, " but was 0x");
        r1.append(e6.AbstractC0860b.toHexString(getByte(r17)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00da, code lost:
    
        throw new java.lang.NumberFormatException(r1.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bc, code lost:
    
        r1 = "Expected a digit or '-'";
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e0, code lost:
    
        throw new java.io.EOFException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e1, code lost:
    
        if (r2 == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e3, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00e5, code lost:
    
        return -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ac, code lost:
    
        r14 = 1;
     */
    @Override // e6.InterfaceC0872n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e6.C0870l.readDecimalLong():long");
    }

    @Override // e6.InterfaceC0872n
    public void readFully(C0870l sink, long j7) throws EOFException {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        if (size() >= j7) {
            sink.write(this, j7);
        } else {
            sink.write(this, size());
            throw new EOFException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a1 A[EDGE_INSN: B:40:0x00a1->B:37:0x00a1 BREAK  A[LOOP:0: B:4:0x000d->B:39:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0099  */
    @Override // e6.InterfaceC0872n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readHexadecimalUnsignedLong() throws java.io.EOFException {
        /*
            r14 = this;
            long r0 = r14.size()
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto Lab
            r0 = 0
            r1 = r0
            r4 = r2
        Ld:
            e6.H r6 = r14.f14019b
            kotlin.jvm.internal.j.checkNotNull(r6)
            byte[] r7 = r6.f13991a
            int r8 = r6.f13992b
            int r9 = r6.f13993c
        L18:
            if (r8 >= r9) goto L8d
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L27
            r11 = 57
            if (r10 > r11) goto L27
            int r11 = r10 + (-48)
            goto L3c
        L27:
            r11 = 97
            if (r10 < r11) goto L32
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L32
            int r11 = r10 + (-87)
            goto L3c
        L32:
            r11 = 65
            if (r10 < r11) goto L71
            r11 = 70
            if (r10 > r11) goto L71
            int r11 = r10 + (-55)
        L3c:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 != 0) goto L4c
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L18
        L4c:
            e6.l r0 = new e6.l
            r0.<init>()
            e6.l r0 = r0.writeHexadecimalUnsignedLong(r4)
            e6.l r0 = r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Number too large: "
            r2.<init>(r3)
            java.lang.String r0 = r0.readUtf8()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L71:
            if (r0 == 0) goto L75
            r1 = 1
            goto L8d
        L75:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.<init>(r2)
            java.lang.String r2 = e6.AbstractC0860b.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L8d:
            if (r8 != r9) goto L99
            e6.H r7 = r6.pop()
            r14.f14019b = r7
            e6.I.recycle(r6)
            goto L9b
        L99:
            r6.f13992b = r8
        L9b:
            if (r1 != 0) goto La1
            e6.H r6 = r14.f14019b
            if (r6 != 0) goto Ld
        La1:
            long r1 = r14.size()
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.setSize$okio(r1)
            return r4
        Lab:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e6.C0870l.readHexadecimalUnsignedLong():long");
    }

    @Override // e6.InterfaceC0872n
    public int readInt() throws EOFException {
        if (size() < 4) {
            throw new EOFException();
        }
        H h7 = this.f14019b;
        kotlin.jvm.internal.j.checkNotNull(h7);
        int i2 = h7.f13992b;
        int i7 = h7.f13993c;
        if (i7 - i2 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = h7.f13991a;
        int i8 = i2 + 3;
        int i9 = ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 2] & 255) << 8);
        int i10 = i2 + 4;
        int i11 = i9 | (bArr[i8] & 255);
        setSize$okio(size() - 4);
        if (i10 != i7) {
            h7.f13992b = i10;
            return i11;
        }
        this.f14019b = h7.pop();
        I.recycle(h7);
        return i11;
    }

    public int readIntLe() throws EOFException {
        return AbstractC0860b.reverseBytes(readInt());
    }

    @Override // e6.InterfaceC0872n
    public long readLong() throws EOFException {
        if (size() < 8) {
            throw new EOFException();
        }
        H h7 = this.f14019b;
        kotlin.jvm.internal.j.checkNotNull(h7);
        int i2 = h7.f13992b;
        int i7 = h7.f13993c;
        if (i7 - i2 < 8) {
            return ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
        }
        byte[] bArr = h7.f13991a;
        int i8 = i2 + 7;
        long j7 = ((bArr[i2 + 3] & 255) << 32) | ((bArr[i2] & 255) << 56) | ((bArr[i2 + 1] & 255) << 48) | ((bArr[i2 + 2] & 255) << 40) | ((bArr[i2 + 4] & 255) << 24) | ((bArr[i2 + 5] & 255) << 16) | ((bArr[i2 + 6] & 255) << 8);
        int i9 = i2 + 8;
        long j8 = j7 | (bArr[i8] & 255);
        setSize$okio(size() - 8);
        if (i9 != i7) {
            h7.f13992b = i9;
            return j8;
        }
        this.f14019b = h7.pop();
        I.recycle(h7);
        return j8;
    }

    @Override // e6.InterfaceC0872n
    public short readShort() throws EOFException {
        if (size() < 2) {
            throw new EOFException();
        }
        H h7 = this.f14019b;
        kotlin.jvm.internal.j.checkNotNull(h7);
        int i2 = h7.f13992b;
        int i7 = h7.f13993c;
        if (i7 - i2 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        int i8 = i2 + 1;
        byte[] bArr = h7.f13991a;
        int i9 = (bArr[i2] & 255) << 8;
        int i10 = i2 + 2;
        int i11 = (bArr[i8] & 255) | i9;
        setSize$okio(size() - 2);
        if (i10 == i7) {
            this.f14019b = h7.pop();
            I.recycle(h7);
        } else {
            h7.f13992b = i10;
        }
        return (short) i11;
    }

    public short readShortLe() throws EOFException {
        return AbstractC0860b.reverseBytes(readShort());
    }

    @Override // e6.InterfaceC0872n
    public String readString(Charset charset) {
        kotlin.jvm.internal.j.checkNotNullParameter(charset, "charset");
        return readString(this.f14020e, charset);
    }

    public String readUtf8() {
        return readString(this.f14020e, P5.c.f2725b);
    }

    public int readUtf8CodePoint() throws EOFException {
        int i2;
        int i7;
        int i8;
        if (size() == 0) {
            throw new EOFException();
        }
        byte b7 = getByte(0L);
        if ((b7 & 128) == 0) {
            i2 = b7 & Byte.MAX_VALUE;
            i8 = 0;
            i7 = 1;
        } else if ((b7 & 224) == 192) {
            i2 = b7 & 31;
            i7 = 2;
            i8 = 128;
        } else if ((b7 & 240) == 224) {
            i2 = b7 & 15;
            i7 = 3;
            i8 = 2048;
        } else {
            if ((b7 & 248) != 240) {
                skip(1L);
                return 65533;
            }
            i2 = b7 & 7;
            i7 = 4;
            i8 = 65536;
        }
        long j7 = i7;
        if (size() < j7) {
            StringBuilder q6 = A.i.q(i7, "size < ", ": ");
            q6.append(size());
            q6.append(" (to read code point prefixed 0x");
            q6.append(AbstractC0860b.toHexString(b7));
            q6.append(')');
            throw new EOFException(q6.toString());
        }
        for (int i9 = 1; i9 < i7; i9++) {
            long j8 = i9;
            byte b8 = getByte(j8);
            if ((b8 & 192) != 128) {
                skip(j8);
                return 65533;
            }
            i2 = (i2 << 6) | (b8 & 63);
        }
        skip(j7);
        if (i2 > 1114111) {
            return 65533;
        }
        if ((55296 > i2 || i2 >= 57344) && i2 >= i8) {
            return i2;
        }
        return 65533;
    }

    @Override // e6.InterfaceC0872n
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // e6.InterfaceC0872n
    public boolean request(long j7) {
        return this.f14020e >= j7;
    }

    @Override // e6.InterfaceC0872n
    public void require(long j7) throws EOFException {
        if (this.f14020e < j7) {
            throw new EOFException();
        }
    }

    @Override // e6.InterfaceC0872n
    public int select(A options) {
        kotlin.jvm.internal.j.checkNotNullParameter(options, "options");
        int selectPrefix$default = f6.a.selectPrefix$default(this, options, false, 2, null);
        if (selectPrefix$default == -1) {
            return -1;
        }
        skip(options.getByteStrings$okio()[selectPrefix$default].size());
        return selectPrefix$default;
    }

    public final void setSize$okio(long j7) {
        this.f14020e = j7;
    }

    public final long size() {
        return this.f14020e;
    }

    @Override // e6.InterfaceC0872n
    public void skip(long j7) throws EOFException {
        while (j7 > 0) {
            H h7 = this.f14019b;
            if (h7 == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j7, h7.f13993c - h7.f13992b);
            long j8 = min;
            setSize$okio(size() - j8);
            j7 -= j8;
            int i2 = h7.f13992b + min;
            h7.f13992b = i2;
            if (i2 == h7.f13993c) {
                this.f14019b = h7.pop();
                I.recycle(h7);
            }
        }
    }

    public final ByteString snapshot() {
        if (size() <= 2147483647L) {
            return snapshot((int) size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + size()).toString());
    }

    @Override // e6.L
    public O timeout() {
        return O.NONE;
    }

    public String toString() {
        return snapshot().toString();
    }

    public final H writableSegment$okio(int i2) {
        if (i2 < 1 || i2 > 8192) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        H h7 = this.f14019b;
        if (h7 != null) {
            kotlin.jvm.internal.j.checkNotNull(h7);
            H h8 = h7.f13997g;
            kotlin.jvm.internal.j.checkNotNull(h8);
            return (h8.f13993c + i2 > 8192 || !h8.f13995e) ? h8.push(I.take()) : h8;
        }
        H take = I.take();
        this.f14019b = take;
        take.f13997g = take;
        take.f13996f = take;
        return take;
    }

    @Override // e6.InterfaceC0871m
    public long writeAll(L source) throws IOException {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        long j7 = 0;
        while (true) {
            long read = source.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (read == -1) {
                return j7;
            }
            j7 += read;
        }
    }

    public C0870l writeLong(long j7) {
        H writableSegment$okio = writableSegment$okio(8);
        byte[] bArr = writableSegment$okio.f13991a;
        int i2 = writableSegment$okio.f13993c;
        bArr[i2] = (byte) ((j7 >>> 56) & 255);
        bArr[i2 + 1] = (byte) ((j7 >>> 48) & 255);
        bArr[i2 + 2] = (byte) ((j7 >>> 40) & 255);
        bArr[i2 + 3] = (byte) ((j7 >>> 32) & 255);
        bArr[i2 + 4] = (byte) ((j7 >>> 24) & 255);
        bArr[i2 + 5] = (byte) ((j7 >>> 16) & 255);
        bArr[i2 + 6] = (byte) ((j7 >>> 8) & 255);
        bArr[i2 + 7] = (byte) (j7 & 255);
        writableSegment$okio.f13993c = i2 + 8;
        setSize$okio(size() + 8);
        return this;
    }

    public C0870l writeString(String string, Charset charset) {
        kotlin.jvm.internal.j.checkNotNullParameter(string, "string");
        kotlin.jvm.internal.j.checkNotNullParameter(charset, "charset");
        return writeString(string, 0, string.length(), charset);
    }

    public C0870l writeUtf8CodePoint(int i2) {
        if (i2 < 128) {
            writeByte(i2);
            return this;
        }
        if (i2 < 2048) {
            H writableSegment$okio = writableSegment$okio(2);
            byte[] bArr = writableSegment$okio.f13991a;
            int i7 = writableSegment$okio.f13993c;
            bArr[i7] = (byte) ((i2 >> 6) | 192);
            bArr[i7 + 1] = (byte) ((i2 & 63) | 128);
            writableSegment$okio.f13993c = i7 + 2;
            setSize$okio(size() + 2);
            return this;
        }
        if (55296 <= i2 && i2 < 57344) {
            writeByte(63);
            return this;
        }
        if (i2 < 65536) {
            H writableSegment$okio2 = writableSegment$okio(3);
            byte[] bArr2 = writableSegment$okio2.f13991a;
            int i8 = writableSegment$okio2.f13993c;
            bArr2[i8] = (byte) ((i2 >> 12) | 224);
            bArr2[i8 + 1] = (byte) (((i2 >> 6) & 63) | 128);
            bArr2[i8 + 2] = (byte) ((i2 & 63) | 128);
            writableSegment$okio2.f13993c = i8 + 3;
            setSize$okio(size() + 3);
            return this;
        }
        if (i2 > 1114111) {
            throw new IllegalArgumentException("Unexpected code point: 0x" + AbstractC0860b.toHexString(i2));
        }
        H writableSegment$okio3 = writableSegment$okio(4);
        byte[] bArr3 = writableSegment$okio3.f13991a;
        int i9 = writableSegment$okio3.f13993c;
        bArr3[i9] = (byte) ((i2 >> 18) | 240);
        bArr3[i9 + 1] = (byte) (((i2 >> 12) & 63) | 128);
        bArr3[i9 + 2] = (byte) (((i2 >> 6) & 63) | 128);
        bArr3[i9 + 3] = (byte) ((i2 & 63) | 128);
        writableSegment$okio3.f13993c = i9 + 4;
        setSize$okio(size() + 4);
        return this;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public C0870l m88clone() {
        return copy();
    }

    @Override // e6.InterfaceC0871m
    public C0870l emit() {
        return this;
    }

    @Override // e6.InterfaceC0871m
    public C0870l emitCompleteSegments() {
        return this;
    }

    public long indexOf(byte b7, long j7, long j8) {
        H h7;
        int i2;
        long j9 = 0;
        if (0 > j7 || j7 > j8) {
            throw new IllegalArgumentException(("size=" + size() + " fromIndex=" + j7 + " toIndex=" + j8).toString());
        }
        if (j8 > size()) {
            j8 = size();
        }
        if (j7 == j8 || (h7 = this.f14019b) == null) {
            return -1L;
        }
        if (size() - j7 < j7) {
            j9 = size();
            while (j9 > j7) {
                h7 = h7.f13997g;
                kotlin.jvm.internal.j.checkNotNull(h7);
                j9 -= h7.f13993c - h7.f13992b;
            }
            while (j9 < j8) {
                byte[] bArr = h7.f13991a;
                int min = (int) Math.min(h7.f13993c, (h7.f13992b + j8) - j9);
                i2 = (int) ((h7.f13992b + j7) - j9);
                while (i2 < min) {
                    if (bArr[i2] != b7) {
                        i2++;
                    }
                }
                j9 += h7.f13993c - h7.f13992b;
                h7 = h7.f13996f;
                kotlin.jvm.internal.j.checkNotNull(h7);
                j7 = j9;
            }
            return -1L;
        }
        while (true) {
            long j10 = (h7.f13993c - h7.f13992b) + j9;
            if (j10 > j7) {
                break;
            }
            h7 = h7.f13996f;
            kotlin.jvm.internal.j.checkNotNull(h7);
            j9 = j10;
        }
        while (j9 < j8) {
            byte[] bArr2 = h7.f13991a;
            int min2 = (int) Math.min(h7.f13993c, (h7.f13992b + j8) - j9);
            i2 = (int) ((h7.f13992b + j7) - j9);
            while (i2 < min2) {
                if (bArr2[i2] != b7) {
                    i2++;
                }
            }
            j9 += h7.f13993c - h7.f13992b;
            h7 = h7.f13996f;
            kotlin.jvm.internal.j.checkNotNull(h7);
            j7 = j9;
        }
        return -1L;
        return (i2 - h7.f13992b) + j9;
    }

    public long indexOfElement(ByteString targetBytes, long j7) {
        int i2;
        int i7;
        kotlin.jvm.internal.j.checkNotNullParameter(targetBytes, "targetBytes");
        long j8 = 0;
        if (j7 < 0) {
            throw new IllegalArgumentException(A.i.i("fromIndex < 0: ", j7).toString());
        }
        H h7 = this.f14019b;
        if (h7 == null) {
            return -1L;
        }
        if (size() - j7 < j7) {
            j8 = size();
            while (j8 > j7) {
                h7 = h7.f13997g;
                kotlin.jvm.internal.j.checkNotNull(h7);
                j8 -= h7.f13993c - h7.f13992b;
            }
            if (targetBytes.size() == 2) {
                byte b7 = targetBytes.getByte(0);
                byte b8 = targetBytes.getByte(1);
                while (j8 < size()) {
                    byte[] bArr = h7.f13991a;
                    i2 = (int) ((h7.f13992b + j7) - j8);
                    int i8 = h7.f13993c;
                    while (i2 < i8) {
                        byte b9 = bArr[i2];
                        if (b9 != b7 && b9 != b8) {
                            i2++;
                        }
                        i7 = h7.f13992b;
                    }
                    j8 += h7.f13993c - h7.f13992b;
                    h7 = h7.f13996f;
                    kotlin.jvm.internal.j.checkNotNull(h7);
                    j7 = j8;
                }
            } else {
                byte[] internalArray$okio = targetBytes.internalArray$okio();
                while (j8 < size()) {
                    byte[] bArr2 = h7.f13991a;
                    i2 = (int) ((h7.f13992b + j7) - j8);
                    int i9 = h7.f13993c;
                    while (i2 < i9) {
                        byte b10 = bArr2[i2];
                        for (byte b11 : internalArray$okio) {
                            if (b10 == b11) {
                                i7 = h7.f13992b;
                            }
                        }
                        i2++;
                    }
                    j8 += h7.f13993c - h7.f13992b;
                    h7 = h7.f13996f;
                    kotlin.jvm.internal.j.checkNotNull(h7);
                    j7 = j8;
                }
            }
            return -1L;
        }
        while (true) {
            long j9 = (h7.f13993c - h7.f13992b) + j8;
            if (j9 > j7) {
                break;
            }
            h7 = h7.f13996f;
            kotlin.jvm.internal.j.checkNotNull(h7);
            j8 = j9;
        }
        if (targetBytes.size() == 2) {
            byte b12 = targetBytes.getByte(0);
            byte b13 = targetBytes.getByte(1);
            while (j8 < size()) {
                byte[] bArr3 = h7.f13991a;
                i2 = (int) ((h7.f13992b + j7) - j8);
                int i10 = h7.f13993c;
                while (i2 < i10) {
                    byte b14 = bArr3[i2];
                    if (b14 != b12 && b14 != b13) {
                        i2++;
                    }
                    i7 = h7.f13992b;
                }
                j8 += h7.f13993c - h7.f13992b;
                h7 = h7.f13996f;
                kotlin.jvm.internal.j.checkNotNull(h7);
                j7 = j8;
            }
        } else {
            byte[] internalArray$okio2 = targetBytes.internalArray$okio();
            while (j8 < size()) {
                byte[] bArr4 = h7.f13991a;
                i2 = (int) ((h7.f13992b + j7) - j8);
                int i11 = h7.f13993c;
                while (i2 < i11) {
                    byte b15 = bArr4[i2];
                    for (byte b16 : internalArray$okio2) {
                        if (b15 == b16) {
                            i7 = h7.f13992b;
                        }
                    }
                    i2++;
                }
                j8 += h7.f13993c - h7.f13992b;
                h7 = h7.f13996f;
                kotlin.jvm.internal.j.checkNotNull(h7);
                j7 = j8;
            }
        }
        return -1L;
        return (i2 - i7) + j8;
    }

    public boolean rangeEquals(long j7, ByteString bytes, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(bytes, "bytes");
        if (j7 < 0 || i2 < 0 || i7 < 0 || size() - j7 < i7 || bytes.size() - i2 < i7) {
            return false;
        }
        for (int i8 = 0; i8 < i7; i8++) {
            if (getByte(i8 + j7) != bytes.getByte(i2 + i8)) {
                return false;
            }
        }
        return true;
    }

    @Override // e6.InterfaceC0872n
    public byte[] readByteArray(long j7) throws EOFException {
        if (j7 < 0 || j7 > 2147483647L) {
            throw new IllegalArgumentException(A.i.i("byteCount: ", j7).toString());
        }
        if (size() < j7) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j7];
        readFully(bArr);
        return bArr;
    }

    @Override // e6.InterfaceC0872n
    public ByteString readByteString(long j7) throws EOFException {
        if (j7 < 0 || j7 > 2147483647L) {
            throw new IllegalArgumentException(A.i.i("byteCount: ", j7).toString());
        }
        if (size() < j7) {
            throw new EOFException();
        }
        if (j7 < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return new ByteString(readByteArray(j7));
        }
        ByteString snapshot = snapshot((int) j7);
        skip(j7);
        return snapshot;
    }

    public String readString(long j7, Charset charset) throws EOFException {
        kotlin.jvm.internal.j.checkNotNullParameter(charset, "charset");
        if (j7 < 0 || j7 > 2147483647L) {
            throw new IllegalArgumentException(A.i.i("byteCount: ", j7).toString());
        }
        if (this.f14020e < j7) {
            throw new EOFException();
        }
        if (j7 == 0) {
            return "";
        }
        H h7 = this.f14019b;
        kotlin.jvm.internal.j.checkNotNull(h7);
        int i2 = h7.f13992b;
        if (i2 + j7 > h7.f13993c) {
            return new String(readByteArray(j7), charset);
        }
        int i7 = (int) j7;
        String str = new String(h7.f13991a, i2, i7, charset);
        int i8 = h7.f13992b + i7;
        h7.f13992b = i8;
        this.f14020e -= j7;
        if (i8 == h7.f13993c) {
            this.f14019b = h7.pop();
            I.recycle(h7);
        }
        return str;
    }

    public String readUtf8(long j7) throws EOFException {
        return readString(j7, P5.c.f2725b);
    }

    @Override // e6.InterfaceC0872n
    public String readUtf8LineStrict(long j7) throws EOFException {
        if (j7 < 0) {
            throw new IllegalArgumentException(A.i.i("limit < 0: ", j7).toString());
        }
        long j8 = j7 != Long.MAX_VALUE ? j7 + 1 : Long.MAX_VALUE;
        long indexOf = indexOf((byte) 10, 0L, j8);
        if (indexOf != -1) {
            return f6.a.readUtf8Line(this, indexOf);
        }
        if (j8 < size() && getByte(j8 - 1) == 13 && getByte(j8) == 10) {
            return f6.a.readUtf8Line(this, j8);
        }
        C0870l c0870l = new C0870l();
        copyTo(c0870l, 0L, Math.min(32, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), j7) + " content=" + c0870l.readByteString().hex() + (char) 8230);
    }

    @Override // e6.InterfaceC0871m
    public C0870l writeByte(int i2) {
        H writableSegment$okio = writableSegment$okio(1);
        byte[] bArr = writableSegment$okio.f13991a;
        int i7 = writableSegment$okio.f13993c;
        writableSegment$okio.f13993c = i7 + 1;
        bArr[i7] = (byte) i2;
        setSize$okio(size() + 1);
        return this;
    }

    @Override // e6.InterfaceC0871m
    public C0870l writeDecimalLong(long j7) {
        boolean z6;
        if (j7 == 0) {
            return writeByte(48);
        }
        int i2 = 1;
        if (j7 < 0) {
            j7 = -j7;
            if (j7 < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z6 = true;
        } else {
            z6 = false;
        }
        if (j7 >= 100000000) {
            i2 = j7 < MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US ? j7 < RealConnection.IDLE_CONNECTION_HEALTHY_NS ? j7 < androidx.media3.common.C.NANOS_PER_SECOND ? 9 : 10 : j7 < 100000000000L ? 11 : 12 : j7 < 1000000000000000L ? j7 < 10000000000000L ? 13 : j7 < 100000000000000L ? 14 : 15 : j7 < 100000000000000000L ? j7 < 10000000000000000L ? 16 : 17 : j7 < 1000000000000000000L ? 18 : 19;
        } else if (j7 >= Renderer.DEFAULT_DURATION_TO_PROGRESS_US) {
            i2 = j7 < 1000000 ? j7 < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US ? 5 : 6 : j7 < 10000000 ? 7 : 8;
        } else if (j7 >= 100) {
            i2 = j7 < 1000 ? 3 : 4;
        } else if (j7 >= 10) {
            i2 = 2;
        }
        if (z6) {
            i2++;
        }
        H writableSegment$okio = writableSegment$okio(i2);
        byte[] bArr = writableSegment$okio.f13991a;
        int i7 = writableSegment$okio.f13993c + i2;
        while (j7 != 0) {
            long j8 = 10;
            i7--;
            bArr[i7] = f6.a.getHEX_DIGIT_BYTES()[(int) (j7 % j8)];
            j7 /= j8;
        }
        if (z6) {
            bArr[i7 - 1] = 45;
        }
        writableSegment$okio.f13993c += i2;
        setSize$okio(size() + i2);
        return this;
    }

    @Override // e6.InterfaceC0871m
    public C0870l writeHexadecimalUnsignedLong(long j7) {
        if (j7 == 0) {
            return writeByte(48);
        }
        long j8 = (j7 >>> 1) | j7;
        long j9 = j8 | (j8 >>> 2);
        long j10 = j9 | (j9 >>> 4);
        long j11 = j10 | (j10 >>> 8);
        long j12 = j11 | (j11 >>> 16);
        long j13 = j12 | (j12 >>> 32);
        long j14 = j13 - ((j13 >>> 1) & 6148914691236517205L);
        long j15 = ((j14 >>> 2) & 3689348814741910323L) + (j14 & 3689348814741910323L);
        long j16 = ((j15 >>> 4) + j15) & 1085102592571150095L;
        long j17 = j16 + (j16 >>> 8);
        long j18 = j17 + (j17 >>> 16);
        int i2 = (int) ((((j18 & 63) + ((j18 >>> 32) & 63)) + 3) / 4);
        H writableSegment$okio = writableSegment$okio(i2);
        byte[] bArr = writableSegment$okio.f13991a;
        int i7 = writableSegment$okio.f13993c;
        for (int i8 = (i7 + i2) - 1; i8 >= i7; i8--) {
            bArr[i8] = f6.a.getHEX_DIGIT_BYTES()[(int) (15 & j7)];
            j7 >>>= 4;
        }
        writableSegment$okio.f13993c += i2;
        setSize$okio(size() + i2);
        return this;
    }

    @Override // e6.InterfaceC0871m
    public C0870l writeInt(int i2) {
        H writableSegment$okio = writableSegment$okio(4);
        byte[] bArr = writableSegment$okio.f13991a;
        int i7 = writableSegment$okio.f13993c;
        bArr[i7] = (byte) ((i2 >>> 24) & 255);
        bArr[i7 + 1] = (byte) ((i2 >>> 16) & 255);
        bArr[i7 + 2] = (byte) ((i2 >>> 8) & 255);
        bArr[i7 + 3] = (byte) (i2 & 255);
        writableSegment$okio.f13993c = i7 + 4;
        setSize$okio(size() + 4);
        return this;
    }

    @Override // e6.InterfaceC0871m
    public C0870l writeShort(int i2) {
        H writableSegment$okio = writableSegment$okio(2);
        byte[] bArr = writableSegment$okio.f13991a;
        int i7 = writableSegment$okio.f13993c;
        bArr[i7] = (byte) ((i2 >>> 8) & 255);
        bArr[i7 + 1] = (byte) (i2 & 255);
        writableSegment$okio.f13993c = i7 + 2;
        setSize$okio(size() + 2);
        return this;
    }

    public C0870l writeString(String string, int i2, int i7, Charset charset) {
        kotlin.jvm.internal.j.checkNotNullParameter(string, "string");
        kotlin.jvm.internal.j.checkNotNullParameter(charset, "charset");
        if (i2 < 0) {
            throw new IllegalArgumentException(A.i.f(i2, "beginIndex < 0: ").toString());
        }
        if (i7 >= i2) {
            if (i7 <= string.length()) {
                if (kotlin.jvm.internal.j.areEqual(charset, P5.c.f2725b)) {
                    return writeUtf8(string, i2, i7);
                }
                String substring = string.substring(i2, i7);
                kotlin.jvm.internal.j.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                byte[] bytes = substring.getBytes(charset);
                kotlin.jvm.internal.j.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                return write(bytes, 0, bytes.length);
            }
            StringBuilder q6 = A.i.q(i7, "endIndex > string.length: ", " > ");
            q6.append(string.length());
            throw new IllegalArgumentException(q6.toString().toString());
        }
        throw new IllegalArgumentException(A.i.e(i7, i2, "endIndex < beginIndex: ", " < ").toString());
    }

    @Override // e6.InterfaceC0871m
    public C0870l writeUtf8(String string) {
        kotlin.jvm.internal.j.checkNotNullParameter(string, "string");
        return writeUtf8(string, 0, string.length());
    }

    public final ByteString snapshot(int i2) {
        if (i2 == 0) {
            return ByteString.f19160m;
        }
        AbstractC0860b.checkOffsetAndCount(size(), 0L, i2);
        H h7 = this.f14019b;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i8 < i2) {
            kotlin.jvm.internal.j.checkNotNull(h7);
            int i10 = h7.f13993c;
            int i11 = h7.f13992b;
            if (i10 != i11) {
                i8 += i10 - i11;
                i9++;
                h7 = h7.f13996f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i9][];
        int[] iArr = new int[i9 * 2];
        H h8 = this.f14019b;
        int i12 = 0;
        while (i7 < i2) {
            kotlin.jvm.internal.j.checkNotNull(h8);
            bArr[i12] = h8.f13991a;
            i7 += h8.f13993c - h8.f13992b;
            iArr[i12] = Math.min(i7, i2);
            iArr[i12 + i9] = h8.f13992b;
            h8.f13994d = true;
            i12++;
            h8 = h8.f13996f;
        }
        return new SegmentedByteString(bArr, iArr);
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer source) throws IOException {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        int remaining = source.remaining();
        int i2 = remaining;
        while (i2 > 0) {
            H writableSegment$okio = writableSegment$okio(1);
            int min = Math.min(i2, 8192 - writableSegment$okio.f13993c);
            source.get(writableSegment$okio.f13991a, writableSegment$okio.f13993c, min);
            i2 -= min;
            writableSegment$okio.f13993c += min;
        }
        this.f14020e += remaining;
        return remaining;
    }

    @Override // e6.InterfaceC0871m
    public C0870l writeUtf8(String string, int i2, int i7) {
        char charAt;
        kotlin.jvm.internal.j.checkNotNullParameter(string, "string");
        if (i2 < 0) {
            throw new IllegalArgumentException(A.i.f(i2, "beginIndex < 0: ").toString());
        }
        if (i7 >= i2) {
            if (i7 > string.length()) {
                StringBuilder q6 = A.i.q(i7, "endIndex > string.length: ", " > ");
                q6.append(string.length());
                throw new IllegalArgumentException(q6.toString().toString());
            }
            while (i2 < i7) {
                char charAt2 = string.charAt(i2);
                if (charAt2 < 128) {
                    H writableSegment$okio = writableSegment$okio(1);
                    byte[] bArr = writableSegment$okio.f13991a;
                    int i8 = writableSegment$okio.f13993c - i2;
                    int min = Math.min(i7, 8192 - i8);
                    int i9 = i2 + 1;
                    bArr[i2 + i8] = (byte) charAt2;
                    while (true) {
                        i2 = i9;
                        if (i2 >= min || (charAt = string.charAt(i2)) >= 128) {
                            break;
                        }
                        i9 = i2 + 1;
                        bArr[i2 + i8] = (byte) charAt;
                    }
                    int i10 = writableSegment$okio.f13993c;
                    int i11 = (i8 + i2) - i10;
                    writableSegment$okio.f13993c = i10 + i11;
                    setSize$okio(size() + i11);
                } else {
                    if (charAt2 < 2048) {
                        H writableSegment$okio2 = writableSegment$okio(2);
                        byte[] bArr2 = writableSegment$okio2.f13991a;
                        int i12 = writableSegment$okio2.f13993c;
                        bArr2[i12] = (byte) ((charAt2 >> 6) | 192);
                        bArr2[i12 + 1] = (byte) ((charAt2 & '?') | 128);
                        writableSegment$okio2.f13993c = i12 + 2;
                        setSize$okio(size() + 2);
                    } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                        int i13 = i2 + 1;
                        char charAt3 = i13 < i7 ? string.charAt(i13) : (char) 0;
                        if (charAt2 <= 56319 && 56320 <= charAt3 && charAt3 < 57344) {
                            int i14 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                            H writableSegment$okio3 = writableSegment$okio(4);
                            byte[] bArr3 = writableSegment$okio3.f13991a;
                            int i15 = writableSegment$okio3.f13993c;
                            bArr3[i15] = (byte) ((i14 >> 18) | 240);
                            bArr3[i15 + 1] = (byte) (((i14 >> 12) & 63) | 128);
                            bArr3[i15 + 2] = (byte) (((i14 >> 6) & 63) | 128);
                            bArr3[i15 + 3] = (byte) ((i14 & 63) | 128);
                            writableSegment$okio3.f13993c = i15 + 4;
                            setSize$okio(size() + 4);
                            i2 += 2;
                        } else {
                            writeByte(63);
                            i2 = i13;
                        }
                    } else {
                        H writableSegment$okio4 = writableSegment$okio(3);
                        byte[] bArr4 = writableSegment$okio4.f13991a;
                        int i16 = writableSegment$okio4.f13993c;
                        bArr4[i16] = (byte) ((charAt2 >> '\f') | 224);
                        bArr4[i16 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                        bArr4[i16 + 2] = (byte) ((charAt2 & '?') | 128);
                        writableSegment$okio4.f13993c = i16 + 3;
                        setSize$okio(size() + 3);
                    }
                    i2++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException(A.i.e(i7, i2, "endIndex < beginIndex: ", " < ").toString());
    }

    @Override // e6.InterfaceC0872n
    public void readFully(byte[] sink) throws EOFException {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        int i2 = 0;
        while (i2 < sink.length) {
            int read = read(sink, i2, sink.length - i2);
            if (read == -1) {
                throw new EOFException();
            }
            i2 += read;
        }
    }

    public int read(byte[] sink) {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        return read(sink, 0, sink.length);
    }

    public int read(byte[] sink, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        AbstractC0860b.checkOffsetAndCount(sink.length, i2, i7);
        H h7 = this.f14019b;
        if (h7 == null) {
            return -1;
        }
        int min = Math.min(i7, h7.f13993c - h7.f13992b);
        int i8 = h7.f13992b;
        v5.m.copyInto(h7.f13991a, sink, i2, i8, i8 + min);
        h7.f13992b += min;
        setSize$okio(size() - min);
        if (h7.f13992b == h7.f13993c) {
            this.f14019b = h7.pop();
            I.recycle(h7);
        }
        return min;
    }

    @Override // e6.InterfaceC0871m
    public C0870l write(ByteString byteString) {
        kotlin.jvm.internal.j.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    @Override // e6.InterfaceC0871m
    public C0870l write(byte[] source) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        return write(source, 0, source.length);
    }

    @Override // e6.InterfaceC0871m
    public C0870l write(byte[] source, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        long j7 = i7;
        AbstractC0860b.checkOffsetAndCount(source.length, i2, j7);
        int i8 = i7 + i2;
        while (i2 < i8) {
            H writableSegment$okio = writableSegment$okio(1);
            int min = Math.min(i8 - i2, 8192 - writableSegment$okio.f13993c);
            int i9 = i2 + min;
            v5.m.copyInto(source, writableSegment$okio.f13991a, writableSegment$okio.f13993c, i2, i9);
            writableSegment$okio.f13993c += min;
            i2 = i9;
        }
        setSize$okio(size() + j7);
        return this;
    }

    @Override // e6.L, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // e6.InterfaceC0871m, e6.J, java.io.Flushable
    public void flush() {
    }

    @Override // e6.InterfaceC0872n
    public C0870l getBuffer() {
        return this;
    }

    @Override // e6.L
    public long read(C0870l sink, long j7) {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        if (j7 < 0) {
            throw new IllegalArgumentException(A.i.i("byteCount < 0: ", j7).toString());
        }
        if (size() == 0) {
            return -1L;
        }
        if (j7 > size()) {
            j7 = size();
        }
        sink.write(this, j7);
        return j7;
    }

    public C0870l write(L source, long j7) throws IOException {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        while (j7 > 0) {
            long read = source.read(this, j7);
            if (read == -1) {
                throw new EOFException();
            }
            j7 -= read;
        }
        return this;
    }

    @Override // e6.J
    public void write(C0870l source, long j7) {
        H h7;
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        if (source != this) {
            AbstractC0860b.checkOffsetAndCount(source.size(), 0L, j7);
            while (j7 > 0) {
                H h8 = source.f14019b;
                kotlin.jvm.internal.j.checkNotNull(h8);
                int i2 = h8.f13993c;
                kotlin.jvm.internal.j.checkNotNull(source.f14019b);
                if (j7 < i2 - r1.f13992b) {
                    H h9 = this.f14019b;
                    if (h9 != null) {
                        kotlin.jvm.internal.j.checkNotNull(h9);
                        h7 = h9.f13997g;
                    } else {
                        h7 = null;
                    }
                    if (h7 != null && h7.f13995e) {
                        if ((h7.f13993c + j7) - (h7.f13994d ? 0 : h7.f13992b) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            H h10 = source.f14019b;
                            kotlin.jvm.internal.j.checkNotNull(h10);
                            h10.writeTo(h7, (int) j7);
                            source.setSize$okio(source.size() - j7);
                            setSize$okio(size() + j7);
                            return;
                        }
                    }
                    H h11 = source.f14019b;
                    kotlin.jvm.internal.j.checkNotNull(h11);
                    source.f14019b = h11.split((int) j7);
                }
                H h12 = source.f14019b;
                kotlin.jvm.internal.j.checkNotNull(h12);
                long j8 = h12.f13993c - h12.f13992b;
                source.f14019b = h12.pop();
                H h13 = this.f14019b;
                if (h13 == null) {
                    this.f14019b = h12;
                    h12.f13997g = h12;
                    h12.f13996f = h12;
                } else {
                    kotlin.jvm.internal.j.checkNotNull(h13);
                    H h14 = h13.f13997g;
                    kotlin.jvm.internal.j.checkNotNull(h14);
                    h14.push(h12).compact();
                }
                source.setSize$okio(source.size() - j8);
                setSize$okio(size() + j8);
                j7 -= j8;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }

    public long indexOf(ByteString bytes, long j7) throws IOException {
        int i2;
        long j8 = j7;
        kotlin.jvm.internal.j.checkNotNullParameter(bytes, "bytes");
        if (bytes.size() <= 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long j9 = 0;
        if (j8 >= 0) {
            H h7 = this.f14019b;
            if (h7 == null) {
                return -1L;
            }
            if (size() - j8 < j8) {
                j9 = size();
                while (j9 > j8) {
                    h7 = h7.f13997g;
                    kotlin.jvm.internal.j.checkNotNull(h7);
                    j9 -= h7.f13993c - h7.f13992b;
                }
                byte[] internalArray$okio = bytes.internalArray$okio();
                byte b7 = internalArray$okio[0];
                int size = bytes.size();
                long size2 = (size() - size) + 1;
                while (j9 < size2) {
                    byte[] bArr = h7.f13991a;
                    long j10 = size2;
                    int min = (int) Math.min(h7.f13993c, (h7.f13992b + size2) - j9);
                    i2 = (int) ((h7.f13992b + j8) - j9);
                    while (i2 < min) {
                        if (bArr[i2] != b7 || !f6.a.rangeEquals(h7, i2 + 1, internalArray$okio, 1, size)) {
                            i2++;
                        }
                    }
                    j9 += h7.f13993c - h7.f13992b;
                    h7 = h7.f13996f;
                    kotlin.jvm.internal.j.checkNotNull(h7);
                    j8 = j9;
                    size2 = j10;
                }
                return -1L;
            }
            while (true) {
                long j11 = (h7.f13993c - h7.f13992b) + j9;
                if (j11 > j8) {
                    break;
                }
                h7 = h7.f13996f;
                kotlin.jvm.internal.j.checkNotNull(h7);
                j9 = j11;
            }
            byte[] internalArray$okio2 = bytes.internalArray$okio();
            byte b8 = internalArray$okio2[0];
            int size3 = bytes.size();
            long size4 = (size() - size3) + 1;
            while (j9 < size4) {
                byte[] bArr2 = h7.f13991a;
                int min2 = (int) Math.min(h7.f13993c, (h7.f13992b + size4) - j9);
                i2 = (int) ((h7.f13992b + j8) - j9);
                while (i2 < min2) {
                    if (bArr2[i2] == b8 && f6.a.rangeEquals(h7, i2 + 1, internalArray$okio2, 1, size3)) {
                    }
                    i2++;
                }
                j9 += h7.f13993c - h7.f13992b;
                h7 = h7.f13996f;
                kotlin.jvm.internal.j.checkNotNull(h7);
                j8 = j9;
            }
            return -1L;
            return (i2 - h7.f13992b) + j9;
        }
        throw new IllegalArgumentException(A.i.i("fromIndex < 0: ", j8).toString());
    }
}
