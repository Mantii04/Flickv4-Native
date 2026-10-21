package e6;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class F implements InterfaceC0872n {

    /* renamed from: b, reason: collision with root package name */
    public final L f13988b;

    /* renamed from: e, reason: collision with root package name */
    public final C0870l f13989e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13990f;

    public F(L source) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        this.f13988b = source;
        this.f13989e = new C0870l();
    }

    @Override // e6.L, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f13990f) {
            return;
        }
        this.f13990f = true;
        this.f13988b.close();
        this.f13989e.clear();
    }

    @Override // e6.InterfaceC0872n
    public boolean exhausted() {
        if (this.f13990f) {
            throw new IllegalStateException("closed");
        }
        C0870l c0870l = this.f13989e;
        return c0870l.exhausted() && this.f13988b.read(c0870l, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
    }

    @Override // e6.InterfaceC0872n
    public C0870l getBuffer() {
        return this.f13989e;
    }

    public long indexOf(byte b7) {
        return indexOf(b7, 0L, Long.MAX_VALUE);
    }

    @Override // e6.InterfaceC0872n
    public long indexOfElement(ByteString targetBytes) {
        kotlin.jvm.internal.j.checkNotNullParameter(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    @Override // e6.InterfaceC0872n
    public InputStream inputStream() {
        return new E(this);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f13990f;
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
    public int read(ByteBuffer sink) {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        C0870l c0870l = this.f13989e;
        if (c0870l.size() == 0 && this.f13988b.read(c0870l, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return c0870l.read(sink);
    }

    @Override // e6.InterfaceC0872n
    public long readAll(J sink) {
        C0870l c0870l;
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        long j7 = 0;
        while (true) {
            L l7 = this.f13988b;
            c0870l = this.f13989e;
            if (l7.read(c0870l, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                break;
            }
            long completeSegmentByteCount = c0870l.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                j7 += completeSegmentByteCount;
                sink.write(c0870l, completeSegmentByteCount);
            }
        }
        if (c0870l.size() <= 0) {
            return j7;
        }
        long size = c0870l.size() + j7;
        sink.write(c0870l, c0870l.size());
        return size;
    }

    @Override // e6.InterfaceC0872n
    public byte readByte() {
        require(1L);
        return this.f13989e.readByte();
    }

    @Override // e6.InterfaceC0872n
    public byte[] readByteArray() {
        L l7 = this.f13988b;
        C0870l c0870l = this.f13989e;
        c0870l.writeAll(l7);
        return c0870l.readByteArray();
    }

    @Override // e6.InterfaceC0872n
    public ByteString readByteString() {
        L l7 = this.f13988b;
        C0870l c0870l = this.f13989e;
        c0870l.writeAll(l7);
        return c0870l.readByteString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
    
        if (r4 == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        r1 = new java.lang.StringBuilder("Expected a digit or '-' but was 0x");
        r2 = java.lang.Integer.toString(r8, P5.a.checkRadix(P5.a.checkRadix(16)));
        kotlin.jvm.internal.j.checkNotNullExpressionValue(r2, "toString(this, checkRadix(radix))");
        r1.append(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
    
        throw new java.lang.NumberFormatException(r1.toString());
     */
    @Override // e6.InterfaceC0872n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() {
        /*
            r11 = this;
            r0 = 1
            r11.require(r0)
            r2 = 0
            r4 = r2
        L8:
            long r6 = r4 + r0
            boolean r8 = r11.request(r6)
            e6.l r9 = r11.f13989e
            if (r8 == 0) goto L53
            byte r8 = r9.getByte(r4)
            r10 = 48
            if (r8 < r10) goto L1e
            r10 = 57
            if (r8 <= r10) goto L27
        L1e:
            int r4 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r4 != 0) goto L29
            r5 = 45
            if (r8 == r5) goto L27
            goto L29
        L27:
            r4 = r6
            goto L8
        L29:
            if (r4 == 0) goto L2c
            goto L53
        L2c:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Expected a digit or '-' but was 0x"
            r1.<init>(r2)
            r2 = 16
            int r2 = P5.a.checkRadix(r2)
            int r2 = P5.a.checkRadix(r2)
            java.lang.String r2 = java.lang.Integer.toString(r8, r2)
            java.lang.String r3 = "toString(this, checkRadix(radix))"
            kotlin.jvm.internal.j.checkNotNullExpressionValue(r2, r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L53:
            long r0 = r9.readDecimalLong()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e6.F.readDecimalLong():long");
    }

    @Override // e6.InterfaceC0872n
    public void readFully(byte[] sink) {
        C0870l c0870l = this.f13989e;
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        try {
            require(sink.length);
            c0870l.readFully(sink);
        } catch (EOFException e3) {
            int i2 = 0;
            while (c0870l.size() > 0) {
                int read = c0870l.read(sink, i2, (int) c0870l.size());
                if (read == -1) {
                    throw new AssertionError();
                }
                i2 += read;
            }
            throw e3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        if (r0 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
    
        r1 = new java.lang.StringBuilder("Expected leading [0-9a-fA-F] character but was 0x");
        r2 = java.lang.Integer.toString(r2, P5.a.checkRadix(P5.a.checkRadix(16)));
        kotlin.jvm.internal.j.checkNotNullExpressionValue(r2, "toString(this, checkRadix(radix))");
        r1.append(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005a, code lost:
    
        throw new java.lang.NumberFormatException(r1.toString());
     */
    @Override // e6.InterfaceC0872n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readHexadecimalUnsignedLong() {
        /*
            r6 = this;
            r0 = 1
            r6.require(r0)
            r0 = 0
        L6:
            int r1 = r0 + 1
            long r2 = (long) r1
            boolean r2 = r6.request(r2)
            e6.l r3 = r6.f13989e
            if (r2 == 0) goto L5b
            long r4 = (long) r0
            byte r2 = r3.getByte(r4)
            r4 = 48
            if (r2 < r4) goto L1e
            r4 = 57
            if (r2 <= r4) goto L2f
        L1e:
            r4 = 97
            if (r2 < r4) goto L26
            r4 = 102(0x66, float:1.43E-43)
            if (r2 <= r4) goto L2f
        L26:
            r4 = 65
            if (r2 < r4) goto L31
            r4 = 70
            if (r2 <= r4) goto L2f
            goto L31
        L2f:
            r0 = r1
            goto L6
        L31:
            if (r0 == 0) goto L34
            goto L5b
        L34:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.<init>(r3)
            r3 = 16
            int r3 = P5.a.checkRadix(r3)
            int r3 = P5.a.checkRadix(r3)
            java.lang.String r2 = java.lang.Integer.toString(r2, r3)
            java.lang.String r3 = "toString(this, checkRadix(radix))"
            kotlin.jvm.internal.j.checkNotNullExpressionValue(r2, r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L5b:
            long r0 = r3.readHexadecimalUnsignedLong()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e6.F.readHexadecimalUnsignedLong():long");
    }

    @Override // e6.InterfaceC0872n
    public int readInt() {
        require(4L);
        return this.f13989e.readInt();
    }

    public int readIntLe() {
        require(4L);
        return this.f13989e.readIntLe();
    }

    @Override // e6.InterfaceC0872n
    public long readLong() {
        require(8L);
        return this.f13989e.readLong();
    }

    @Override // e6.InterfaceC0872n
    public short readShort() {
        require(2L);
        return this.f13989e.readShort();
    }

    public short readShortLe() {
        require(2L);
        return this.f13989e.readShortLe();
    }

    @Override // e6.InterfaceC0872n
    public String readString(Charset charset) {
        kotlin.jvm.internal.j.checkNotNullParameter(charset, "charset");
        L l7 = this.f13988b;
        C0870l c0870l = this.f13989e;
        c0870l.writeAll(l7);
        return c0870l.readString(charset);
    }

    @Override // e6.InterfaceC0872n
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // e6.InterfaceC0872n
    public boolean request(long j7) {
        C0870l c0870l;
        if (j7 < 0) {
            throw new IllegalArgumentException(A.i.i("byteCount < 0: ", j7).toString());
        }
        if (this.f13990f) {
            throw new IllegalStateException("closed");
        }
        do {
            c0870l = this.f13989e;
            if (c0870l.size() >= j7) {
                return true;
            }
        } while (this.f13988b.read(c0870l, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return false;
    }

    @Override // e6.InterfaceC0872n
    public void require(long j7) {
        if (!request(j7)) {
            throw new EOFException();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0033, code lost:
    
        return -1;
     */
    @Override // e6.InterfaceC0872n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int select(e6.A r7) {
        /*
            r6 = this;
            java.lang.String r0 = "options"
            kotlin.jvm.internal.j.checkNotNullParameter(r7, r0)
            boolean r0 = r6.f13990f
            if (r0 != 0) goto L34
        L9:
            e6.l r0 = r6.f13989e
            r1 = 1
            int r1 = f6.a.selectPrefix(r0, r7, r1)
            r2 = -2
            r3 = -1
            if (r1 == r2) goto L25
            if (r1 == r3) goto L33
            okio.ByteString[] r7 = r7.getByteStrings$okio()
            r7 = r7[r1]
            int r7 = r7.size()
            long r2 = (long) r7
            r0.skip(r2)
            return r1
        L25:
            e6.L r1 = r6.f13988b
            r4 = 8192(0x2000, double:4.0474E-320)
            long r0 = r1.read(r0, r4)
            r4 = -1
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 != 0) goto L9
        L33:
            return r3
        L34:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "closed"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: e6.F.select(e6.A):int");
    }

    @Override // e6.InterfaceC0872n
    public void skip(long j7) {
        if (this.f13990f) {
            throw new IllegalStateException("closed");
        }
        while (j7 > 0) {
            C0870l c0870l = this.f13989e;
            if (c0870l.size() == 0 && this.f13988b.read(c0870l, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j7, c0870l.size());
            c0870l.skip(min);
            j7 -= min;
        }
    }

    @Override // e6.L
    public O timeout() {
        return this.f13988b.timeout();
    }

    public String toString() {
        return "buffer(" + this.f13988b + ')';
    }

    public long indexOf(byte b7, long j7, long j8) {
        if (this.f13990f) {
            throw new IllegalStateException("closed");
        }
        if (0 > j7 || j7 > j8) {
            StringBuilder r6 = A.i.r(j7, "fromIndex=", " toIndex=");
            r6.append(j8);
            throw new IllegalArgumentException(r6.toString().toString());
        }
        long j9 = j7;
        while (j9 < j8) {
            byte b8 = b7;
            long j10 = j8;
            long indexOf = this.f13989e.indexOf(b8, j9, j10);
            if (indexOf == -1) {
                C0870l c0870l = this.f13989e;
                long size = c0870l.size();
                if (size >= j10 || this.f13988b.read(c0870l, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    break;
                }
                j9 = Math.max(j9, size);
                b7 = b8;
                j8 = j10;
            } else {
                return indexOf;
            }
        }
        return -1L;
    }

    public long indexOfElement(ByteString targetBytes, long j7) {
        kotlin.jvm.internal.j.checkNotNullParameter(targetBytes, "targetBytes");
        if (this.f13990f) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            C0870l c0870l = this.f13989e;
            long indexOfElement = c0870l.indexOfElement(targetBytes, j7);
            if (indexOfElement != -1) {
                return indexOfElement;
            }
            long size = c0870l.size();
            if (this.f13988b.read(c0870l, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j7 = Math.max(j7, size);
        }
    }

    @Override // e6.InterfaceC0872n
    public String readUtf8LineStrict(long j7) {
        if (j7 < 0) {
            throw new IllegalArgumentException(A.i.i("limit < 0: ", j7).toString());
        }
        long j8 = j7 == Long.MAX_VALUE ? Long.MAX_VALUE : j7 + 1;
        long indexOf = indexOf((byte) 10, 0L, j8);
        C0870l c0870l = this.f13989e;
        if (indexOf != -1) {
            return f6.a.readUtf8Line(c0870l, indexOf);
        }
        if (j8 < Long.MAX_VALUE && request(j8) && c0870l.getByte(j8 - 1) == 13 && request(j8 + 1) && c0870l.getByte(j8) == 10) {
            return f6.a.readUtf8Line(c0870l, j8);
        }
        C0870l c0870l2 = new C0870l();
        C0870l c0870l3 = this.f13989e;
        c0870l3.copyTo(c0870l2, 0L, Math.min(32, c0870l3.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(c0870l.size(), j7) + " content=" + c0870l2.readByteString().hex() + (char) 8230);
    }

    public boolean rangeEquals(long j7, ByteString bytes, int i2, int i7) {
        int i8;
        kotlin.jvm.internal.j.checkNotNullParameter(bytes, "bytes");
        if (!this.f13990f) {
            if (j7 >= 0 && i2 >= 0 && i7 >= 0 && bytes.size() - i2 >= i7) {
                for (0; i8 < i7; i8 + 1) {
                    long j8 = i8 + j7;
                    i8 = (request(1 + j8) && this.f13989e.getByte(j8) == bytes.getByte(i2 + i8)) ? i8 + 1 : 0;
                }
                return true;
            }
            return false;
        }
        throw new IllegalStateException("closed");
    }

    @Override // e6.InterfaceC0872n
    public byte[] readByteArray(long j7) {
        require(j7);
        return this.f13989e.readByteArray(j7);
    }

    @Override // e6.InterfaceC0872n
    public ByteString readByteString(long j7) {
        require(j7);
        return this.f13989e.readByteString(j7);
    }

    @Override // e6.L
    public long read(C0870l sink, long j7) {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        if (j7 >= 0) {
            if (!this.f13990f) {
                C0870l c0870l = this.f13989e;
                if (c0870l.size() == 0 && this.f13988b.read(c0870l, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1L;
                }
                return c0870l.read(sink, Math.min(j7, c0870l.size()));
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(A.i.i("byteCount < 0: ", j7).toString());
    }

    @Override // e6.InterfaceC0872n
    public void readFully(C0870l sink, long j7) {
        C0870l c0870l = this.f13989e;
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        try {
            require(j7);
            c0870l.readFully(sink, j7);
        } catch (EOFException e3) {
            sink.writeAll(c0870l);
            throw e3;
        }
    }
}
