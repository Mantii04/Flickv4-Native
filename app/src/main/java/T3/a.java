package T3;

import P0.y;
import P3.AbstractC0226a;
import P3.o;
import P3.q;
import P3.r;
import P3.u;
import androidx.media3.common.MimeTypes;
import com.fasterxml.jackson.core.JsonPointer;
import com.google.common.base.Optional;
import com.google.common.collect.C;
import com.google.common.collect.F;
import com.google.common.collect.ImmutableListMultimap;
import cz.msebera.android.httpclient.entity.mime.MIME;
import cz.msebera.android.httpclient.message.TokenParser;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: f, reason: collision with root package name */
    public static final ImmutableListMultimap f3674f = ImmutableListMultimap.of("charset", AbstractC0226a.toLowerCase(StandardCharsets.UTF_8.name()));

    /* renamed from: g, reason: collision with root package name */
    public static final o f3675g = o.ascii().and(o.javaIsoControl().negate()).and(o.isNot(TokenParser.SP)).and(o.noneOf("()<>@,;:\\\"/[]?="));

    /* renamed from: h, reason: collision with root package name */
    public static final HashMap f3676h;

    /* renamed from: i, reason: collision with root package name */
    public static final a f3677i;

    /* renamed from: j, reason: collision with root package name */
    public static final q f3678j;

    /* renamed from: a, reason: collision with root package name */
    public final String f3679a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3680b;

    /* renamed from: c, reason: collision with root package name */
    public final ImmutableListMultimap f3681c;

    /* renamed from: d, reason: collision with root package name */
    public String f3682d;

    /* renamed from: e, reason: collision with root package name */
    public int f3683e;

    static {
        o.ascii().and(o.noneOf("\"\\\r"));
        o.anyOf(" \t\r\n");
        f3676h = C.newHashMap();
        a("*", "*");
        a(MimeTypes.BASE_TYPE_TEXT, "*");
        a(MimeTypes.BASE_TYPE_IMAGE, "*");
        a(MimeTypes.BASE_TYPE_AUDIO, "*");
        a(MimeTypes.BASE_TYPE_VIDEO, "*");
        a(MimeTypes.BASE_TYPE_APPLICATION, "*");
        a("font", "*");
        b(MimeTypes.BASE_TYPE_TEXT, "cache-manifest");
        b(MimeTypes.BASE_TYPE_TEXT, "css");
        b(MimeTypes.BASE_TYPE_TEXT, "csv");
        b(MimeTypes.BASE_TYPE_TEXT, "html");
        b(MimeTypes.BASE_TYPE_TEXT, "calendar");
        b(MimeTypes.BASE_TYPE_TEXT, "markdown");
        b(MimeTypes.BASE_TYPE_TEXT, "plain");
        b(MimeTypes.BASE_TYPE_TEXT, "javascript");
        b(MimeTypes.BASE_TYPE_TEXT, "tab-separated-values");
        b(MimeTypes.BASE_TYPE_TEXT, "vcard");
        b(MimeTypes.BASE_TYPE_TEXT, "vnd.wap.wml");
        b(MimeTypes.BASE_TYPE_TEXT, "xml");
        b(MimeTypes.BASE_TYPE_TEXT, "vtt");
        a(MimeTypes.BASE_TYPE_IMAGE, "bmp");
        a(MimeTypes.BASE_TYPE_IMAGE, "x-canon-crw");
        a(MimeTypes.BASE_TYPE_IMAGE, "gif");
        a(MimeTypes.BASE_TYPE_IMAGE, "vnd.microsoft.icon");
        a(MimeTypes.BASE_TYPE_IMAGE, "jpeg");
        a(MimeTypes.BASE_TYPE_IMAGE, "png");
        a(MimeTypes.BASE_TYPE_IMAGE, "vnd.adobe.photoshop");
        b(MimeTypes.BASE_TYPE_IMAGE, "svg+xml");
        a(MimeTypes.BASE_TYPE_IMAGE, "tiff");
        a(MimeTypes.BASE_TYPE_IMAGE, "webp");
        a(MimeTypes.BASE_TYPE_IMAGE, "heif");
        a(MimeTypes.BASE_TYPE_IMAGE, "jp2");
        a(MimeTypes.BASE_TYPE_AUDIO, "mp4");
        a(MimeTypes.BASE_TYPE_AUDIO, "mpeg");
        a(MimeTypes.BASE_TYPE_AUDIO, "ogg");
        a(MimeTypes.BASE_TYPE_AUDIO, "webm");
        a(MimeTypes.BASE_TYPE_AUDIO, "l16");
        a(MimeTypes.BASE_TYPE_AUDIO, "l24");
        a(MimeTypes.BASE_TYPE_AUDIO, "basic");
        a(MimeTypes.BASE_TYPE_AUDIO, "aac");
        a(MimeTypes.BASE_TYPE_AUDIO, "vorbis");
        a(MimeTypes.BASE_TYPE_AUDIO, "x-ms-wma");
        a(MimeTypes.BASE_TYPE_AUDIO, "x-ms-wax");
        a(MimeTypes.BASE_TYPE_AUDIO, "vnd.rn-realaudio");
        a(MimeTypes.BASE_TYPE_AUDIO, "vnd.wave");
        a(MimeTypes.BASE_TYPE_VIDEO, "mp4");
        a(MimeTypes.BASE_TYPE_VIDEO, "mpeg");
        a(MimeTypes.BASE_TYPE_VIDEO, "ogg");
        a(MimeTypes.BASE_TYPE_VIDEO, "quicktime");
        a(MimeTypes.BASE_TYPE_VIDEO, "webm");
        a(MimeTypes.BASE_TYPE_VIDEO, "x-ms-wmv");
        a(MimeTypes.BASE_TYPE_VIDEO, "x-flv");
        a(MimeTypes.BASE_TYPE_VIDEO, "3gpp");
        a(MimeTypes.BASE_TYPE_VIDEO, "3gpp2");
        b(MimeTypes.BASE_TYPE_APPLICATION, "xml");
        b(MimeTypes.BASE_TYPE_APPLICATION, "atom+xml");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-bzip2");
        b(MimeTypes.BASE_TYPE_APPLICATION, "dart");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.apple.pkpass");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.ms-fontobject");
        a(MimeTypes.BASE_TYPE_APPLICATION, "epub+zip");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-www-form-urlencoded");
        a(MimeTypes.BASE_TYPE_APPLICATION, "pkcs12");
        a(MimeTypes.BASE_TYPE_APPLICATION, MIME.ENC_BINARY);
        a(MimeTypes.BASE_TYPE_APPLICATION, "geo+json");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-gzip");
        a(MimeTypes.BASE_TYPE_APPLICATION, "hal+json");
        b(MimeTypes.BASE_TYPE_APPLICATION, "javascript");
        a(MimeTypes.BASE_TYPE_APPLICATION, "jose");
        a(MimeTypes.BASE_TYPE_APPLICATION, "jose+json");
        f3677i = b(MimeTypes.BASE_TYPE_APPLICATION, "json");
        a(MimeTypes.BASE_TYPE_APPLICATION, "jwt");
        b(MimeTypes.BASE_TYPE_APPLICATION, "manifest+json");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.google-earth.kml+xml");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.google-earth.kmz");
        a(MimeTypes.BASE_TYPE_APPLICATION, "mbox");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-apple-aspen-config");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.ms-excel");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.ms-outlook");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.ms-powerpoint");
        a(MimeTypes.BASE_TYPE_APPLICATION, "msword");
        a(MimeTypes.BASE_TYPE_APPLICATION, "dash+xml");
        a(MimeTypes.BASE_TYPE_APPLICATION, "wasm");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-nacl");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-pnacl");
        a(MimeTypes.BASE_TYPE_APPLICATION, "octet-stream");
        a(MimeTypes.BASE_TYPE_APPLICATION, "ogg");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.openxmlformats-officedocument.wordprocessingml.document");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.openxmlformats-officedocument.presentationml.presentation");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.oasis.opendocument.graphics");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.oasis.opendocument.presentation");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.oasis.opendocument.spreadsheet");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.oasis.opendocument.text");
        b(MimeTypes.BASE_TYPE_APPLICATION, "opensearchdescription+xml");
        a(MimeTypes.BASE_TYPE_APPLICATION, "pdf");
        a(MimeTypes.BASE_TYPE_APPLICATION, "postscript");
        a(MimeTypes.BASE_TYPE_APPLICATION, "protobuf");
        b(MimeTypes.BASE_TYPE_APPLICATION, "rdf+xml");
        b(MimeTypes.BASE_TYPE_APPLICATION, "rtf");
        a(MimeTypes.BASE_TYPE_APPLICATION, "font-sfnt");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-shockwave-flash");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.sketchup.skp");
        b(MimeTypes.BASE_TYPE_APPLICATION, "soap+xml");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-tar");
        a(MimeTypes.BASE_TYPE_APPLICATION, "font-woff");
        a(MimeTypes.BASE_TYPE_APPLICATION, "font-woff2");
        b(MimeTypes.BASE_TYPE_APPLICATION, "xhtml+xml");
        b(MimeTypes.BASE_TYPE_APPLICATION, "xrd+xml");
        a(MimeTypes.BASE_TYPE_APPLICATION, "zip");
        a("font", "collection");
        a("font", "otf");
        a("font", "sfnt");
        a("font", "ttf");
        a("font", "woff");
        a("font", "woff2");
        f3678j = r.on("; ").withKeyValueSeparator("=");
    }

    public a(String str, String str2, ImmutableListMultimap immutableListMultimap) {
        this.f3679a = str;
        this.f3680b = str2;
        this.f3681c = immutableListMultimap;
    }

    public static void a(String str, String str2) {
        a aVar = new a(str, str2, ImmutableListMultimap.of());
        f3676h.put(aVar, aVar);
        Optional.absent();
    }

    public static a b(String str, String str2) {
        a aVar = new a(str, str2, f3674f);
        f3676h.put(aVar, aVar);
        Optional.of(StandardCharsets.UTF_8);
        return aVar;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f3679a.equals(aVar.f3679a) && this.f3680b.equals(aVar.f3680b) && C.transformValues(this.f3681c.asMap(), new y(4)).equals(C.transformValues(aVar.f3681c.asMap(), new y(4)));
    }

    public int hashCode() {
        int i2 = this.f3683e;
        if (i2 != 0) {
            return i2;
        }
        int hashCode = u.hashCode(this.f3679a, this.f3680b, C.transformValues(this.f3681c.asMap(), new y(4)));
        this.f3683e = hashCode;
        return hashCode;
    }

    public String toString() {
        String str = this.f3682d;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f3679a);
        sb.append(JsonPointer.SEPARATOR);
        sb.append(this.f3680b);
        ImmutableListMultimap immutableListMultimap = this.f3681c;
        if (!immutableListMultimap.isEmpty()) {
            sb.append("; ");
            f3678j.appendTo(sb, F.transformValues(immutableListMultimap, new y(3)).entries());
        }
        String sb2 = sb.toString();
        this.f3682d = sb2;
        return sb2;
    }
}
