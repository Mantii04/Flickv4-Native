package j2;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* renamed from: j2.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1046g extends ByteArrayOutputStream {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1047h f16971b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1046g(C1047h c1047h, int i2) {
        super(i2);
        this.f16971b = c1047h;
    }

    @Override // java.io.ByteArrayOutputStream
    public String toString() {
        int i2 = ((ByteArrayOutputStream) this).count;
        if (i2 > 0 && ((ByteArrayOutputStream) this).buf[i2 - 1] == 13) {
            i2--;
        }
        try {
            return new String(((ByteArrayOutputStream) this).buf, 0, i2, this.f16971b.f16973e.name());
        } catch (UnsupportedEncodingException e3) {
            throw new AssertionError(e3);
        }
    }
}
