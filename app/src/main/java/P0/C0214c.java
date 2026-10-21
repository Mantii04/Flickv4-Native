package P0;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;

/* renamed from: P0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0214c {

    /* renamed from: a, reason: collision with root package name */
    public final int f2561a;

    /* renamed from: b, reason: collision with root package name */
    public int f2562b;

    /* renamed from: c, reason: collision with root package name */
    public int f2563c;

    /* renamed from: d, reason: collision with root package name */
    public long f2564d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f2565e;

    /* renamed from: f, reason: collision with root package name */
    public final ParsableByteArray f2566f;

    /* renamed from: g, reason: collision with root package name */
    public final ParsableByteArray f2567g;

    /* renamed from: h, reason: collision with root package name */
    public int f2568h;

    /* renamed from: i, reason: collision with root package name */
    public int f2569i;

    public C0214c(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z6) throws ParserException {
        this.f2567g = parsableByteArray;
        this.f2566f = parsableByteArray2;
        this.f2565e = z6;
        parsableByteArray2.setPosition(12);
        this.f2561a = parsableByteArray2.readUnsignedIntToInt();
        parsableByteArray.setPosition(12);
        this.f2569i = parsableByteArray.readUnsignedIntToInt();
        v0.G.checkContainerInput(parsableByteArray.readInt() == 1, "first_chunk must be 1");
        this.f2562b = -1;
    }

    public boolean moveNext() {
        int i2 = this.f2562b + 1;
        this.f2562b = i2;
        if (i2 == this.f2561a) {
            return false;
        }
        boolean z6 = this.f2565e;
        ParsableByteArray parsableByteArray = this.f2566f;
        this.f2564d = z6 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
        if (this.f2562b == this.f2568h) {
            ParsableByteArray parsableByteArray2 = this.f2567g;
            this.f2563c = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray2.skipBytes(4);
            int i7 = this.f2569i - 1;
            this.f2569i = i7;
            this.f2568h = i7 > 0 ? parsableByteArray2.readUnsignedIntToInt() - 1 : -1;
        }
        return true;
    }
}
