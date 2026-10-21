package cz.msebera.android.httpclient.impl.auth;

import A.i;
import cz.msebera.android.httpclient.Consts;
import cz.msebera.android.httpclient.Header;
import cz.msebera.android.httpclient.HttpEntity;
import cz.msebera.android.httpclient.HttpEntityEnclosingRequest;
import cz.msebera.android.httpclient.HttpRequest;
import cz.msebera.android.httpclient.NameValuePair;
import cz.msebera.android.httpclient.auth.AuthenticationException;
import cz.msebera.android.httpclient.auth.ChallengeState;
import cz.msebera.android.httpclient.auth.Credentials;
import cz.msebera.android.httpclient.auth.MalformedChallengeException;
import cz.msebera.android.httpclient.message.BasicHeaderValueFormatter;
import cz.msebera.android.httpclient.message.BasicNameValuePair;
import cz.msebera.android.httpclient.message.BufferedHeader;
import cz.msebera.android.httpclient.protocol.BasicHttpContext;
import cz.msebera.android.httpclient.protocol.HttpContext;
import cz.msebera.android.httpclient.util.Args;
import cz.msebera.android.httpclient.util.CharArrayBuffer;
import cz.msebera.android.httpclient.util.EncodingUtils;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.HashSet;
import java.util.Locale;
import java.util.StringTokenizer;

/* loaded from: classes2.dex */
public class DigestScheme extends RFC2617Scheme {
    private static final char[] HEXADECIMAL = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final int QOP_AUTH = 2;
    private static final int QOP_AUTH_INT = 1;
    private static final int QOP_MISSING = 0;
    private static final int QOP_UNKNOWN = -1;
    private static final long serialVersionUID = 3883908186234566916L;

    /* renamed from: a1, reason: collision with root package name */
    private String f13474a1;

    /* renamed from: a2, reason: collision with root package name */
    private String f13475a2;
    private String cnonce;
    private boolean complete;
    private String lastNonce;
    private long nounceCount;

    public DigestScheme(Charset charset) {
        super(charset);
        this.complete = false;
    }

    public static String createCnonce() {
        byte[] bArr = new byte[8];
        new SecureRandom().nextBytes(bArr);
        return encode(bArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Header createDigestHeader(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        String str;
        String str2;
        char c7;
        String str3;
        String str4;
        int i2;
        String sb;
        String str5;
        String parameter = getParameter("uri");
        String parameter2 = getParameter("realm");
        String parameter3 = getParameter("nonce");
        String parameter4 = getParameter("opaque");
        String parameter5 = getParameter("methodname");
        String parameter6 = getParameter("algorithm");
        if (parameter6 == null) {
            parameter6 = "MD5";
        }
        HashSet hashSet = new HashSet(8);
        String parameter7 = getParameter("qop");
        if (parameter7 != null) {
            str2 = "algorithm";
            str = "qop";
            for (StringTokenizer stringTokenizer = new StringTokenizer(parameter7, ","); stringTokenizer.hasMoreTokens(); stringTokenizer = stringTokenizer) {
                hashSet.add(stringTokenizer.nextToken().trim().toLowerCase(Locale.ROOT));
            }
            c7 = ((httpRequest instanceof HttpEntityEnclosingRequest) && hashSet.contains("auth-int")) ? (char) 1 : hashSet.contains("auth") ? (char) 2 : (char) 65535;
        } else {
            str = "qop";
            str2 = "algorithm";
            c7 = 0;
        }
        if (c7 == 65535) {
            throw new AuthenticationException(i.k("None of the qop methods is supported: ", parameter7));
        }
        String parameter8 = getParameter("charset");
        if (parameter8 == null) {
            parameter8 = "ISO-8859-1";
        }
        String str6 = parameter6.equalsIgnoreCase("MD5-sess") ? "MD5" : parameter6;
        try {
            MessageDigest createMessageDigest = createMessageDigest(str6);
            String name = credentials.getUserPrincipal().getName();
            String password = credentials.getPassword();
            if (parameter3.equals(this.lastNonce)) {
                this.nounceCount++;
            } else {
                this.nounceCount = 1L;
                this.cnonce = null;
                this.lastNonce = parameter3;
            }
            StringBuilder sb2 = new StringBuilder(256);
            Formatter formatter = new Formatter(sb2, Locale.US);
            formatter.format("%08x", Long.valueOf(this.nounceCount));
            formatter.close();
            String sb3 = sb2.toString();
            if (this.cnonce == null) {
                this.cnonce = createCnonce();
            }
            this.f13474a1 = null;
            this.f13475a2 = null;
            if (parameter6.equalsIgnoreCase("MD5-sess")) {
                sb2.setLength(0);
                sb2.append(name);
                sb2.append(':');
                sb2.append(parameter2);
                sb2.append(':');
                sb2.append(password);
                String encode = encode(createMessageDigest.digest(EncodingUtils.getBytes(sb2.toString(), parameter8)));
                sb2.setLength(0);
                sb2.append(encode);
                sb2.append(':');
                sb2.append(parameter3);
                sb2.append(':');
                sb2.append(this.cnonce);
                this.f13474a1 = sb2.toString();
            } else {
                sb2.setLength(0);
                sb2.append(name);
                sb2.append(':');
                sb2.append(parameter2);
                sb2.append(':');
                sb2.append(password);
                this.f13474a1 = sb2.toString();
            }
            String encode2 = encode(createMessageDigest.digest(EncodingUtils.getBytes(this.f13474a1, parameter8)));
            if (c7 == 2) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(parameter5);
                sb4.append(':');
                str3 = parameter;
                sb4.append(str3);
                this.f13475a2 = sb4.toString();
                str4 = "auth";
            } else {
                str3 = parameter;
                if (c7 == 1) {
                    HttpEntity entity = httpRequest instanceof HttpEntityEnclosingRequest ? ((HttpEntityEnclosingRequest) httpRequest).getEntity() : null;
                    if (entity == null || entity.isRepeatable()) {
                        str4 = "auth";
                        HttpEntityDigester httpEntityDigester = new HttpEntityDigester(createMessageDigest);
                        if (entity != null) {
                            try {
                                entity.writeTo(httpEntityDigester);
                            } catch (IOException e3) {
                                throw new AuthenticationException("I/O error reading entity content", e3);
                            }
                        }
                        httpEntityDigester.close();
                        this.f13475a2 = parameter5 + ':' + str3 + ':' + encode(httpEntityDigester.getDigest());
                    } else {
                        str4 = "auth";
                        if (!hashSet.contains(str4)) {
                            throw new AuthenticationException("Qop auth-int cannot be used with a non-repeatable entity");
                        }
                        this.f13475a2 = parameter5 + ':' + str3;
                        c7 = 2;
                    }
                } else {
                    str4 = "auth";
                    this.f13475a2 = parameter5 + ':' + str3;
                }
            }
            String encode3 = encode(createMessageDigest.digest(EncodingUtils.getBytes(this.f13475a2, parameter8)));
            if (c7 == 0) {
                i2 = 0;
                sb2.setLength(0);
                sb2.append(encode2);
                sb2.append(':');
                sb2.append(parameter3);
                sb2.append(':');
                sb2.append(encode3);
                sb = sb2.toString();
            } else {
                i2 = 0;
                sb2.setLength(0);
                sb2.append(encode2);
                sb2.append(':');
                sb2.append(parameter3);
                sb2.append(':');
                sb2.append(sb3);
                sb2.append(':');
                sb2.append(this.cnonce);
                sb2.append(':');
                sb2.append(c7 == 1 ? "auth-int" : str4);
                sb2.append(':');
                sb2.append(encode3);
                sb = sb2.toString();
            }
            String encode4 = encode(createMessageDigest.digest(EncodingUtils.getAsciiBytes(sb)));
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(128);
            if (isProxy()) {
                charArrayBuffer.append("Proxy-Authorization");
            } else {
                charArrayBuffer.append("Authorization");
            }
            charArrayBuffer.append(": Digest ");
            ArrayList arrayList = new ArrayList(20);
            arrayList.add(new BasicNameValuePair("username", name));
            arrayList.add(new BasicNameValuePair("realm", parameter2));
            arrayList.add(new BasicNameValuePair("nonce", parameter3));
            arrayList.add(new BasicNameValuePair("uri", str3));
            arrayList.add(new BasicNameValuePair("response", encode4));
            if (c7 != 0) {
                String str7 = c7 == 1 ? "auth-int" : str4;
                str5 = str;
                arrayList.add(new BasicNameValuePair(str5, str7));
                arrayList.add(new BasicNameValuePair("nc", sb3));
                arrayList.add(new BasicNameValuePair("cnonce", this.cnonce));
            } else {
                str5 = str;
            }
            String str8 = str2;
            arrayList.add(new BasicNameValuePair(str8, parameter6));
            if (parameter4 != null) {
                arrayList.add(new BasicNameValuePair("opaque", parameter4));
            }
            for (int i7 = i2; i7 < arrayList.size(); i7++) {
                NameValuePair nameValuePair = (BasicNameValuePair) arrayList.get(i7);
                if (i7 > 0) {
                    charArrayBuffer.append(", ");
                }
                String name2 = nameValuePair.getName();
                BasicHeaderValueFormatter.INSTANCE.formatNameValuePair(charArrayBuffer, nameValuePair, (("nc".equals(name2) || str5.equals(name2) || str8.equals(name2)) ? 1 : i2) ^ 1);
            }
            return new BufferedHeader(charArrayBuffer);
        } catch (UnsupportedDigestAlgorithmException unused) {
            throw new AuthenticationException("Unsuppported digest algorithm: ".concat(str6));
        }
    }

    private static MessageDigest createMessageDigest(String str) throws UnsupportedDigestAlgorithmException {
        try {
            return MessageDigest.getInstance(str);
        } catch (Exception unused) {
            throw new UnsupportedDigestAlgorithmException(i.k("Unsupported algorithm in HTTP Digest authentication: ", str));
        }
    }

    public static String encode(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i2 = 0; i2 < length; i2++) {
            byte b7 = bArr[i2];
            int i7 = i2 * 2;
            char[] cArr2 = HEXADECIMAL;
            cArr[i7] = cArr2[(b7 & 240) >> 4];
            cArr[i7 + 1] = cArr2[b7 & 15];
        }
        return new String(cArr);
    }

    @Override // cz.msebera.android.httpclient.auth.AuthScheme
    @Deprecated
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        return authenticate(credentials, httpRequest, new BasicHttpContext());
    }

    public String getA1() {
        return this.f13474a1;
    }

    public String getA2() {
        return this.f13475a2;
    }

    public String getCnonce() {
        return this.cnonce;
    }

    @Override // cz.msebera.android.httpclient.auth.AuthScheme
    public String getSchemeName() {
        return "digest";
    }

    @Override // cz.msebera.android.httpclient.auth.AuthScheme
    public boolean isComplete() {
        if ("true".equalsIgnoreCase(getParameter("stale"))) {
            return false;
        }
        return this.complete;
    }

    @Override // cz.msebera.android.httpclient.auth.AuthScheme
    public boolean isConnectionBased() {
        return false;
    }

    public void overrideParamter(String str, String str2) {
        getParameters().put(str, str2);
    }

    @Override // cz.msebera.android.httpclient.impl.auth.AuthSchemeBase, cz.msebera.android.httpclient.auth.AuthScheme
    public void processChallenge(Header header) throws MalformedChallengeException {
        super.processChallenge(header);
        this.complete = true;
        if (getParameters().isEmpty()) {
            throw new MalformedChallengeException("Authentication challenge is empty");
        }
    }

    @Override // cz.msebera.android.httpclient.impl.auth.AuthSchemeBase
    public String toString() {
        StringBuilder sb = new StringBuilder("DIGEST [complete=");
        sb.append(this.complete);
        sb.append(", nonce=");
        sb.append(this.lastNonce);
        sb.append(", nc=");
        return i.n(sb, this.nounceCount, "]");
    }

    @Override // cz.msebera.android.httpclient.impl.auth.AuthSchemeBase, cz.msebera.android.httpclient.auth.ContextAwareAuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        Args.notNull(credentials, "Credentials");
        Args.notNull(httpRequest, "HTTP request");
        if (getParameter("realm") == null) {
            throw new AuthenticationException("missing realm in challenge");
        }
        if (getParameter("nonce") == null) {
            throw new AuthenticationException("missing nonce in challenge");
        }
        getParameters().put("methodname", httpRequest.getRequestLine().getMethod());
        getParameters().put("uri", httpRequest.getRequestLine().getUri());
        if (getParameter("charset") == null) {
            getParameters().put("charset", getCredentialsCharset(httpRequest));
        }
        return createDigestHeader(credentials, httpRequest);
    }

    @Deprecated
    public DigestScheme(ChallengeState challengeState) {
        super(challengeState);
    }

    public DigestScheme() {
        this(Consts.ASCII);
    }
}
