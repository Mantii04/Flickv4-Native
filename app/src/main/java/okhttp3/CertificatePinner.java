package okhttp3;

import A.i;
import H5.a;
import P5.p;
import com.fasterxml.jackson.core.JsonPointer;
import e6.C0873o;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.o;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.tls.CertificateChainCleaner;
import okio.ByteString;
import org.apache.commons.lang3.ClassUtils;
import v5.n;
import v5.q;
import v5.u;

/* loaded from: classes2.dex */
public final class CertificatePinner {
    public static final Companion Companion = new Companion(null);
    public static final CertificatePinner DEFAULT = new Builder().build();
    private final CertificateChainCleaner certificateChainCleaner;
    private final Set<Pin> pins;

    public static final class Builder {
        private final List<Pin> pins = new ArrayList();

        public final Builder add(String pattern, String... pins) {
            j.checkNotNullParameter(pattern, "pattern");
            j.checkNotNullParameter(pins, "pins");
            for (String str : pins) {
                this.pins.add(new Pin(pattern, str));
            }
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final CertificatePinner build() {
            return new CertificatePinner(u.toSet(this.pins), null, 2, 0 == true ? 1 : 0);
        }

        public final List<Pin> getPins() {
            return this.pins;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final String pin(Certificate certificate) {
            j.checkNotNullParameter(certificate, "certificate");
            if (!(certificate instanceof X509Certificate)) {
                throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
            }
            return "sha256/" + sha256Hash((X509Certificate) certificate).base64();
        }

        public final ByteString sha1Hash(X509Certificate x509Certificate) {
            j.checkNotNullParameter(x509Certificate, "<this>");
            C0873o c0873o = ByteString.f19159j;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            j.checkNotNullExpressionValue(encoded, "publicKey.encoded");
            return C0873o.of$default(c0873o, encoded, 0, 0, 3, null).sha1();
        }

        public final ByteString sha256Hash(X509Certificate x509Certificate) {
            j.checkNotNullParameter(x509Certificate, "<this>");
            C0873o c0873o = ByteString.f19159j;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            j.checkNotNullExpressionValue(encoded, "publicKey.encoded");
            return C0873o.of$default(c0873o, encoded, 0, 0, 3, null).sha256();
        }

        private Companion() {
        }
    }

    public static final class Pin {
        private final ByteString hash;
        private final String hashAlgorithm;
        private final String pattern;

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0024, code lost:
        
            if (kotlin.text.StringsKt__StringsKt.indexOf$default((java.lang.CharSequence) r5, "*", 1, false, 4, (java.lang.Object) null) != (-1)) goto L8;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Pin(java.lang.String r12, java.lang.String r13) {
            /*
                r11 = this;
                java.lang.String r0 = "pattern"
                kotlin.jvm.internal.j.checkNotNullParameter(r12, r0)
                java.lang.String r0 = "pin"
                kotlin.jvm.internal.j.checkNotNullParameter(r13, r0)
                r11.<init>()
                java.lang.String r0 = "*."
                r1 = 0
                r2 = 2
                r3 = 0
                boolean r0 = P5.p.startsWith$default(r12, r0, r1, r2, r3)
                r4 = -1
                if (r0 == 0) goto L27
                r9 = 4
                r10 = 0
                java.lang.String r6 = "*"
                r7 = 1
                r8 = 0
                r5 = r12
                int r12 = kotlin.text.StringsKt__StringsKt.indexOf$default(r5, r6, r7, r8, r9, r10)
                if (r12 == r4) goto L48
                goto L28
            L27:
                r5 = r12
            L28:
                java.lang.String r12 = "**."
                boolean r12 = P5.p.startsWith$default(r5, r12, r1, r2, r3)
                if (r12 == 0) goto L3c
                r9 = 4
                r10 = 0
                java.lang.String r6 = "*"
                r7 = 2
                r8 = 0
                int r12 = kotlin.text.StringsKt__StringsKt.indexOf$default(r5, r6, r7, r8, r9, r10)
                if (r12 == r4) goto L48
            L3c:
                r9 = 6
                r10 = 0
                java.lang.String r6 = "*"
                r7 = 0
                r8 = 0
                int r12 = kotlin.text.StringsKt__StringsKt.indexOf$default(r5, r6, r7, r8, r9, r10)
                if (r12 != r4) goto Lbe
            L48:
                java.lang.String r12 = okhttp3.internal.HostnamesKt.toCanonicalHost(r5)
                if (r12 == 0) goto Lb2
                r11.pattern = r12
                java.lang.String r12 = "sha1/"
                boolean r12 = P5.p.startsWith$default(r13, r12, r1, r2, r3)
                java.lang.String r0 = "Invalid pin hash: "
                java.lang.String r4 = "this as java.lang.String).substring(startIndex)"
                if (r12 == 0) goto L7d
                java.lang.String r12 = "sha1"
                r11.hashAlgorithm = r12
                e6.o r12 = okio.ByteString.f19159j
                r1 = 5
                java.lang.String r1 = r13.substring(r1)
                kotlin.jvm.internal.j.checkNotNullExpressionValue(r1, r4)
                okio.ByteString r12 = r12.decodeBase64(r1)
                if (r12 == 0) goto L73
                r11.hash = r12
                return
            L73:
                java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
                java.lang.String r13 = r0.concat(r13)
                r12.<init>(r13)
                throw r12
            L7d:
                java.lang.String r12 = "sha256/"
                boolean r12 = P5.p.startsWith$default(r13, r12, r1, r2, r3)
                if (r12 == 0) goto La6
                java.lang.String r12 = "sha256"
                r11.hashAlgorithm = r12
                e6.o r12 = okio.ByteString.f19159j
                r1 = 7
                java.lang.String r1 = r13.substring(r1)
                kotlin.jvm.internal.j.checkNotNullExpressionValue(r1, r4)
                okio.ByteString r12 = r12.decodeBase64(r1)
                if (r12 == 0) goto L9c
                r11.hash = r12
                return
            L9c:
                java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
                java.lang.String r13 = r0.concat(r13)
                r12.<init>(r13)
                throw r12
            La6:
                java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
                java.lang.String r0 = "pins must start with 'sha256/' or 'sha1/': "
                java.lang.String r13 = A.i.k(r0, r13)
                r12.<init>(r13)
                throw r12
            Lb2:
                java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
                java.lang.String r13 = "Invalid pattern: "
                java.lang.String r13 = A.i.k(r13, r5)
                r12.<init>(r13)
                throw r12
            Lbe:
                java.lang.String r12 = "Unexpected pattern: "
                java.lang.String r12 = A.i.k(r12, r5)
                java.lang.IllegalArgumentException r13 = new java.lang.IllegalArgumentException
                java.lang.String r12 = r12.toString()
                r13.<init>(r12)
                throw r13
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.CertificatePinner.Pin.<init>(java.lang.String, java.lang.String):void");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pin)) {
                return false;
            }
            Pin pin = (Pin) obj;
            return j.areEqual(this.pattern, pin.pattern) && j.areEqual(this.hashAlgorithm, pin.hashAlgorithm) && j.areEqual(this.hash, pin.hash);
        }

        public final ByteString getHash() {
            return this.hash;
        }

        public final String getHashAlgorithm() {
            return this.hashAlgorithm;
        }

        public final String getPattern() {
            return this.pattern;
        }

        public int hashCode() {
            return this.hash.hashCode() + i.b(this.pattern.hashCode() * 31, 31, this.hashAlgorithm);
        }

        public final boolean matchesCertificate(X509Certificate certificate) {
            j.checkNotNullParameter(certificate, "certificate");
            String str = this.hashAlgorithm;
            if (j.areEqual(str, "sha256")) {
                return j.areEqual(this.hash, CertificatePinner.Companion.sha256Hash(certificate));
            }
            if (j.areEqual(str, "sha1")) {
                return j.areEqual(this.hash, CertificatePinner.Companion.sha1Hash(certificate));
            }
            return false;
        }

        public final boolean matchesHostname(String hostname) {
            j.checkNotNullParameter(hostname, "hostname");
            if (p.startsWith$default(this.pattern, "**.", false, 2, null)) {
                int length = this.pattern.length() - 3;
                int length2 = hostname.length() - length;
                return p.regionMatches$default(hostname, hostname.length() - length, this.pattern, 3, length, false, 16, null) && (length2 == 0 || hostname.charAt(length2 - 1) == '.');
            }
            if (!p.startsWith$default(this.pattern, "*.", false, 2, null)) {
                return j.areEqual(hostname, this.pattern);
            }
            int length3 = this.pattern.length() - 1;
            return p.regionMatches$default(hostname, hostname.length() - length3, this.pattern, 1, length3, false, 16, null) && StringsKt__StringsKt.lastIndexOf$default((CharSequence) hostname, ClassUtils.PACKAGE_SEPARATOR_CHAR, (hostname.length() - length3) + (-1), false, 4, (Object) null) == -1;
        }

        public String toString() {
            return this.hashAlgorithm + JsonPointer.SEPARATOR + this.hash.base64();
        }
    }

    public CertificatePinner(Set<Pin> pins, CertificateChainCleaner certificateChainCleaner) {
        j.checkNotNullParameter(pins, "pins");
        this.pins = pins;
        this.certificateChainCleaner = certificateChainCleaner;
    }

    public static final String pin(Certificate certificate) {
        return Companion.pin(certificate);
    }

    public static final ByteString sha1Hash(X509Certificate x509Certificate) {
        return Companion.sha1Hash(x509Certificate);
    }

    public static final ByteString sha256Hash(X509Certificate x509Certificate) {
        return Companion.sha256Hash(x509Certificate);
    }

    public final void check(final String hostname, final List<? extends Certificate> peerCertificates) throws SSLPeerUnverifiedException {
        j.checkNotNullParameter(hostname, "hostname");
        j.checkNotNullParameter(peerCertificates, "peerCertificates");
        check$okhttp(hostname, new a() { // from class: okhttp3.CertificatePinner$check$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // H5.a
            public final List<X509Certificate> invoke() {
                List<Certificate> list;
                CertificateChainCleaner certificateChainCleaner$okhttp = CertificatePinner.this.getCertificateChainCleaner$okhttp();
                if (certificateChainCleaner$okhttp == null || (list = certificateChainCleaner$okhttp.clean(peerCertificates, hostname)) == null) {
                    list = peerCertificates;
                }
                List<Certificate> list2 = list;
                ArrayList arrayList = new ArrayList(q.collectionSizeOrDefault(list2, 10));
                for (Certificate certificate : list2) {
                    j.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    arrayList.add((X509Certificate) certificate);
                }
                return arrayList;
            }
        });
    }

    public final void check$okhttp(String hostname, a cleanedPeerCertificatesFn) {
        j.checkNotNullParameter(hostname, "hostname");
        j.checkNotNullParameter(cleanedPeerCertificatesFn, "cleanedPeerCertificatesFn");
        List<Pin> findMatchingPins = findMatchingPins(hostname);
        if (findMatchingPins.isEmpty()) {
            return;
        }
        List<X509Certificate> list = (List) cleanedPeerCertificatesFn.invoke();
        for (X509Certificate x509Certificate : list) {
            ByteString byteString = null;
            ByteString byteString2 = null;
            for (Pin pin : findMatchingPins) {
                String hashAlgorithm = pin.getHashAlgorithm();
                if (j.areEqual(hashAlgorithm, "sha256")) {
                    if (byteString == null) {
                        byteString = Companion.sha256Hash(x509Certificate);
                    }
                    if (j.areEqual(pin.getHash(), byteString)) {
                        return;
                    }
                } else {
                    if (!j.areEqual(hashAlgorithm, "sha1")) {
                        throw new AssertionError("unsupported hashAlgorithm: " + pin.getHashAlgorithm());
                    }
                    if (byteString2 == null) {
                        byteString2 = Companion.sha1Hash(x509Certificate);
                    }
                    if (j.areEqual(pin.getHash(), byteString2)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
        for (X509Certificate x509Certificate2 : list) {
            sb.append("\n    ");
            sb.append(Companion.pin(x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(hostname);
        sb.append(":");
        for (Pin pin2 : findMatchingPins) {
            sb.append("\n    ");
            sb.append(pin2);
        }
        String sb2 = sb.toString();
        j.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        throw new SSLPeerUnverifiedException(sb2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CertificatePinner)) {
            return false;
        }
        CertificatePinner certificatePinner = (CertificatePinner) obj;
        return j.areEqual(certificatePinner.pins, this.pins) && j.areEqual(certificatePinner.certificateChainCleaner, this.certificateChainCleaner);
    }

    public final List<Pin> findMatchingPins(String hostname) {
        j.checkNotNullParameter(hostname, "hostname");
        Set<Pin> set = this.pins;
        List<Pin> emptyList = v5.p.emptyList();
        for (Object obj : set) {
            if (((Pin) obj).matchesHostname(hostname)) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList<>();
                }
                j.checkNotNull(emptyList, "null cannot be cast to non-null type kotlin.collections.MutableList<T of okhttp3.internal.Util.filterList>");
                o.asMutableList(emptyList).add(obj);
            }
        }
        return emptyList;
    }

    public final CertificateChainCleaner getCertificateChainCleaner$okhttp() {
        return this.certificateChainCleaner;
    }

    public final Set<Pin> getPins() {
        return this.pins;
    }

    public int hashCode() {
        int hashCode = (this.pins.hashCode() + 1517) * 41;
        CertificateChainCleaner certificateChainCleaner = this.certificateChainCleaner;
        return hashCode + (certificateChainCleaner != null ? certificateChainCleaner.hashCode() : 0);
    }

    public final CertificatePinner withCertificateChainCleaner$okhttp(CertificateChainCleaner certificateChainCleaner) {
        j.checkNotNullParameter(certificateChainCleaner, "certificateChainCleaner");
        return j.areEqual(this.certificateChainCleaner, certificateChainCleaner) ? this : new CertificatePinner(this.pins, certificateChainCleaner);
    }

    public final void check(String hostname, Certificate... peerCertificates) throws SSLPeerUnverifiedException {
        j.checkNotNullParameter(hostname, "hostname");
        j.checkNotNullParameter(peerCertificates, "peerCertificates");
        check(hostname, n.toList(peerCertificates));
    }

    public /* synthetic */ CertificatePinner(Set set, CertificateChainCleaner certificateChainCleaner, int i2, g gVar) {
        this(set, (i2 & 2) != 0 ? null : certificateChainCleaner);
    }
}
