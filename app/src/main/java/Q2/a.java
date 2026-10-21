package Q2;

import S2.r;
import com.bumptech.glide.f;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class a implements r {

    /* renamed from: c, reason: collision with root package name */
    public static final String f2833c;

    /* renamed from: d, reason: collision with root package name */
    public static final Set f2834d;

    /* renamed from: e, reason: collision with root package name */
    public static final a f2835e;

    /* renamed from: f, reason: collision with root package name */
    public static final a f2836f;

    /* renamed from: a, reason: collision with root package name */
    public final String f2837a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2838b;

    static {
        String f3 = f.f("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f2833c = f3;
        String f7 = f.f("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        String f8 = f.f("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f2834d = Collections.unmodifiableSet(new HashSet(Arrays.asList(P2.b.of("proto"), P2.b.of("json"))));
        f2835e = new a(f3, null);
        f2836f = new a(f7, f8);
    }

    public a(String str, String str2) {
        this.f2837a = str;
        this.f2838b = str2;
    }

    public static a fromByteArray(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
        if (split.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = split[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = split[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new a(str2, str3);
    }

    public byte[] asByteArray() {
        String str = this.f2837a;
        String str2 = this.f2838b;
        if (str2 == null && str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = "";
        }
        return b.c.l("1$", str, "\\", str2).getBytes(Charset.forName("UTF-8"));
    }

    public String getAPIKey() {
        return this.f2838b;
    }

    public String getEndPoint() {
        return this.f2837a;
    }

    public byte[] getExtras() {
        return asByteArray();
    }

    public String getName() {
        return "cct";
    }

    public Set<P2.b> getSupportedEncodings() {
        return f2834d;
    }
}
