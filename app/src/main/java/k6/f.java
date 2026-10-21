package k6;

import androidx.media3.common.MimeTypes;
import androidx.media3.datasource.DataSchemeDataSource;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: j, reason: collision with root package name */
    public static final HashMap f17352j = new HashMap();

    /* renamed from: k, reason: collision with root package name */
    public static final String[] f17353k;

    /* renamed from: l, reason: collision with root package name */
    public static final String[] f17354l;

    /* renamed from: m, reason: collision with root package name */
    public static final String[] f17355m;

    /* renamed from: n, reason: collision with root package name */
    public static final String[] f17356n;

    /* renamed from: o, reason: collision with root package name */
    public static final String[] f17357o;

    /* renamed from: p, reason: collision with root package name */
    public static final String[] f17358p;

    /* renamed from: a, reason: collision with root package name */
    public final String f17359a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f17360b = true;

    /* renamed from: c, reason: collision with root package name */
    public boolean f17361c = true;

    /* renamed from: d, reason: collision with root package name */
    public boolean f17362d = true;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17363e = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17364f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f17365g = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean f17366h = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f17367i = false;

    static {
        String[] strArr = {"html", "head", "body", "frameset", "script", "noscript", "style", "meta", "link", "title", "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", "p", "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", "div", "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", CmcdConfiguration.KEY_DEADLINE, "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", MimeTypes.BASE_TYPE_VIDEO, MimeTypes.BASE_TYPE_AUDIO, "canvas", "details", "menu", "plaintext", "template", "article", "main", "svg", "math"};
        f17353k = new String[]{"object", "base", "font", "tt", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "img", CmcdConfiguration.KEY_BITRATE, "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", "label", "button", "optgroup", "option", "legend", "datalist", "keygen", "output", "progress", "meter", "area", "param", FirebaseAnalytics.Param.SOURCE, "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", FirebaseAnalytics.Param.SOURCE, "track", DataSchemeDataSource.SCHEME_DATA, "bdi", CmcdData.STREAMING_FORMAT_SS};
        f17354l = new String[]{"meta", "link", "base", "frame", "img", CmcdConfiguration.KEY_BITRATE, "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", FirebaseAnalytics.Param.SOURCE, "track"};
        f17355m = new String[]{"title", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "p", "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style", "ins", "del", CmcdData.STREAMING_FORMAT_SS};
        f17356n = new String[]{"pre", "plaintext", "title", "textarea"};
        f17357o = new String[]{"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};
        f17358p = new String[]{"input", "keygen", "object", "select", "textarea"};
        for (int i2 = 0; i2 < 63; i2++) {
            String str = strArr[i2];
            f17352j.put(str, new f(str));
        }
        for (String str2 : f17353k) {
            f fVar = new f(str2);
            fVar.f17360b = false;
            fVar.f17361c = false;
            f17352j.put(str2, fVar);
        }
        for (String str3 : f17354l) {
            f fVar2 = (f) f17352j.get(str3);
            h6.k.notNull(fVar2);
            fVar2.f17362d = false;
            fVar2.f17363e = true;
        }
        for (String str4 : f17355m) {
            f fVar3 = (f) f17352j.get(str4);
            h6.k.notNull(fVar3);
            fVar3.f17361c = false;
        }
        for (String str5 : f17356n) {
            f fVar4 = (f) f17352j.get(str5);
            h6.k.notNull(fVar4);
            fVar4.f17365g = true;
        }
        for (String str6 : f17357o) {
            f fVar5 = (f) f17352j.get(str6);
            h6.k.notNull(fVar5);
            fVar5.f17366h = true;
        }
        for (String str7 : f17358p) {
            f fVar6 = (f) f17352j.get(str7);
            h6.k.notNull(fVar6);
            fVar6.f17367i = true;
        }
    }

    public f(String str) {
        this.f17359a = str;
    }

    public static f valueOf(String str, d dVar) {
        h6.k.notNull(str);
        HashMap hashMap = f17352j;
        f fVar = (f) hashMap.get(str);
        if (fVar != null) {
            return fVar;
        }
        String a7 = dVar.a(str);
        h6.k.notEmpty(a7);
        f fVar2 = (f) hashMap.get(a7);
        if (fVar2 != null) {
            return fVar2;
        }
        f fVar3 = new f(a7);
        fVar3.f17360b = false;
        return fVar3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f17359a.equals(fVar.f17359a) && this.f17362d == fVar.f17362d && this.f17363e == fVar.f17363e && this.f17361c == fVar.f17361c && this.f17360b == fVar.f17360b && this.f17365g == fVar.f17365g && this.f17364f == fVar.f17364f && this.f17366h == fVar.f17366h && this.f17367i == fVar.f17367i;
    }

    public boolean formatAsBlock() {
        return this.f17361c;
    }

    public String getName() {
        return this.f17359a;
    }

    public int hashCode() {
        return (((((((((((((((this.f17359a.hashCode() * 31) + (this.f17360b ? 1 : 0)) * 31) + (this.f17361c ? 1 : 0)) * 31) + (this.f17362d ? 1 : 0)) * 31) + (this.f17363e ? 1 : 0)) * 31) + (this.f17364f ? 1 : 0)) * 31) + (this.f17365g ? 1 : 0)) * 31) + (this.f17366h ? 1 : 0)) * 31) + (this.f17367i ? 1 : 0);
    }

    public boolean isBlock() {
        return this.f17360b;
    }

    public boolean isEmpty() {
        return this.f17363e;
    }

    public boolean isFormListed() {
        return this.f17366h;
    }

    public boolean isKnownTag() {
        return f17352j.containsKey(this.f17359a);
    }

    public boolean isSelfClosing() {
        return this.f17363e || this.f17364f;
    }

    public boolean preserveWhitespace() {
        return this.f17365g;
    }

    public String toString() {
        return this.f17359a;
    }

    public static f valueOf(String str) {
        return valueOf(str, d.f17346d);
    }
}
