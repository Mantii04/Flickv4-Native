package okhttp3.internal.http2;

import e6.C0873o;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class Header {
    public static final Companion Companion = new Companion(null);
    public static final ByteString PSEUDO_PREFIX;
    public static final ByteString RESPONSE_STATUS;
    public static final String RESPONSE_STATUS_UTF8 = ":status";
    public static final ByteString TARGET_AUTHORITY;
    public static final String TARGET_AUTHORITY_UTF8 = ":authority";
    public static final ByteString TARGET_METHOD;
    public static final String TARGET_METHOD_UTF8 = ":method";
    public static final ByteString TARGET_PATH;
    public static final String TARGET_PATH_UTF8 = ":path";
    public static final ByteString TARGET_SCHEME;
    public static final String TARGET_SCHEME_UTF8 = ":scheme";
    public final int hpackSize;
    public final ByteString name;
    public final ByteString value;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        private Companion() {
        }
    }

    static {
        C0873o c0873o = ByteString.f19159j;
        PSEUDO_PREFIX = c0873o.encodeUtf8(":");
        RESPONSE_STATUS = c0873o.encodeUtf8(RESPONSE_STATUS_UTF8);
        TARGET_METHOD = c0873o.encodeUtf8(TARGET_METHOD_UTF8);
        TARGET_PATH = c0873o.encodeUtf8(TARGET_PATH_UTF8);
        TARGET_SCHEME = c0873o.encodeUtf8(TARGET_SCHEME_UTF8);
        TARGET_AUTHORITY = c0873o.encodeUtf8(TARGET_AUTHORITY_UTF8);
    }

    public Header(ByteString name, ByteString value) {
        j.checkNotNullParameter(name, "name");
        j.checkNotNullParameter(value, "value");
        this.name = name;
        this.value = value;
        this.hpackSize = value.size() + name.size() + 32;
    }

    public static /* synthetic */ Header copy$default(Header header, ByteString byteString, ByteString byteString2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            byteString = header.name;
        }
        if ((i2 & 2) != 0) {
            byteString2 = header.value;
        }
        return header.copy(byteString, byteString2);
    }

    public final ByteString component1() {
        return this.name;
    }

    public final ByteString component2() {
        return this.value;
    }

    public final Header copy(ByteString name, ByteString value) {
        j.checkNotNullParameter(name, "name");
        j.checkNotNullParameter(value, "value");
        return new Header(name, value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return j.areEqual(this.name, header.name) && j.areEqual(this.value, header.value);
    }

    public int hashCode() {
        return this.value.hashCode() + (this.name.hashCode() * 31);
    }

    public String toString() {
        return this.name.utf8() + ": " + this.value.utf8();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Header(java.lang.String r2, java.lang.String r3) {
        /*
            r1 = this;
            java.lang.String r0 = "name"
            kotlin.jvm.internal.j.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "value"
            kotlin.jvm.internal.j.checkNotNullParameter(r3, r0)
            e6.o r0 = okio.ByteString.f19159j
            okio.ByteString r2 = r0.encodeUtf8(r2)
            okio.ByteString r3 = r0.encodeUtf8(r3)
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Header.<init>(java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(ByteString name, String value) {
        this(name, ByteString.f19159j.encodeUtf8(value));
        j.checkNotNullParameter(name, "name");
        j.checkNotNullParameter(value, "value");
    }
}
