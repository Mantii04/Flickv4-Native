package androidx.emoji2.text;

import android.graphics.Typeface;
import d0.C0777b;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class C {

    /* renamed from: a, reason: collision with root package name */
    public final C0777b f5972a;

    /* renamed from: b, reason: collision with root package name */
    public final char[] f5973b;

    /* renamed from: c, reason: collision with root package name */
    public final B f5974c = new B(1024);

    /* renamed from: d, reason: collision with root package name */
    public final Typeface f5975d;

    public C(Typeface typeface, C0777b c0777b) {
        this.f5975d = typeface;
        this.f5972a = c0777b;
        this.f5973b = new char[c0777b.listLength() * 2];
        int listLength = c0777b.listLength();
        for (int i2 = 0; i2 < listLength; i2++) {
            u uVar = new u(this, i2);
            Character.toChars(uVar.getId(), this.f5973b, i2 * 2);
            L.h.checkNotNull(uVar, "emoji metadata cannot be null");
            L.h.checkArgument(uVar.getCodepointsLength() > 0, "invalid metadata codepoint length");
            this.f5974c.a(uVar, 0, uVar.getCodepointsLength() - 1);
        }
    }

    public static C create(Typeface typeface, ByteBuffer byteBuffer) throws IOException {
        try {
            I.s.beginSection("EmojiCompat.MetadataRepo.create");
            return new C(typeface, V3.s.p(byteBuffer));
        } finally {
            I.s.endSection();
        }
    }

    public char[] getEmojiCharArray() {
        return this.f5973b;
    }

    public C0777b getMetadataList() {
        return this.f5972a;
    }
}
