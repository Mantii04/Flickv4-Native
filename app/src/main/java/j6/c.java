package j6;

import cz.msebera.android.httpclient.message.TokenParser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jsoup.SerializationException;

/* loaded from: classes2.dex */
public final class c implements Iterable, Cloneable {

    /* renamed from: j, reason: collision with root package name */
    public static final String[] f17009j = new String[0];

    /* renamed from: b, reason: collision with root package name */
    public int f17010b = 0;

    /* renamed from: e, reason: collision with root package name */
    public String[] f17011e;

    /* renamed from: f, reason: collision with root package name */
    public String[] f17012f;

    public c() {
        String[] strArr = f17009j;
        this.f17011e = strArr;
        this.f17012f = strArr;
    }

    public final void a(int i2) {
        h6.k.isTrue(i2 >= this.f17010b);
        String[] strArr = this.f17011e;
        int length = strArr.length;
        if (length >= i2) {
            return;
        }
        int i7 = length >= 4 ? this.f17010b * 2 : 4;
        if (i2 <= i7) {
            i2 = i7;
        }
        String[] strArr2 = new String[i2];
        System.arraycopy(strArr, 0, strArr2, 0, Math.min(strArr.length, i2));
        this.f17011e = strArr2;
        String[] strArr3 = this.f17012f;
        String[] strArr4 = new String[i2];
        System.arraycopy(strArr3, 0, strArr4, 0, Math.min(strArr3.length, i2));
        this.f17012f = strArr4;
    }

    public void addAll(c cVar) {
        if (cVar.size() == 0) {
            return;
        }
        a(this.f17010b + cVar.f17010b);
        Iterator<a> it = cVar.iterator();
        while (it.hasNext()) {
            put(it.next());
        }
    }

    public List<a> asList() {
        ArrayList arrayList = new ArrayList(this.f17010b);
        for (int i2 = 0; i2 < this.f17010b; i2++) {
            String str = this.f17012f[i2];
            arrayList.add(str == null ? new d(this.f17011e[i2]) : new a(this.f17011e[i2], str, this));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final void b(Appendable appendable, org.jsoup.nodes.a aVar) {
        int i2 = this.f17010b;
        for (int i7 = 0; i7 < i2; i7++) {
            String str = this.f17011e[i7];
            String str2 = this.f17012f[i7];
            appendable.append(TokenParser.SP).append(str);
            if (!a.shouldCollapseAttribute(str, str2, aVar)) {
                appendable.append("=\"");
                if (str2 == null) {
                    str2 = "";
                }
                k.b(appendable, str2, aVar, true, false);
                appendable.append('\"');
            }
        }
    }

    public final int c(String str) {
        h6.k.notNull(str);
        for (int i2 = 0; i2 < this.f17010b; i2++) {
            if (str.equals(this.f17011e[i2])) {
                return i2;
            }
        }
        return -1;
    }

    public final int d(String str) {
        h6.k.notNull(str);
        for (int i2 = 0; i2 < this.f17010b; i2++) {
            if (str.equalsIgnoreCase(this.f17011e[i2])) {
                return i2;
            }
        }
        return -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f17010b == cVar.f17010b && Arrays.equals(this.f17011e, cVar.f17011e)) {
            return Arrays.equals(this.f17012f, cVar.f17012f);
        }
        return false;
    }

    public String get(String str) {
        String str2;
        int c7 = c(str);
        return (c7 == -1 || (str2 = this.f17012f[c7]) == null) ? "" : str2;
    }

    public String getIgnoreCase(String str) {
        String str2;
        int d7 = d(str);
        return (d7 == -1 || (str2 = this.f17012f[d7]) == null) ? "" : str2;
    }

    public boolean hasKey(String str) {
        return c(str) != -1;
    }

    public boolean hasKeyIgnoreCase(String str) {
        return d(str) != -1;
    }

    public int hashCode() {
        return (((this.f17010b * 31) + Arrays.hashCode(this.f17011e)) * 31) + Arrays.hashCode(this.f17012f);
    }

    public String html() {
        StringBuilder sb = new StringBuilder();
        try {
            b(sb, new h("").outputSettings());
            return sb.toString();
        } catch (IOException e3) {
            throw new SerializationException(e3);
        }
    }

    @Override // java.lang.Iterable
    public Iterator<a> iterator() {
        return new b(this);
    }

    public void normalize() {
        for (int i2 = 0; i2 < this.f17010b; i2++) {
            String[] strArr = this.f17011e;
            strArr[i2] = i6.b.lowerCase(strArr[i2]);
        }
    }

    public c put(String str, String str2) {
        int c7 = c(str);
        if (c7 != -1) {
            this.f17012f[c7] = str2;
            return this;
        }
        a(this.f17010b + 1);
        String[] strArr = this.f17011e;
        int i2 = this.f17010b;
        strArr[i2] = str;
        this.f17012f[i2] = str2;
        this.f17010b = i2 + 1;
        return this;
    }

    public int size() {
        return this.f17010b;
    }

    public String toString() {
        return html();
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public c m101clone() {
        try {
            c cVar = (c) super.clone();
            cVar.f17010b = this.f17010b;
            String[] strArr = this.f17011e;
            int i2 = this.f17010b;
            String[] strArr2 = new String[i2];
            System.arraycopy(strArr, 0, strArr2, 0, Math.min(strArr.length, i2));
            this.f17011e = strArr2;
            String[] strArr3 = this.f17012f;
            int i7 = this.f17010b;
            String[] strArr4 = new String[i7];
            System.arraycopy(strArr3, 0, strArr4, 0, Math.min(strArr3.length, i7));
            this.f17012f = strArr4;
            return cVar;
        } catch (CloneNotSupportedException e3) {
            throw new RuntimeException(e3);
        }
    }

    public c put(a aVar) {
        h6.k.notNull(aVar);
        put(aVar.getKey(), aVar.getValue());
        aVar.f17006f = this;
        return this;
    }
}
