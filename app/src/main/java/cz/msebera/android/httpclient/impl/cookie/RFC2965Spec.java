package cz.msebera.android.httpclient.impl.cookie;

import cz.msebera.android.httpclient.Header;
import cz.msebera.android.httpclient.HeaderElement;
import cz.msebera.android.httpclient.NameValuePair;
import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.Obsolete;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.client.params.CookiePolicy;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import cz.msebera.android.httpclient.cookie.CommonCookieAttributeHandler;
import cz.msebera.android.httpclient.cookie.Cookie;
import cz.msebera.android.httpclient.cookie.CookieAttributeHandler;
import cz.msebera.android.httpclient.cookie.CookieOrigin;
import cz.msebera.android.httpclient.cookie.CookieRestrictionViolationException;
import cz.msebera.android.httpclient.cookie.MalformedCookieException;
import cz.msebera.android.httpclient.cookie.SM;
import cz.msebera.android.httpclient.message.BufferedHeader;
import cz.msebera.android.httpclient.util.Args;
import cz.msebera.android.httpclient.util.CharArrayBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

@Obsolete
@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes2.dex */
public class RFC2965Spec extends RFC2109Spec {
    public RFC2965Spec() {
        this((String[]) null, false);
    }

    private static CookieOrigin adjustEffectiveHost(CookieOrigin cookieOrigin) {
        String host = cookieOrigin.getHost();
        for (int i2 = 0; i2 < host.length(); i2++) {
            char charAt = host.charAt(i2);
            if (charAt == '.' || charAt == ':') {
                return cookieOrigin;
            }
        }
        return new CookieOrigin(host.concat(".local"), cookieOrigin.getPort(), cookieOrigin.getPath(), cookieOrigin.isSecure());
    }

    private List<Cookie> createCookies(HeaderElement[] headerElementArr, CookieOrigin cookieOrigin) throws MalformedCookieException {
        ArrayList arrayList = new ArrayList(headerElementArr.length);
        for (HeaderElement headerElement : headerElementArr) {
            String name = headerElement.getName();
            String value = headerElement.getValue();
            if (name == null || name.isEmpty()) {
                throw new MalformedCookieException("Cookie name may not be empty");
            }
            BasicClientCookie2 basicClientCookie2 = new BasicClientCookie2(name, value);
            basicClientCookie2.setPath(CookieSpecBase.getDefaultPath(cookieOrigin));
            basicClientCookie2.setDomain(CookieSpecBase.getDefaultDomain(cookieOrigin));
            basicClientCookie2.setPorts(new int[]{cookieOrigin.getPort()});
            NameValuePair[] parameters = headerElement.getParameters();
            HashMap hashMap = new HashMap(parameters.length);
            for (int length = parameters.length - 1; length >= 0; length--) {
                NameValuePair nameValuePair = parameters[length];
                hashMap.put(nameValuePair.getName().toLowerCase(Locale.ROOT), nameValuePair);
            }
            Iterator it = hashMap.entrySet().iterator();
            while (it.hasNext()) {
                NameValuePair nameValuePair2 = (NameValuePair) ((Map.Entry) it.next()).getValue();
                String lowerCase = nameValuePair2.getName().toLowerCase(Locale.ROOT);
                basicClientCookie2.setAttribute(lowerCase, nameValuePair2.getValue());
                CookieAttributeHandler findAttribHandler = findAttribHandler(lowerCase);
                if (findAttribHandler != null) {
                    findAttribHandler.parse(basicClientCookie2, nameValuePair2.getValue());
                }
            }
            arrayList.add(basicClientCookie2);
        }
        return arrayList;
    }

    @Override // cz.msebera.android.httpclient.impl.cookie.RFC2109Spec
    public void formatCookieAsVer(CharArrayBuffer charArrayBuffer, Cookie cookie, int i2) {
        String attribute;
        int[] ports;
        super.formatCookieAsVer(charArrayBuffer, cookie, i2);
        if (!(cookie instanceof ClientCookie) || (attribute = ((ClientCookie) cookie).getAttribute(ClientCookie.PORT_ATTR)) == null) {
            return;
        }
        charArrayBuffer.append("; $Port");
        charArrayBuffer.append("=\"");
        if (!attribute.trim().isEmpty() && (ports = cookie.getPorts()) != null) {
            int length = ports.length;
            for (int i7 = 0; i7 < length; i7++) {
                if (i7 > 0) {
                    charArrayBuffer.append(",");
                }
                charArrayBuffer.append(Integer.toString(ports[i7]));
            }
        }
        charArrayBuffer.append("\"");
    }

    @Override // cz.msebera.android.httpclient.impl.cookie.RFC2109Spec, cz.msebera.android.httpclient.cookie.CookieSpec
    public int getVersion() {
        return 1;
    }

    @Override // cz.msebera.android.httpclient.impl.cookie.RFC2109Spec, cz.msebera.android.httpclient.cookie.CookieSpec
    public Header getVersionHeader() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(40);
        charArrayBuffer.append(SM.COOKIE2);
        charArrayBuffer.append(": ");
        charArrayBuffer.append("$Version=");
        charArrayBuffer.append(Integer.toString(getVersion()));
        return new BufferedHeader(charArrayBuffer);
    }

    @Override // cz.msebera.android.httpclient.impl.cookie.CookieSpecBase, cz.msebera.android.httpclient.cookie.CookieSpec
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, SM.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        return super.match(cookie, adjustEffectiveHost(cookieOrigin));
    }

    @Override // cz.msebera.android.httpclient.impl.cookie.RFC2109Spec, cz.msebera.android.httpclient.cookie.CookieSpec
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(header, "Header");
        Args.notNull(cookieOrigin, "Cookie origin");
        if (header.getName().equalsIgnoreCase(SM.SET_COOKIE2)) {
            return createCookies(header.getElements(), adjustEffectiveHost(cookieOrigin));
        }
        throw new MalformedCookieException("Unrecognized cookie header '" + header.toString() + "'");
    }

    @Override // cz.msebera.android.httpclient.impl.cookie.RFC2109Spec
    public String toString() {
        return CookiePolicy.RFC_2965;
    }

    @Override // cz.msebera.android.httpclient.impl.cookie.RFC2109Spec, cz.msebera.android.httpclient.impl.cookie.CookieSpecBase, cz.msebera.android.httpclient.cookie.CookieSpec
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(cookie, SM.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        super.validate(cookie, adjustEffectiveHost(cookieOrigin));
    }

    public RFC2965Spec(String[] strArr, boolean z6) {
        super(z6, new RFC2965VersionAttributeHandler(), new BasicPathHandler() { // from class: cz.msebera.android.httpclient.impl.cookie.RFC2965Spec.1
            @Override // cz.msebera.android.httpclient.impl.cookie.BasicPathHandler, cz.msebera.android.httpclient.cookie.CookieAttributeHandler
            public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
                if (match(cookie, cookieOrigin)) {
                    return;
                }
                throw new CookieRestrictionViolationException("Illegal 'path' attribute \"" + cookie.getPath() + "\". Path of origin: \"" + cookieOrigin.getPath() + "\"");
            }
        }, new RFC2965DomainAttributeHandler(), new RFC2965PortAttributeHandler(), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicCommentHandler(), new BasicExpiresHandler(strArr != null ? (String[]) strArr.clone() : RFC2109Spec.DATE_PATTERNS), new RFC2965CommentUrlAttributeHandler(), new RFC2965DiscardAttributeHandler());
    }

    public RFC2965Spec(boolean z6, CommonCookieAttributeHandler... commonCookieAttributeHandlerArr) {
        super(z6, commonCookieAttributeHandlerArr);
    }

    @Override // cz.msebera.android.httpclient.impl.cookie.CookieSpecBase
    public List<Cookie> parse(HeaderElement[] headerElementArr, CookieOrigin cookieOrigin) throws MalformedCookieException {
        return createCookies(headerElementArr, adjustEffectiveHost(cookieOrigin));
    }
}
