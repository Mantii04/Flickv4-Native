package P5;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class e implements O5.d {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f2734a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2735b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2736c;

    /* renamed from: d, reason: collision with root package name */
    public final H5.p f2737d;

    public e(CharSequence input, int i2, int i7, H5.p getNextMatch) {
        kotlin.jvm.internal.j.checkNotNullParameter(input, "input");
        kotlin.jvm.internal.j.checkNotNullParameter(getNextMatch, "getNextMatch");
        this.f2734a = input;
        this.f2735b = i2;
        this.f2736c = i7;
        this.f2737d = getNextMatch;
    }

    @Override // O5.d
    public Iterator<M5.e> iterator() {
        return new d(this);
    }
}
