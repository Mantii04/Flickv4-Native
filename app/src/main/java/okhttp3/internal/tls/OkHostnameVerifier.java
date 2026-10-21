package okhttp3.internal.tls;

import e6.P;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import kotlin.jvm.internal.j;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import org.apache.commons.lang3.ClassUtils;
import v5.p;
import v5.u;

/* loaded from: classes2.dex */
public final class OkHostnameVerifier implements HostnameVerifier {
    private static final int ALT_DNS_NAME = 2;
    private static final int ALT_IPA_NAME = 7;
    public static final OkHostnameVerifier INSTANCE = new OkHostnameVerifier();

    private OkHostnameVerifier() {
    }

    private final String asciiToLowercase(String str) {
        if (!isAscii(str)) {
            return str;
        }
        Locale US = Locale.US;
        j.checkNotNullExpressionValue(US, "US");
        String lowerCase = str.toLowerCase(US);
        j.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    private final List<String> getSubjectAltNames(X509Certificate x509Certificate, int i2) {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return p.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && j.areEqual(list.get(0), Integer.valueOf(i2)) && (obj = list.get(1)) != null) {
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return p.emptyList();
        }
    }

    private final boolean isAscii(String str) {
        return str.length() == ((int) P.size$default(str, 0, 0, 3, null));
    }

    private final boolean verifyHostname(String str, X509Certificate x509Certificate) {
        String asciiToLowercase = asciiToLowercase(str);
        List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 2);
        if ((subjectAltNames instanceof Collection) && subjectAltNames.isEmpty()) {
            return false;
        }
        Iterator<T> it = subjectAltNames.iterator();
        while (it.hasNext()) {
            if (INSTANCE.verifyHostname(asciiToLowercase, (String) it.next())) {
                return true;
            }
        }
        return false;
    }

    private final boolean verifyIpAddress(String str, X509Certificate x509Certificate) {
        String canonicalHost = HostnamesKt.toCanonicalHost(str);
        List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 7);
        if ((subjectAltNames instanceof Collection) && subjectAltNames.isEmpty()) {
            return false;
        }
        Iterator<T> it = subjectAltNames.iterator();
        while (it.hasNext()) {
            if (j.areEqual(canonicalHost, HostnamesKt.toCanonicalHost((String) it.next()))) {
                return true;
            }
        }
        return false;
    }

    public final List<String> allSubjectAltNames(X509Certificate certificate) {
        j.checkNotNullParameter(certificate, "certificate");
        return u.plus((Collection) getSubjectAltNames(certificate, 7), (Iterable) getSubjectAltNames(certificate, 2));
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String host, SSLSession session) {
        j.checkNotNullParameter(host, "host");
        j.checkNotNullParameter(session, "session");
        if (!isAscii(host)) {
            return false;
        }
        try {
            Certificate certificate = session.getPeerCertificates()[0];
            j.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            return verify(host, (X509Certificate) certificate);
        } catch (SSLException unused) {
            return false;
        }
    }

    public final boolean verify(String host, X509Certificate certificate) {
        j.checkNotNullParameter(host, "host");
        j.checkNotNullParameter(certificate, "certificate");
        return Util.canParseAsIpAddress(host) ? verifyIpAddress(host, certificate) : verifyHostname(host, certificate);
    }

    private final boolean verifyHostname(String str, String str2) {
        if (str != null && str.length() != 0 && !P5.p.startsWith$default(str, ".", false, 2, null) && !P5.p.endsWith$default(str, "..", false, 2, null) && str2 != null && str2.length() != 0 && !P5.p.startsWith$default(str2, ".", false, 2, null) && !P5.p.endsWith$default(str2, "..", false, 2, null)) {
            if (!P5.p.endsWith$default(str, ".", false, 2, null)) {
                str = str + ClassUtils.PACKAGE_SEPARATOR_CHAR;
            }
            String str3 = str;
            if (!P5.p.endsWith$default(str2, ".", false, 2, null)) {
                str2 = str2 + ClassUtils.PACKAGE_SEPARATOR_CHAR;
            }
            String asciiToLowercase = asciiToLowercase(str2);
            if (!StringsKt__StringsKt.contains$default((CharSequence) asciiToLowercase, (CharSequence) "*", false, 2, (Object) null)) {
                return j.areEqual(str3, asciiToLowercase);
            }
            if (!P5.p.startsWith$default(asciiToLowercase, "*.", false, 2, null) || StringsKt__StringsKt.indexOf$default((CharSequence) asciiToLowercase, '*', 1, false, 4, (Object) null) != -1 || str3.length() < asciiToLowercase.length() || j.areEqual("*.", asciiToLowercase)) {
                return false;
            }
            String substring = asciiToLowercase.substring(1);
            j.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            if (!P5.p.endsWith$default(str3, substring, false, 2, null)) {
                return false;
            }
            int length = str3.length() - substring.length();
            return length <= 0 || StringsKt__StringsKt.lastIndexOf$default((CharSequence) str3, ClassUtils.PACKAGE_SEPARATOR_CHAR, length + (-1), false, 4, (Object) null) == -1;
        }
        return false;
    }
}
