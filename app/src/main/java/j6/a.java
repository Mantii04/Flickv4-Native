package j6;

import cz.msebera.android.httpclient.client.config.CookieSpecs;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.apache.commons.lang3.concurrent.AbstractCircuitBreaker;
import org.jsoup.SerializationException;
import org.jsoup.nodes.Document$OutputSettings$Syntax;

/* loaded from: classes2.dex */
public class a implements Map.Entry, Cloneable {

    /* renamed from: j, reason: collision with root package name */
    public static final String[] f17003j = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", CookieSpecs.DEFAULT, "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", AbstractCircuitBreaker.PROPERTY_NAME, "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};

    /* renamed from: b, reason: collision with root package name */
    public final String f17004b;

    /* renamed from: e, reason: collision with root package name */
    public String f17005e;

    /* renamed from: f, reason: collision with root package name */
    public c f17006f;

    public a(String str, String str2) {
        this(str, str2, null);
    }

    public static boolean isBooleanAttribute(String str) {
        return Arrays.binarySearch(f17003j, str) >= 0;
    }

    public static boolean shouldCollapseAttribute(String str, String str2, org.jsoup.nodes.a aVar) {
        if (aVar.syntax() != Document$OutputSettings$Syntax.f19183b) {
            return false;
        }
        if (str2 != null) {
            return ("".equals(str2) || str2.equalsIgnoreCase(str)) && isBooleanAttribute(str);
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            a aVar = (a) obj;
            String str = aVar.f17004b;
            String str2 = this.f17004b;
            if (str2 == null ? str != null : !str2.equals(str)) {
                return false;
            }
            String str3 = this.f17005e;
            String str4 = aVar.f17005e;
            if (str3 != null) {
                return str3.equals(str4);
            }
            if (str4 == null) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        String str = this.f17004b;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f17005e;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String html() {
        StringBuilder sb = new StringBuilder();
        try {
            html(sb, new h("").outputSettings());
            return sb.toString();
        } catch (IOException e3) {
            throw new SerializationException(e3);
        }
    }

    public String toString() {
        return html();
    }

    public a(String str, String str2, c cVar) {
        h6.k.notNull(str);
        this.f17004b = str.trim();
        h6.k.notEmpty(str);
        this.f17005e = str2;
        this.f17006f = cVar;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public a m100clone() {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Override // java.util.Map.Entry
    public String getKey() {
        return this.f17004b;
    }

    @Override // java.util.Map.Entry
    public String getValue() {
        return this.f17005e;
    }

    @Override // java.util.Map.Entry
    public String setValue(String str) {
        int c7;
        c cVar = this.f17006f;
        String str2 = this.f17004b;
        String str3 = cVar.get(str2);
        c cVar2 = this.f17006f;
        if (cVar2 != null && (c7 = cVar2.c(str2)) != -1) {
            this.f17006f.f17012f[c7] = str;
        }
        this.f17005e = str;
        return str3;
    }

    public static void html(String str, String str2, Appendable appendable, org.jsoup.nodes.a aVar) throws IOException {
        appendable.append(str);
        if (shouldCollapseAttribute(str, str2, aVar)) {
            return;
        }
        appendable.append("=\"");
        if (str2 == null) {
            str2 = "";
        }
        k.b(appendable, str2, aVar, true, false);
        appendable.append('\"');
    }

    public void html(Appendable appendable, org.jsoup.nodes.a aVar) throws IOException {
        html(this.f17004b, this.f17005e, appendable, aVar);
    }
}
