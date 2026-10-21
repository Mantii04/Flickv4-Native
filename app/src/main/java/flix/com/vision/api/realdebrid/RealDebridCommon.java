package flix.com.vision.api.realdebrid;

import android.util.Base64;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;

/* loaded from: classes2.dex */
public abstract class RealDebridCommon implements Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static String f15824b = "";

    /* renamed from: e, reason: collision with root package name */
    public static String f15825e = "";

    /* renamed from: f, reason: collision with root package name */
    public static String f15826f = "";

    /* renamed from: j, reason: collision with root package name */
    public static ArrayDeque f15827j = new ArrayDeque();

    /* renamed from: m, reason: collision with root package name */
    public static boolean f15828m = false;

    /* renamed from: n, reason: collision with root package name */
    public static final String f15829n;

    /* renamed from: p, reason: collision with root package name */
    public static final String f15830p;

    /* renamed from: q, reason: collision with root package name */
    public static final String f15831q;

    /* renamed from: r, reason: collision with root package name */
    public static final String f15832r;

    static {
        byte[] decode = Base64.decode("aHR0cHM6Ly9hcGkucmVhbC1kZWJyaWQuY29tL29hdXRoL3YyL2RldmljZS9jcmVkZW50aWFscz9jbGllbnRfaWQ9WDI0NUE0WEFJQkdWTSZjb2RlPQ", 0);
        Charset charset = StandardCharsets.UTF_8;
        f15829n = new String(decode, charset);
        f15830p = new String(Base64.decode("aHR0cHM6Ly9hcGkucmVhbC1kZWJyaWQuY29tL29hdXRoL3YyL2RldmljZS9jb2RlP2NsaWVudF9pZD1YMjQ1QTRYQUlCR1ZNJm5ld19jcmVkZW50aWFscz15ZXM", 0), charset);
        f15831q = new String(Base64.decode("aHR0cHM6Ly9hcGkucmVhbC1kZWJyaWQuY29tL29hdXRoL3YyL3Rva2Vu", 0), charset);
        f15832r = "LavF1";
    }
}
