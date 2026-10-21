package I;

import B4.AbstractC0051n;
import android.os.LocaleList;
import java.util.Locale;

/* loaded from: classes.dex */
public final class r implements q {

    /* renamed from: a, reason: collision with root package name */
    public final LocaleList f1229a;

    public r(Object obj) {
        this.f1229a = AbstractC0051n.d(obj);
    }

    public boolean equals(Object obj) {
        boolean equals;
        equals = this.f1229a.equals(((q) obj).getLocaleList());
        return equals;
    }

    @Override // I.q
    public Locale get(int i2) {
        Locale locale;
        locale = this.f1229a.get(i2);
        return locale;
    }

    @Override // I.q
    public Object getLocaleList() {
        return this.f1229a;
    }

    public int hashCode() {
        int hashCode;
        hashCode = this.f1229a.hashCode();
        return hashCode;
    }

    @Override // I.q
    public boolean isEmpty() {
        boolean isEmpty;
        isEmpty = this.f1229a.isEmpty();
        return isEmpty;
    }

    @Override // I.q
    public int size() {
        int size;
        size = this.f1229a.size();
        return size;
    }

    @Override // I.q
    public String toLanguageTags() {
        String languageTags;
        languageTags = this.f1229a.toLanguageTags();
        return languageTags;
    }

    public String toString() {
        String localeList;
        localeList = this.f1229a.toString();
        return localeList;
    }
}
