package e6;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* loaded from: classes2.dex */
public final class t implements L {

    /* renamed from: b, reason: collision with root package name */
    public byte f14025b;

    /* renamed from: e, reason: collision with root package name */
    public final F f14026e;

    /* renamed from: f, reason: collision with root package name */
    public final Inflater f14027f;

    /* renamed from: j, reason: collision with root package name */
    public final u f14028j;

    /* renamed from: m, reason: collision with root package name */
    public final CRC32 f14029m;

    public t(L source) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        F f3 = new F(source);
        this.f14026e = f3;
        Inflater inflater = new Inflater(true);
        this.f14027f = inflater;
        this.f14028j = new u((InterfaceC0872n) f3, inflater);
        this.f14029m = new CRC32();
    }

    public static void a(int i2, int i7, String str) {
        if (i7 == i2) {
            return;
        }
        String format = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i7), Integer.valueOf(i2)}, 3));
        kotlin.jvm.internal.j.checkNotNullExpressionValue(format, "format(this, *args)");
        throw new IOException(format);
    }

    public final void b(C0870l c0870l, long j7, long j8) {
        H h7 = c0870l.f14019b;
        kotlin.jvm.internal.j.checkNotNull(h7);
        while (true) {
            int i2 = h7.f13993c;
            int i7 = h7.f13992b;
            if (j7 < i2 - i7) {
                break;
            }
            j7 -= i2 - i7;
            h7 = h7.f13996f;
            kotlin.jvm.internal.j.checkNotNull(h7);
        }
        while (j8 > 0) {
            int min = (int) Math.min(h7.f13993c - r6, j8);
            this.f14029m.update(h7.f13991a, (int) (h7.f13992b + j7), min);
            j8 -= min;
            h7 = h7.f13996f;
            kotlin.jvm.internal.j.checkNotNull(h7);
            j7 = 0;
        }
    }

    @Override // e6.L, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f14028j.close();
    }

    @Override // e6.L
    public long read(C0870l sink, long j7) throws IOException {
        long j8;
        byte b7;
        t tVar = this;
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        if (j7 < 0) {
            throw new IllegalArgumentException(A.i.i("byteCount < 0: ", j7).toString());
        }
        if (j7 == 0) {
            return 0L;
        }
        byte b8 = tVar.f14025b;
        CRC32 crc32 = tVar.f14029m;
        F f3 = tVar.f14026e;
        if (b8 == 0) {
            f3.require(10L);
            C0870l c0870l = f3.f13989e;
            byte b9 = c0870l.getByte(3L);
            boolean z6 = ((b9 >> 1) & 1) == 1;
            if (z6) {
                b7 = 0;
                j8 = -1;
                tVar.b(f3.f13989e, 0L, 10L);
            } else {
                b7 = 0;
                j8 = -1;
            }
            a(8075, f3.readShort(), "ID1ID2");
            f3.skip(8L);
            if (((b9 >> 2) & 1) == 1) {
                f3.require(2L);
                if (z6) {
                    b(f3.f13989e, 0L, 2L);
                }
                long readShortLe = c0870l.readShortLe() & 65535;
                f3.require(readShortLe);
                if (z6) {
                    b(f3.f13989e, 0L, readShortLe);
                }
                f3.skip(readShortLe);
            }
            if (((b9 >> 3) & 1) == 1) {
                long indexOf = f3.indexOf(b7);
                if (indexOf == j8) {
                    throw new EOFException();
                }
                if (z6) {
                    b(f3.f13989e, 0L, indexOf + 1);
                }
                f3.skip(indexOf + 1);
            }
            if (((b9 >> 4) & 1) == 1) {
                long indexOf2 = f3.indexOf(b7);
                if (indexOf2 == j8) {
                    throw new EOFException();
                }
                if (z6) {
                    tVar = this;
                    tVar.b(f3.f13989e, 0L, indexOf2 + 1);
                } else {
                    tVar = this;
                }
                f3.skip(indexOf2 + 1);
            } else {
                tVar = this;
            }
            if (z6) {
                a(f3.readShortLe(), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            tVar.f14025b = (byte) 1;
        } else {
            j8 = -1;
        }
        if (tVar.f14025b == 1) {
            long size = sink.size();
            long read = tVar.f14028j.read(sink, j7);
            if (read != j8) {
                tVar.b(sink, size, read);
                return read;
            }
            tVar.f14025b = (byte) 2;
        }
        if (tVar.f14025b == 2) {
            a(f3.readIntLe(), (int) crc32.getValue(), "CRC");
            a(f3.readIntLe(), (int) tVar.f14027f.getBytesWritten(), "ISIZE");
            tVar.f14025b = (byte) 3;
            if (!f3.exhausted()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return j8;
    }

    @Override // e6.L
    public O timeout() {
        return this.f14026e.timeout();
    }
}
