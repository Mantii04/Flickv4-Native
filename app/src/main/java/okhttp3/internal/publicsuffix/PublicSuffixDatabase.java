package okhttp3.internal.publicsuffix;

import F5.a;
import O5.l;
import e6.InterfaceC0872n;
import e6.t;
import e6.w;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import org.apache.commons.lang3.ClassUtils;
import v5.o;
import v5.p;
import v5.u;

/* loaded from: classes2.dex */
public final class PublicSuffixDatabase {
    private static final char EXCEPTION_MARKER = '!';
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    public static final Companion Companion = new Companion(null);
    private static final byte[] WILDCARD_LABEL = {42};
    private static final List<String> PREVAILING_RULE = o.listOf("*");
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String binarySearch(byte[] bArr, byte[][] bArr2, int i2) {
            int i7;
            int and;
            boolean z6;
            int and2;
            int length = bArr.length;
            int i8 = 0;
            while (i8 < length) {
                int i9 = (i8 + length) / 2;
                while (i9 > -1 && bArr[i9] != 10) {
                    i9--;
                }
                int i10 = i9 + 1;
                int i11 = 1;
                while (true) {
                    i7 = i10 + i11;
                    if (bArr[i7] == 10) {
                        break;
                    }
                    i11++;
                }
                int i12 = i7 - i10;
                int i13 = i2;
                boolean z7 = false;
                int i14 = 0;
                int i15 = 0;
                while (true) {
                    if (z7) {
                        and = 46;
                        z6 = false;
                    } else {
                        boolean z8 = z7;
                        and = Util.and(bArr2[i13][i14], 255);
                        z6 = z8;
                    }
                    and2 = and - Util.and(bArr[i10 + i15], 255);
                    if (and2 != 0) {
                        break;
                    }
                    i15++;
                    i14++;
                    if (i15 == i12) {
                        break;
                    }
                    if (bArr2[i13].length != i14) {
                        z7 = z6;
                    } else {
                        if (i13 == bArr2.length - 1) {
                            break;
                        }
                        i13++;
                        z7 = true;
                        i14 = -1;
                    }
                }
                if (and2 >= 0) {
                    if (and2 <= 0) {
                        int i16 = i12 - i15;
                        int length2 = bArr2[i13].length - i14;
                        int length3 = bArr2.length;
                        for (int i17 = i13 + 1; i17 < length3; i17++) {
                            length2 += bArr2[i17].length;
                        }
                        if (length2 >= i16) {
                            if (length2 <= i16) {
                                Charset UTF_8 = StandardCharsets.UTF_8;
                                j.checkNotNullExpressionValue(UTF_8, "UTF_8");
                                return new String(bArr, i10, i12, UTF_8);
                            }
                        }
                    }
                    i8 = i7 + 1;
                }
                length = i9;
            }
            return null;
        }

        public final PublicSuffixDatabase get() {
            return PublicSuffixDatabase.instance;
        }

        private Companion() {
        }
    }

    private final List<String> findMatchingRule(List<String> list) {
        String str;
        String str2;
        String str3;
        List<String> emptyList;
        List<String> emptyList2;
        if (this.listRead.get() || !this.listRead.compareAndSet(false, true)) {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            readTheListUninterruptibly();
        }
        if (this.publicSuffixListBytes == null) {
            throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
        }
        int size = list.size();
        byte[][] bArr = new byte[size][];
        for (int i2 = 0; i2 < size; i2++) {
            String str4 = list.get(i2);
            Charset UTF_8 = StandardCharsets.UTF_8;
            j.checkNotNullExpressionValue(UTF_8, "UTF_8");
            byte[] bytes = str4.getBytes(UTF_8);
            j.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            bArr[i2] = bytes;
        }
        int i7 = 0;
        while (true) {
            str = null;
            if (i7 >= size) {
                str2 = null;
                break;
            }
            Companion companion = Companion;
            byte[] bArr2 = this.publicSuffixListBytes;
            if (bArr2 == null) {
                j.throwUninitializedPropertyAccessException("publicSuffixListBytes");
                bArr2 = null;
            }
            str2 = companion.binarySearch(bArr2, bArr, i7);
            if (str2 != null) {
                break;
            }
            i7++;
        }
        if (size > 1) {
            byte[][] bArr3 = (byte[][]) bArr.clone();
            int length = bArr3.length - 1;
            for (int i8 = 0; i8 < length; i8++) {
                bArr3[i8] = WILDCARD_LABEL;
                Companion companion2 = Companion;
                byte[] bArr4 = this.publicSuffixListBytes;
                if (bArr4 == null) {
                    j.throwUninitializedPropertyAccessException("publicSuffixListBytes");
                    bArr4 = null;
                }
                String binarySearch = companion2.binarySearch(bArr4, bArr3, i8);
                if (binarySearch != null) {
                    str3 = binarySearch;
                    break;
                }
            }
        }
        str3 = null;
        if (str3 != null) {
            int i9 = size - 1;
            int i10 = 0;
            while (true) {
                if (i10 >= i9) {
                    break;
                }
                Companion companion3 = Companion;
                byte[] bArr5 = this.publicSuffixExceptionListBytes;
                if (bArr5 == null) {
                    j.throwUninitializedPropertyAccessException("publicSuffixExceptionListBytes");
                    bArr5 = null;
                }
                String binarySearch2 = companion3.binarySearch(bArr5, bArr, i10);
                if (binarySearch2 != null) {
                    str = binarySearch2;
                    break;
                }
                i10++;
            }
        }
        if (str != null) {
            return StringsKt__StringsKt.split$default("!".concat(str), new char[]{ClassUtils.PACKAGE_SEPARATOR_CHAR}, false, 0, 6, null);
        }
        if (str2 == null && str3 == null) {
            return PREVAILING_RULE;
        }
        if (str2 == null || (emptyList = StringsKt__StringsKt.split$default(str2, new char[]{ClassUtils.PACKAGE_SEPARATOR_CHAR}, false, 0, 6, null)) == null) {
            emptyList = p.emptyList();
        }
        if (str3 == null || (emptyList2 = StringsKt__StringsKt.split$default(str3, new char[]{ClassUtils.PACKAGE_SEPARATOR_CHAR}, false, 0, 6, null)) == null) {
            emptyList2 = p.emptyList();
        }
        return emptyList.size() > emptyList2.size() ? emptyList : emptyList2;
    }

    private final void readTheList() throws IOException {
        try {
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
            if (resourceAsStream != null) {
                InterfaceC0872n buffer = w.buffer(new t(w.source(resourceAsStream)));
                try {
                    ref$ObjectRef.f17447b = buffer.readByteArray(buffer.readInt());
                    ref$ObjectRef2.f17447b = buffer.readByteArray(buffer.readInt());
                    a.closeFinally(buffer, null);
                    synchronized (this) {
                        Object obj = ref$ObjectRef.f17447b;
                        j.checkNotNull(obj);
                        this.publicSuffixListBytes = (byte[]) obj;
                        Object obj2 = ref$ObjectRef2.f17447b;
                        j.checkNotNull(obj2);
                        this.publicSuffixExceptionListBytes = (byte[]) obj2;
                    }
                } finally {
                }
            }
        } finally {
            this.readCompleteLatch.countDown();
        }
    }

    private final void readTheListUninterruptibly() {
        boolean z6 = false;
        while (true) {
            try {
                try {
                    readTheList();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z6 = true;
                } catch (IOException e3) {
                    Platform.Companion.get().log("Failed to read public suffix list", 5, e3);
                    if (!z6) {
                        return;
                    }
                }
            } finally {
                if (z6) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    private final List<String> splitDomain(String str) {
        List<String> split$default = StringsKt__StringsKt.split$default(str, new char[]{ClassUtils.PACKAGE_SEPARATOR_CHAR}, false, 0, 6, null);
        return j.areEqual(u.last(split$default), "") ? u.dropLast(split$default, 1) : split$default;
    }

    public final String getEffectiveTldPlusOne(String domain) {
        int size;
        int size2;
        j.checkNotNullParameter(domain, "domain");
        String unicodeDomain = IDN.toUnicode(domain);
        j.checkNotNullExpressionValue(unicodeDomain, "unicodeDomain");
        List<String> splitDomain = splitDomain(unicodeDomain);
        List<String> findMatchingRule = findMatchingRule(splitDomain);
        if (splitDomain.size() == findMatchingRule.size() && findMatchingRule.get(0).charAt(0) != '!') {
            return null;
        }
        if (findMatchingRule.get(0).charAt(0) == '!') {
            size = splitDomain.size();
            size2 = findMatchingRule.size();
        } else {
            size = splitDomain.size();
            size2 = findMatchingRule.size() + 1;
        }
        return l.joinToString$default(l.drop(u.asSequence(splitDomain(domain)), size - size2), ".", null, null, 0, null, null, 62, null);
    }

    public final void setListBytes(byte[] publicSuffixListBytes, byte[] publicSuffixExceptionListBytes) {
        j.checkNotNullParameter(publicSuffixListBytes, "publicSuffixListBytes");
        j.checkNotNullParameter(publicSuffixExceptionListBytes, "publicSuffixExceptionListBytes");
        this.publicSuffixListBytes = publicSuffixListBytes;
        this.publicSuffixExceptionListBytes = publicSuffixExceptionListBytes;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
