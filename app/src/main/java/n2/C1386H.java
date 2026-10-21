package n2;

import java.io.IOException;

/* renamed from: n2.H, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1386H implements Appendable {

    /* renamed from: b, reason: collision with root package name */
    public final Appendable f18898b;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18899e = true;

    public C1386H(Appendable appendable) {
        this.f18898b = appendable;
    }

    @Override // java.lang.Appendable
    public Appendable append(char c7) throws IOException {
        boolean z6 = this.f18899e;
        Appendable appendable = this.f18898b;
        if (z6) {
            this.f18899e = false;
            appendable.append("  ");
        }
        this.f18899e = c7 == '\n';
        appendable.append(c7);
        return this;
    }

    @Override // java.lang.Appendable
    public Appendable append(CharSequence charSequence) throws IOException {
        if (charSequence == null) {
            charSequence = "";
        }
        return append(charSequence, 0, charSequence.length());
    }

    @Override // java.lang.Appendable
    public Appendable append(CharSequence charSequence, int i2, int i7) throws IOException {
        if (charSequence == null) {
            charSequence = "";
        }
        boolean z6 = this.f18899e;
        Appendable appendable = this.f18898b;
        boolean z7 = false;
        if (z6) {
            this.f18899e = false;
            appendable.append("  ");
        }
        if (charSequence.length() > 0 && charSequence.charAt(i7 - 1) == '\n') {
            z7 = true;
        }
        this.f18899e = z7;
        appendable.append(charSequence, i2, i7);
        return this;
    }
}
