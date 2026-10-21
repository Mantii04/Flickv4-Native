package P3;

import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes2.dex */
public class r {

    /* renamed from: a, reason: collision with root package name */
    public final String f2707a;

    public r(String str) {
        this.f2707a = (String) v.checkNotNull(str);
    }

    public static CharSequence a(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public static r on(String str) {
        return new r(str);
    }

    public <A extends Appendable> A appendTo(A a7, Iterator<? extends Object> it) throws IOException {
        v.checkNotNull(a7);
        if (it.hasNext()) {
            a7.append(a(it.next()));
            while (it.hasNext()) {
                a7.append(this.f2707a);
                a7.append(a(it.next()));
            }
        }
        return a7;
    }

    public final String join(Iterable<? extends Object> iterable) {
        return join(iterable.iterator());
    }

    public q withKeyValueSeparator(String str) {
        return new q(this, str);
    }

    public static r on(char c7) {
        return new r(String.valueOf(c7));
    }

    public final String join(Iterator<? extends Object> it) {
        return appendTo(new StringBuilder(), it).toString();
    }

    public final StringBuilder appendTo(StringBuilder sb, Iterable<? extends Object> iterable) {
        return appendTo(sb, iterable.iterator());
    }

    public final StringBuilder appendTo(StringBuilder sb, Iterator<? extends Object> it) {
        try {
            appendTo((r) sb, it);
            return sb;
        } catch (IOException e3) {
            throw new AssertionError(e3);
        }
    }
}
