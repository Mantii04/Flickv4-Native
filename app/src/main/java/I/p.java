package I;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes.dex */
public final class p implements q {

    /* renamed from: c, reason: collision with root package name */
    public static final Locale[] f1226c = new Locale[0];

    /* renamed from: a, reason: collision with root package name */
    public final Locale[] f1227a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1228b;

    static {
        new Locale("en", "XA");
        new Locale("ar", "XB");
        String[] split = "en-Latn".split("-", -1);
        if (split.length > 2) {
            new Locale(split[0], split[1], split[2]);
        } else if (split.length > 1) {
            new Locale(split[0], split[1]);
        } else {
            if (split.length != 1) {
                throw new IllegalArgumentException("Can not parse language tag: [en-Latn]");
            }
            new Locale(split[0]);
        }
    }

    public p(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f1227a = f1226c;
            this.f1228b = "";
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < localeArr.length; i2++) {
            Locale locale = localeArr[i2];
            if (locale == null) {
                throw new NullPointerException(A.i.g(i2, "list[", "] is null"));
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                sb.append(locale2.getLanguage());
                String country = locale2.getCountry();
                if (country != null && !country.isEmpty()) {
                    sb.append('-');
                    sb.append(locale2.getCountry());
                }
                if (i2 < localeArr.length - 1) {
                    sb.append(',');
                }
                hashSet.add(locale2);
            }
        }
        this.f1227a = (Locale[]) arrayList.toArray(new Locale[0]);
        this.f1228b = sb.toString();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        Locale[] localeArr = ((p) obj).f1227a;
        Locale[] localeArr2 = this.f1227a;
        if (localeArr2.length != localeArr.length) {
            return false;
        }
        for (int i2 = 0; i2 < localeArr2.length; i2++) {
            if (!localeArr2[i2].equals(localeArr[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // I.q
    public Locale get(int i2) {
        if (i2 < 0) {
            return null;
        }
        Locale[] localeArr = this.f1227a;
        if (i2 < localeArr.length) {
            return localeArr[i2];
        }
        return null;
    }

    @Override // I.q
    public Object getLocaleList() {
        return null;
    }

    public int hashCode() {
        int i2 = 1;
        for (Locale locale : this.f1227a) {
            i2 = (i2 * 31) + locale.hashCode();
        }
        return i2;
    }

    @Override // I.q
    public boolean isEmpty() {
        return this.f1227a.length == 0;
    }

    @Override // I.q
    public int size() {
        return this.f1227a.length;
    }

    @Override // I.q
    public String toLanguageTags() {
        return this.f1228b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.f1227a;
            if (i2 >= localeArr.length) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(localeArr[i2]);
            if (i2 < localeArr.length - 1) {
                sb.append(',');
            }
            i2++;
        }
    }
}
