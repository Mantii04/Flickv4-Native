package androidx.emoji2.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import java.util.stream.IntStream;

/* loaded from: classes.dex */
public final class H implements Spannable {

    /* renamed from: b, reason: collision with root package name */
    public boolean f5982b = false;

    /* renamed from: e, reason: collision with root package name */
    public Spannable f5983e;

    public H(Spannable spannable) {
        this.f5983e = spannable;
    }

    public final void a() {
        Spannable spannable = this.f5983e;
        if (!this.f5982b) {
            if ((Build.VERSION.SDK_INT < 28 ? new J3.b() : new G()).b(spannable)) {
                this.f5983e = new SpannableString(spannable);
            }
        }
        this.f5982b = true;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i2) {
        return this.f5983e.charAt(i2);
    }

    @Override // java.lang.CharSequence
    public IntStream chars() {
        IntStream chars;
        chars = this.f5983e.chars();
        return chars;
    }

    @Override // java.lang.CharSequence
    public IntStream codePoints() {
        IntStream codePoints;
        codePoints = this.f5983e.codePoints();
        return codePoints;
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f5983e.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f5983e.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f5983e.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i2, int i7, Class<T> cls) {
        return (T[]) this.f5983e.getSpans(i2, i7, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f5983e.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i2, int i7, Class cls) {
        return this.f5983e.nextSpanTransition(i2, i7, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        a();
        this.f5983e.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i2, int i7, int i8) {
        a();
        this.f5983e.setSpan(obj, i2, i7, i8);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i2, int i7) {
        return this.f5983e.subSequence(i2, i7);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f5983e.toString();
    }

    public H(CharSequence charSequence) {
        this.f5983e = new SpannableString(charSequence);
    }
}
