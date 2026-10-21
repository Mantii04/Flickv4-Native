package I;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: b, reason: collision with root package name */
    public static final o f1224b = create(new Locale[0]);

    /* renamed from: a, reason: collision with root package name */
    public final q f1225a;

    public o(q qVar) {
        this.f1225a = qVar;
    }

    public static o create(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? wrap(n.a(localeArr)) : new o(new p(localeArr));
    }

    public static o forLanguageTags(String str) {
        if (str == null || str.isEmpty()) {
            return getEmptyLocaleList();
        }
        String[] split = str.split(",", -1);
        int length = split.length;
        Locale[] localeArr = new Locale[length];
        for (int i2 = 0; i2 < length; i2++) {
            localeArr[i2] = m.a(split[i2]);
        }
        return create(localeArr);
    }

    public static o getEmptyLocaleList() {
        return f1224b;
    }

    public static o wrap(LocaleList localeList) {
        return new o(new r(localeList));
    }

    public boolean equals(Object obj) {
        if (obj instanceof o) {
            return this.f1225a.equals(((o) obj).f1225a);
        }
        return false;
    }

    public Locale get(int i2) {
        return this.f1225a.get(i2);
    }

    public int hashCode() {
        return this.f1225a.hashCode();
    }

    public boolean isEmpty() {
        return this.f1225a.isEmpty();
    }

    public int size() {
        return this.f1225a.size();
    }

    public String toLanguageTags() {
        return this.f1225a.toLanguageTags();
    }

    public String toString() {
        return this.f1225a.toString();
    }

    public Object unwrap() {
        return this.f1225a.getLocaleList();
    }
}
