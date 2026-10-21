package okhttp3.internal.http2;

import androidx.media3.common.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.HttpHost;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import e6.C0870l;
import e6.InterfaceC0872n;
import e6.L;
import e6.w;
import flix.com.vision.models.C4913m;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import okhttp3.internal.Util;
import okio.ByteString;
import v5.m;
import v5.u;

/* loaded from: classes2.dex */
public final class Hpack {
    public static final Hpack INSTANCE;
    private static final Map<ByteString, Integer> NAME_TO_FIRST_INDEX;
    private static final int PREFIX_4_BITS = 15;
    private static final int PREFIX_5_BITS = 31;
    private static final int PREFIX_6_BITS = 63;
    private static final int PREFIX_7_BITS = 127;
    private static final int SETTINGS_HEADER_TABLE_SIZE = 4096;
    private static final int SETTINGS_HEADER_TABLE_SIZE_LIMIT = 16384;
    private static final Header[] STATIC_HEADER_TABLE;

    public static final class Reader {
        public Header[] dynamicTable;
        public int dynamicTableByteCount;
        public int headerCount;
        private final List<Header> headerList;
        private final int headerTableSizeSetting;
        private int maxDynamicTableByteCount;
        private int nextHeaderIndex;
        private final InterfaceC0872n source;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Reader(L source, int i2) {
            this(source, i2, 0, 4, null);
            j.checkNotNullParameter(source, "source");
        }

        private final void adjustDynamicTableByteCount() {
            int i2 = this.maxDynamicTableByteCount;
            int i7 = this.dynamicTableByteCount;
            if (i2 < i7) {
                if (i2 == 0) {
                    clearDynamicTable();
                } else {
                    evictToRecoverBytes(i7 - i2);
                }
            }
        }

        private final void clearDynamicTable() {
            m.fill$default(this.dynamicTable, (Object) null, 0, 0, 6, (Object) null);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private final int dynamicTableIndex(int i2) {
            return this.nextHeaderIndex + 1 + i2;
        }

        private final int evictToRecoverBytes(int i2) {
            int i7;
            int i8 = 0;
            if (i2 > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    i7 = this.nextHeaderIndex;
                    if (length < i7 || i2 <= 0) {
                        break;
                    }
                    Header header = this.dynamicTable[length];
                    j.checkNotNull(header);
                    int i9 = header.hpackSize;
                    i2 -= i9;
                    this.dynamicTableByteCount -= i9;
                    this.headerCount--;
                    i8++;
                }
                Header[] headerArr = this.dynamicTable;
                System.arraycopy(headerArr, i7 + 1, headerArr, i7 + 1 + i8, this.headerCount);
                this.nextHeaderIndex += i8;
            }
            return i8;
        }

        private final ByteString getName(int i2) throws IOException {
            if (isStaticHeader(i2)) {
                return Hpack.INSTANCE.getSTATIC_HEADER_TABLE()[i2].name;
            }
            int dynamicTableIndex = dynamicTableIndex(i2 - Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length);
            if (dynamicTableIndex >= 0) {
                Header[] headerArr = this.dynamicTable;
                if (dynamicTableIndex < headerArr.length) {
                    Header header = headerArr[dynamicTableIndex];
                    j.checkNotNull(header);
                    return header.name;
                }
            }
            throw new IOException("Header index too large " + (i2 + 1));
        }

        private final void insertIntoDynamicTable(int i2, Header header) {
            this.headerList.add(header);
            int i7 = header.hpackSize;
            if (i2 != -1) {
                Header header2 = this.dynamicTable[dynamicTableIndex(i2)];
                j.checkNotNull(header2);
                i7 -= header2.hpackSize;
            }
            int i8 = this.maxDynamicTableByteCount;
            if (i7 > i8) {
                clearDynamicTable();
                return;
            }
            int evictToRecoverBytes = evictToRecoverBytes((this.dynamicTableByteCount + i7) - i8);
            if (i2 == -1) {
                int i9 = this.headerCount + 1;
                Header[] headerArr = this.dynamicTable;
                if (i9 > headerArr.length) {
                    Header[] headerArr2 = new Header[headerArr.length * 2];
                    System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                    this.nextHeaderIndex = this.dynamicTable.length - 1;
                    this.dynamicTable = headerArr2;
                }
                int i10 = this.nextHeaderIndex;
                this.nextHeaderIndex = i10 - 1;
                this.dynamicTable[i10] = header;
                this.headerCount++;
            } else {
                this.dynamicTable[dynamicTableIndex(i2) + evictToRecoverBytes + i2] = header;
            }
            this.dynamicTableByteCount += i7;
        }

        private final boolean isStaticHeader(int i2) {
            return i2 >= 0 && i2 <= Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length - 1;
        }

        private final int readByte() throws IOException {
            return Util.and(this.source.readByte(), 255);
        }

        private final void readIndexedHeader(int i2) throws IOException {
            if (isStaticHeader(i2)) {
                this.headerList.add(Hpack.INSTANCE.getSTATIC_HEADER_TABLE()[i2]);
                return;
            }
            int dynamicTableIndex = dynamicTableIndex(i2 - Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length);
            if (dynamicTableIndex >= 0) {
                Header[] headerArr = this.dynamicTable;
                if (dynamicTableIndex < headerArr.length) {
                    List<Header> list = this.headerList;
                    Header header = headerArr[dynamicTableIndex];
                    j.checkNotNull(header);
                    list.add(header);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i2 + 1));
        }

        private final void readLiteralHeaderWithIncrementalIndexingIndexedName(int i2) throws IOException {
            insertIntoDynamicTable(-1, new Header(getName(i2), readByteString()));
        }

        private final void readLiteralHeaderWithIncrementalIndexingNewName() throws IOException {
            insertIntoDynamicTable(-1, new Header(Hpack.INSTANCE.checkLowercase(readByteString()), readByteString()));
        }

        private final void readLiteralHeaderWithoutIndexingIndexedName(int i2) throws IOException {
            this.headerList.add(new Header(getName(i2), readByteString()));
        }

        private final void readLiteralHeaderWithoutIndexingNewName() throws IOException {
            this.headerList.add(new Header(Hpack.INSTANCE.checkLowercase(readByteString()), readByteString()));
        }

        public final List<Header> getAndResetHeaderList() {
            List<Header> list = u.toList(this.headerList);
            this.headerList.clear();
            return list;
        }

        public final int maxDynamicTableByteCount() {
            return this.maxDynamicTableByteCount;
        }

        public final ByteString readByteString() throws IOException {
            int readByte = readByte();
            boolean z6 = (readByte & 128) == 128;
            long readInt = readInt(readByte, 127);
            if (!z6) {
                return this.source.readByteString(readInt);
            }
            C0870l c0870l = new C0870l();
            Huffman.INSTANCE.decode(this.source, readInt, c0870l);
            return c0870l.readByteString();
        }

        public final void readHeaders() throws IOException {
            while (!this.source.exhausted()) {
                int and = Util.and(this.source.readByte(), 255);
                if (and == 128) {
                    throw new IOException("index == 0");
                }
                if ((and & 128) == 128) {
                    readIndexedHeader(readInt(and, 127) - 1);
                } else if (and == 64) {
                    readLiteralHeaderWithIncrementalIndexingNewName();
                } else if ((and & 64) == 64) {
                    readLiteralHeaderWithIncrementalIndexingIndexedName(readInt(and, Hpack.PREFIX_6_BITS) - 1);
                } else if ((and & 32) == 32) {
                    int readInt = readInt(and, 31);
                    this.maxDynamicTableByteCount = readInt;
                    if (readInt < 0 || readInt > this.headerTableSizeSetting) {
                        throw new IOException("Invalid dynamic table size update " + this.maxDynamicTableByteCount);
                    }
                    adjustDynamicTableByteCount();
                } else if (and == 16 || and == 0) {
                    readLiteralHeaderWithoutIndexingNewName();
                } else {
                    readLiteralHeaderWithoutIndexingIndexedName(readInt(and, 15) - 1);
                }
            }
        }

        public final int readInt(int i2, int i7) throws IOException {
            int i8 = i2 & i7;
            if (i8 < i7) {
                return i8;
            }
            int i9 = 0;
            while (true) {
                int readByte = readByte();
                if ((readByte & 128) == 0) {
                    return i7 + (readByte << i9);
                }
                i7 += (readByte & 127) << i9;
                i9 += 7;
            }
        }

        public Reader(L source, int i2, int i7) {
            j.checkNotNullParameter(source, "source");
            this.headerTableSizeSetting = i2;
            this.maxDynamicTableByteCount = i7;
            this.headerList = new ArrayList();
            this.source = w.buffer(source);
            this.dynamicTable = new Header[8];
            this.nextHeaderIndex = r2.length - 1;
        }

        public /* synthetic */ Reader(L l7, int i2, int i7, int i8, g gVar) {
            this(l7, i2, (i8 & 4) != 0 ? i2 : i7);
        }
    }

    public static final class Writer {
        public Header[] dynamicTable;
        public int dynamicTableByteCount;
        private boolean emitDynamicTableSizeUpdate;
        public int headerCount;
        public int headerTableSizeSetting;
        public int maxDynamicTableByteCount;
        private int nextHeaderIndex;
        private final C0870l out;
        private int smallestHeaderTableSizeSetting;
        private final boolean useCompression;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Writer(int i2, C0870l out) {
            this(i2, false, out, 2, null);
            j.checkNotNullParameter(out, "out");
        }

        private final void adjustDynamicTableByteCount() {
            int i2 = this.maxDynamicTableByteCount;
            int i7 = this.dynamicTableByteCount;
            if (i2 < i7) {
                if (i2 == 0) {
                    clearDynamicTable();
                } else {
                    evictToRecoverBytes(i7 - i2);
                }
            }
        }

        private final void clearDynamicTable() {
            m.fill$default(this.dynamicTable, (Object) null, 0, 0, 6, (Object) null);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private final int evictToRecoverBytes(int i2) {
            int i7;
            int i8 = 0;
            if (i2 > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    i7 = this.nextHeaderIndex;
                    if (length < i7 || i2 <= 0) {
                        break;
                    }
                    Header header = this.dynamicTable[length];
                    j.checkNotNull(header);
                    i2 -= header.hpackSize;
                    int i9 = this.dynamicTableByteCount;
                    Header header2 = this.dynamicTable[length];
                    j.checkNotNull(header2);
                    this.dynamicTableByteCount = i9 - header2.hpackSize;
                    this.headerCount--;
                    i8++;
                }
                Header[] headerArr = this.dynamicTable;
                System.arraycopy(headerArr, i7 + 1, headerArr, i7 + 1 + i8, this.headerCount);
                Header[] headerArr2 = this.dynamicTable;
                int i10 = this.nextHeaderIndex;
                Arrays.fill(headerArr2, i10 + 1, i10 + 1 + i8, (Object) null);
                this.nextHeaderIndex += i8;
            }
            return i8;
        }

        private final void insertIntoDynamicTable(Header header) {
            int i2 = header.hpackSize;
            int i7 = this.maxDynamicTableByteCount;
            if (i2 > i7) {
                clearDynamicTable();
                return;
            }
            evictToRecoverBytes((this.dynamicTableByteCount + i2) - i7);
            int i8 = this.headerCount + 1;
            Header[] headerArr = this.dynamicTable;
            if (i8 > headerArr.length) {
                Header[] headerArr2 = new Header[headerArr.length * 2];
                System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                this.nextHeaderIndex = this.dynamicTable.length - 1;
                this.dynamicTable = headerArr2;
            }
            int i9 = this.nextHeaderIndex;
            this.nextHeaderIndex = i9 - 1;
            this.dynamicTable[i9] = header;
            this.headerCount++;
            this.dynamicTableByteCount += i2;
        }

        public final void resizeHeaderTable(int i2) {
            this.headerTableSizeSetting = i2;
            int min = Math.min(i2, 16384);
            int i7 = this.maxDynamicTableByteCount;
            if (i7 == min) {
                return;
            }
            if (min < i7) {
                this.smallestHeaderTableSizeSetting = Math.min(this.smallestHeaderTableSizeSetting, min);
            }
            this.emitDynamicTableSizeUpdate = true;
            this.maxDynamicTableByteCount = min;
            adjustDynamicTableByteCount();
        }

        public final void writeByteString(ByteString data) throws IOException {
            j.checkNotNullParameter(data, "data");
            if (this.useCompression) {
                Huffman huffman = Huffman.INSTANCE;
                if (huffman.encodedLength(data) < data.size()) {
                    C0870l c0870l = new C0870l();
                    huffman.encode(data, c0870l);
                    ByteString readByteString = c0870l.readByteString();
                    writeInt(readByteString.size(), 127, 128);
                    this.out.write(readByteString);
                    return;
                }
            }
            writeInt(data.size(), 127, 0);
            this.out.write(data);
        }

        public final void writeHeaders(List<Header> headerBlock) throws IOException {
            int i2;
            int i7;
            j.checkNotNullParameter(headerBlock, "headerBlock");
            if (this.emitDynamicTableSizeUpdate) {
                int i8 = this.smallestHeaderTableSizeSetting;
                if (i8 < this.maxDynamicTableByteCount) {
                    writeInt(i8, 31, 32);
                }
                this.emitDynamicTableSizeUpdate = false;
                this.smallestHeaderTableSizeSetting = Log.LOG_LEVEL_OFF;
                writeInt(this.maxDynamicTableByteCount, 31, 32);
            }
            int size = headerBlock.size();
            for (int i9 = 0; i9 < size; i9++) {
                Header header = headerBlock.get(i9);
                ByteString asciiLowercase = header.name.toAsciiLowercase();
                ByteString byteString = header.value;
                Hpack hpack = Hpack.INSTANCE;
                Integer num = hpack.getNAME_TO_FIRST_INDEX().get(asciiLowercase);
                if (num != null) {
                    int intValue = num.intValue();
                    i7 = intValue + 1;
                    if (2 <= i7 && i7 < 8) {
                        if (j.areEqual(hpack.getSTATIC_HEADER_TABLE()[intValue].value, byteString)) {
                            i2 = i7;
                        } else if (j.areEqual(hpack.getSTATIC_HEADER_TABLE()[i7].value, byteString)) {
                            i2 = i7;
                            i7 = intValue + 2;
                        }
                    }
                    i2 = i7;
                    i7 = -1;
                } else {
                    i2 = -1;
                    i7 = -1;
                }
                if (i7 == -1) {
                    int i10 = this.nextHeaderIndex + 1;
                    int length = this.dynamicTable.length;
                    while (true) {
                        if (i10 >= length) {
                            break;
                        }
                        Header header2 = this.dynamicTable[i10];
                        j.checkNotNull(header2);
                        if (j.areEqual(header2.name, asciiLowercase)) {
                            Header header3 = this.dynamicTable[i10];
                            j.checkNotNull(header3);
                            if (j.areEqual(header3.value, byteString)) {
                                i7 = Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length + (i10 - this.nextHeaderIndex);
                                break;
                            } else if (i2 == -1) {
                                i2 = (i10 - this.nextHeaderIndex) + Hpack.INSTANCE.getSTATIC_HEADER_TABLE().length;
                            }
                        }
                        i10++;
                    }
                }
                if (i7 != -1) {
                    writeInt(i7, 127, 128);
                } else if (i2 == -1) {
                    this.out.writeByte(64);
                    writeByteString(asciiLowercase);
                    writeByteString(byteString);
                    insertIntoDynamicTable(header);
                } else if (!asciiLowercase.startsWith(Header.PSEUDO_PREFIX) || j.areEqual(Header.TARGET_AUTHORITY, asciiLowercase)) {
                    writeInt(i2, Hpack.PREFIX_6_BITS, 64);
                    writeByteString(byteString);
                    insertIntoDynamicTable(header);
                } else {
                    writeInt(i2, 15, 0);
                    writeByteString(byteString);
                }
            }
        }

        public final void writeInt(int i2, int i7, int i8) {
            if (i2 < i7) {
                this.out.writeByte(i2 | i8);
                return;
            }
            this.out.writeByte(i8 | i7);
            int i9 = i2 - i7;
            while (i9 >= 128) {
                this.out.writeByte(128 | (i9 & 127));
                i9 >>>= 7;
            }
            this.out.writeByte(i9);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Writer(C0870l out) {
            this(0, false, out, 3, null);
            j.checkNotNullParameter(out, "out");
        }

        public Writer(int i2, boolean z6, C0870l out) {
            j.checkNotNullParameter(out, "out");
            this.headerTableSizeSetting = i2;
            this.useCompression = z6;
            this.out = out;
            this.smallestHeaderTableSizeSetting = Log.LOG_LEVEL_OFF;
            this.maxDynamicTableByteCount = i2;
            this.dynamicTable = new Header[8];
            this.nextHeaderIndex = r2.length - 1;
        }

        public /* synthetic */ Writer(int i2, boolean z6, C0870l c0870l, int i7, g gVar) {
            this((i7 & 1) != 0 ? 4096 : i2, (i7 & 2) != 0 ? true : z6, c0870l);
        }
    }

    static {
        Hpack hpack = new Hpack();
        INSTANCE = hpack;
        Header header = new Header(Header.TARGET_AUTHORITY, "");
        ByteString byteString = Header.TARGET_METHOD;
        Header header2 = new Header(byteString, "GET");
        Header header3 = new Header(byteString, "POST");
        ByteString byteString2 = Header.TARGET_PATH;
        Header header4 = new Header(byteString2, RemoteSettings.FORWARD_SLASH_STRING);
        Header header5 = new Header(byteString2, "/index.html");
        ByteString byteString3 = Header.TARGET_SCHEME;
        Header header6 = new Header(byteString3, HttpHost.DEFAULT_SCHEME_NAME);
        Header header7 = new Header(byteString3, "https");
        ByteString byteString4 = Header.RESPONSE_STATUS;
        STATIC_HEADER_TABLE = new Header[]{header, header2, header3, header4, header5, header6, header7, new Header(byteString4, "200"), new Header(byteString4, "204"), new Header(byteString4, "206"), new Header(byteString4, "304"), new Header(byteString4, "400"), new Header(byteString4, "404"), new Header(byteString4, "500"), new Header("accept-charset", ""), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header("authorization", ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header("cookie", ""), new Header("date", ""), new Header("etag", ""), new Header("expect", ""), new Header(ClientCookie.EXPIRES_ATTR, ""), new Header("from", ""), new Header("host", ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header(FirebaseAnalytics.Param.LOCATION, ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header("range", ""), new Header(C4913m.f14515o, ""), new Header("refresh", ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header("transfer-encoding", ""), new Header("user-agent", ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "")};
        NAME_TO_FIRST_INDEX = hpack.nameToFirstIndex();
    }

    private Hpack() {
    }

    private final Map<ByteString, Integer> nameToFirstIndex() {
        Header[] headerArr = STATIC_HEADER_TABLE;
        LinkedHashMap linkedHashMap = new LinkedHashMap(headerArr.length);
        int length = headerArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            Header[] headerArr2 = STATIC_HEADER_TABLE;
            if (!linkedHashMap.containsKey(headerArr2[i2].name)) {
                linkedHashMap.put(headerArr2[i2].name, Integer.valueOf(i2));
            }
        }
        Map<ByteString, Integer> unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        j.checkNotNullExpressionValue(unmodifiableMap, "unmodifiableMap(result)");
        return unmodifiableMap;
    }

    public final ByteString checkLowercase(ByteString name) throws IOException {
        j.checkNotNullParameter(name, "name");
        int size = name.size();
        for (int i2 = 0; i2 < size; i2++) {
            byte b7 = name.getByte(i2);
            if (65 <= b7 && b7 < 91) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + name.utf8());
            }
        }
        return name;
    }

    public final Map<ByteString, Integer> getNAME_TO_FIRST_INDEX() {
        return NAME_TO_FIRST_INDEX;
    }

    public final Header[] getSTATIC_HEADER_TABLE() {
        return STATIC_HEADER_TABLE;
    }
}
