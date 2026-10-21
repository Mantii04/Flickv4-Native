package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import d0.C0776a;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: d, reason: collision with root package name */
    public static final ThreadLocal f6012d = new ThreadLocal();

    /* renamed from: a, reason: collision with root package name */
    public final int f6013a;

    /* renamed from: b, reason: collision with root package name */
    public final C f6014b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f6015c = 0;

    public u(C c7, int i2) {
        this.f6014b = c7;
        this.f6013a = i2;
    }

    public final C0776a a() {
        ThreadLocal threadLocal = f6012d;
        C0776a c0776a = (C0776a) threadLocal.get();
        if (c0776a == null) {
            c0776a = new C0776a();
            threadLocal.set(c0776a);
        }
        this.f6014b.getMetadataList().list(c0776a, this.f6013a);
        return c0776a;
    }

    public void draw(Canvas canvas, float f3, float f7, Paint paint) {
        C c7 = this.f6014b;
        Typeface typeface = c7.f5975d;
        Typeface typeface2 = paint.getTypeface();
        paint.setTypeface(typeface);
        canvas.drawText(c7.getEmojiCharArray(), this.f6013a * 2, 2, f3, f7, paint);
        paint.setTypeface(typeface2);
    }

    public int getCodepointAt(int i2) {
        return a().codepoints(i2);
    }

    public int getCodepointsLength() {
        return a().codepointsLength();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int getHasGlyph() {
        return this.f6015c;
    }

    public short getHeight() {
        return a().height();
    }

    public int getId() {
        return a().id();
    }

    public short getSdkAdded() {
        return a().sdkAdded();
    }

    public short getWidth() {
        return a().width();
    }

    public boolean isDefaultEmoji() {
        return a().emojiStyle();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setHasGlyph(boolean z6) {
        this.f6015c = z6 ? 2 : 1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        sb.append(Integer.toHexString(getId()));
        sb.append(", codepoints:");
        int codepointsLength = getCodepointsLength();
        for (int i2 = 0; i2 < codepointsLength; i2++) {
            sb.append(Integer.toHexString(getCodepointAt(i2)));
            sb.append(StringUtils.SPACE);
        }
        return sb.toString();
    }
}
