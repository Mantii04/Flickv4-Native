package okhttp3.dnsoverhttps;

import A.i;
import e6.C0870l;
import e6.P;
import java.io.EOFException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import kotlin.jvm.internal.j;
import kotlin.text.StringsKt__StringsKt;
import okio.ByteString;
import org.apache.commons.lang3.ClassUtils;
import v5.p;
import v5.u;

/* loaded from: classes2.dex */
public final class DnsRecordCodec {
    private static final int NXDOMAIN = 3;
    private static final int SERVFAIL = 2;
    public static final int TYPE_A = 1;
    public static final int TYPE_AAAA = 28;
    private static final int TYPE_PTR = 12;
    public static final DnsRecordCodec INSTANCE = new DnsRecordCodec();
    private static final Charset ASCII = StandardCharsets.US_ASCII;

    private DnsRecordCodec() {
    }

    private final void skipName(C0870l c0870l) throws EOFException {
        byte readByte = c0870l.readByte();
        if (readByte < 0) {
            c0870l.skip(1L);
            return;
        }
        while (readByte > 0) {
            c0870l.skip(readByte);
            readByte = c0870l.readByte();
        }
    }

    public final List<InetAddress> decodeAnswers(String hostname, ByteString byteString) throws Exception {
        j.checkNotNullParameter(hostname, "hostname");
        j.checkNotNullParameter(byteString, "byteString");
        ArrayList arrayList = new ArrayList();
        C0870l c0870l = new C0870l();
        c0870l.write(byteString);
        c0870l.readShort();
        short readShort = c0870l.readShort();
        if (((readShort & 65535) >> 15) == 0) {
            throw new IllegalArgumentException("not a response");
        }
        int i2 = readShort & 15;
        if (i2 == 2) {
            throw new UnknownHostException(i.B(hostname, ": SERVFAIL"));
        }
        if (i2 == 3) {
            throw new UnknownHostException(i.B(hostname, ": NXDOMAIN"));
        }
        int readShort2 = c0870l.readShort() & 65535;
        int readShort3 = c0870l.readShort() & 65535;
        c0870l.readShort();
        c0870l.readShort();
        for (int i7 = 0; i7 < readShort2; i7++) {
            skipName(c0870l);
            c0870l.readShort();
            c0870l.readShort();
        }
        for (int i8 = 0; i8 < readShort3; i8++) {
            skipName(c0870l);
            int readShort4 = c0870l.readShort() & 65535;
            c0870l.readShort();
            c0870l.readInt();
            int readShort5 = c0870l.readShort() & 65535;
            if (readShort4 == 1 || readShort4 == 28) {
                byte[] bArr = new byte[readShort5];
                c0870l.read(bArr);
                InetAddress byAddress = InetAddress.getByAddress(bArr);
                j.checkNotNullExpressionValue(byAddress, "getByAddress(bytes)");
                arrayList.add(byAddress);
            } else {
                c0870l.skip(readShort5);
            }
        }
        return arrayList;
    }

    public final ByteString encodeQuery(String host, int i2) {
        List<String> emptyList;
        j.checkNotNullParameter(host, "host");
        C0870l c0870l = new C0870l();
        c0870l.writeShort(0);
        c0870l.writeShort(256);
        c0870l.writeShort(1);
        c0870l.writeShort(0);
        c0870l.writeShort(0);
        c0870l.writeShort(0);
        C0870l c0870l2 = new C0870l();
        List split$default = StringsKt__StringsKt.split$default(host, new char[]{ClassUtils.PACKAGE_SEPARATOR_CHAR}, false, 0, 6, null);
        if (!split$default.isEmpty()) {
            ListIterator listIterator = split$default.listIterator(split$default.size());
            while (listIterator.hasPrevious()) {
                if (((String) listIterator.previous()).length() != 0) {
                    emptyList = u.take(split$default, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        emptyList = p.emptyList();
        for (String str : emptyList) {
            long size$default = P.size$default(str, 0, 0, 3, null);
            if (size$default != str.length()) {
                throw new IllegalArgumentException(i.k("non-ascii hostname: ", host).toString());
            }
            c0870l2.writeByte((int) size$default);
            c0870l2.writeUtf8(str);
        }
        c0870l2.writeByte(0);
        c0870l2.copyTo(c0870l, 0L, c0870l2.size());
        c0870l.writeShort(i2);
        c0870l.writeShort(1);
        return c0870l.readByteString();
    }
}
