package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;

/* renamed from: androidx.datastore.preferences.protobuf.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0435t implements L0 {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0434s f5913a;

    public C0435t(AbstractC0434s abstractC0434s) {
        Charset charset = I.f5777a;
        this.f5913a = abstractC0434s;
        abstractC0434s.f5908a = this;
    }

    public static C0435t forCodedOutput(AbstractC0434s abstractC0434s) {
        C0435t c0435t = abstractC0434s.f5908a;
        return c0435t != null ? c0435t : new C0435t(abstractC0434s);
    }

    public Writer$FieldOrder fieldOrder() {
        return Writer$FieldOrder.f5834b;
    }

    public void writeBool(int i2, boolean z6) throws IOException {
        this.f5913a.writeBool(i2, z6);
    }

    public void writeBoolList(int i2, List<Boolean> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeBool(i2, list.get(i7).booleanValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeBoolSizeNoTag(list.get(i9).booleanValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeBoolNoTag(list.get(i7).booleanValue());
            i7++;
        }
    }

    public void writeBytes(int i2, ByteString byteString) throws IOException {
        this.f5913a.writeBytes(i2, byteString);
    }

    public void writeBytesList(int i2, List<ByteString> list) throws IOException {
        for (int i7 = 0; i7 < list.size(); i7++) {
            this.f5913a.writeBytes(i2, list.get(i7));
        }
    }

    public void writeDouble(int i2, double d7) throws IOException {
        this.f5913a.writeDouble(i2, d7);
    }

    public void writeDoubleList(int i2, List<Double> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeDouble(i2, list.get(i7).doubleValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeDoubleSizeNoTag(list.get(i9).doubleValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeDoubleNoTag(list.get(i7).doubleValue());
            i7++;
        }
    }

    public void writeEndGroup(int i2) throws IOException {
        this.f5913a.writeTag(i2, 4);
    }

    public void writeEnum(int i2, int i7) throws IOException {
        this.f5913a.writeEnum(i2, i7);
    }

    public void writeEnumList(int i2, List<Integer> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeEnum(i2, list.get(i7).intValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeEnumSizeNoTag(list.get(i9).intValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeEnumNoTag(list.get(i7).intValue());
            i7++;
        }
    }

    public void writeFixed32(int i2, int i7) throws IOException {
        this.f5913a.writeFixed32(i2, i7);
    }

    public void writeFixed32List(int i2, List<Integer> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeFixed32(i2, list.get(i7).intValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeFixed32SizeNoTag(list.get(i9).intValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeFixed32NoTag(list.get(i7).intValue());
            i7++;
        }
    }

    public void writeFixed64(int i2, long j7) throws IOException {
        this.f5913a.writeFixed64(i2, j7);
    }

    public void writeFixed64List(int i2, List<Long> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeFixed64(i2, list.get(i7).longValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeFixed64SizeNoTag(list.get(i9).longValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeFixed64NoTag(list.get(i7).longValue());
            i7++;
        }
    }

    public void writeFloat(int i2, float f3) throws IOException {
        this.f5913a.writeFloat(i2, f3);
    }

    public void writeFloatList(int i2, List<Float> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeFloat(i2, list.get(i7).floatValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeFloatSizeNoTag(list.get(i9).floatValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeFloatNoTag(list.get(i7).floatValue());
            i7++;
        }
    }

    public void writeGroup(int i2, Object obj, InterfaceC0428l0 interfaceC0428l0) throws IOException {
        AbstractC0434s abstractC0434s = this.f5913a;
        abstractC0434s.writeTag(i2, 3);
        interfaceC0428l0.writeTo((InterfaceC0406a0) obj, abstractC0434s.f5908a);
        abstractC0434s.writeTag(i2, 4);
    }

    public void writeGroupList(int i2, List<?> list, InterfaceC0428l0 interfaceC0428l0) throws IOException {
        for (int i7 = 0; i7 < list.size(); i7++) {
            writeGroup(i2, list.get(i7), interfaceC0428l0);
        }
    }

    public void writeInt32(int i2, int i7) throws IOException {
        this.f5913a.writeInt32(i2, i7);
    }

    public void writeInt32List(int i2, List<Integer> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeInt32(i2, list.get(i7).intValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeInt32SizeNoTag(list.get(i9).intValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeInt32NoTag(list.get(i7).intValue());
            i7++;
        }
    }

    public void writeInt64(int i2, long j7) throws IOException {
        this.f5913a.writeInt64(i2, j7);
    }

    public void writeInt64List(int i2, List<Long> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeInt64(i2, list.get(i7).longValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeInt64SizeNoTag(list.get(i9).longValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeInt64NoTag(list.get(i7).longValue());
            i7++;
        }
    }

    public <K, V> void writeMap(int i2, T t6, Map<K, V> map) throws IOException {
        AbstractC0434s abstractC0434s = this.f5913a;
        abstractC0434s.getClass();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            abstractC0434s.writeTag(i2, 2);
            K key = entry.getKey();
            V value = entry.getValue();
            int a7 = A.a(t6.f5808a, 1, key);
            WireFormat$FieldType wireFormat$FieldType = t6.f5810c;
            abstractC0434s.writeUInt32NoTag(A.a(wireFormat$FieldType, 2, value) + a7);
            K key2 = entry.getKey();
            V value2 = entry.getValue();
            A.c(abstractC0434s, t6.f5808a, 1, key2);
            A.c(abstractC0434s, wireFormat$FieldType, 2, value2);
        }
    }

    public void writeMessage(int i2, Object obj, InterfaceC0428l0 interfaceC0428l0) throws IOException {
        this.f5913a.b(i2, (InterfaceC0406a0) obj, interfaceC0428l0);
    }

    public void writeMessageList(int i2, List<?> list, InterfaceC0428l0 interfaceC0428l0) throws IOException {
        for (int i7 = 0; i7 < list.size(); i7++) {
            writeMessage(i2, list.get(i7), interfaceC0428l0);
        }
    }

    public void writeSFixed32(int i2, int i7) throws IOException {
        this.f5913a.writeSFixed32(i2, i7);
    }

    public void writeSFixed32List(int i2, List<Integer> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeSFixed32(i2, list.get(i7).intValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeSFixed32SizeNoTag(list.get(i9).intValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeSFixed32NoTag(list.get(i7).intValue());
            i7++;
        }
    }

    public void writeSFixed64(int i2, long j7) throws IOException {
        this.f5913a.writeSFixed64(i2, j7);
    }

    public void writeSFixed64List(int i2, List<Long> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeSFixed64(i2, list.get(i7).longValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeSFixed64SizeNoTag(list.get(i9).longValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeSFixed64NoTag(list.get(i7).longValue());
            i7++;
        }
    }

    public void writeSInt32(int i2, int i7) throws IOException {
        this.f5913a.writeSInt32(i2, i7);
    }

    public void writeSInt32List(int i2, List<Integer> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeSInt32(i2, list.get(i7).intValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeSInt32SizeNoTag(list.get(i9).intValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeSInt32NoTag(list.get(i7).intValue());
            i7++;
        }
    }

    public void writeSInt64(int i2, long j7) throws IOException {
        this.f5913a.writeSInt64(i2, j7);
    }

    public void writeSInt64List(int i2, List<Long> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeSInt64(i2, list.get(i7).longValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeSInt64SizeNoTag(list.get(i9).longValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeSInt64NoTag(list.get(i7).longValue());
            i7++;
        }
    }

    public void writeStartGroup(int i2) throws IOException {
        this.f5913a.writeTag(i2, 3);
    }

    public void writeString(int i2, String str) throws IOException {
        this.f5913a.writeString(i2, str);
    }

    public void writeStringList(int i2, List<String> list) throws IOException {
        boolean z6 = list instanceof K;
        AbstractC0434s abstractC0434s = this.f5913a;
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeString(i2, list.get(i7));
                i7++;
            }
            return;
        }
        K k7 = (K) list;
        while (i7 < list.size()) {
            Object raw = k7.getRaw(i7);
            if (raw instanceof String) {
                abstractC0434s.writeString(i2, (String) raw);
            } else {
                abstractC0434s.writeBytes(i2, (ByteString) raw);
            }
            i7++;
        }
    }

    public void writeUInt32(int i2, int i7) throws IOException {
        this.f5913a.writeUInt32(i2, i7);
    }

    public void writeUInt32List(int i2, List<Integer> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeUInt32(i2, list.get(i7).intValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeUInt32SizeNoTag(list.get(i9).intValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeUInt32NoTag(list.get(i7).intValue());
            i7++;
        }
    }

    public void writeUInt64(int i2, long j7) throws IOException {
        this.f5913a.writeUInt64(i2, j7);
    }

    public void writeUInt64List(int i2, List<Long> list, boolean z6) throws IOException {
        int i7 = 0;
        AbstractC0434s abstractC0434s = this.f5913a;
        if (!z6) {
            while (i7 < list.size()) {
                abstractC0434s.writeUInt64(i2, list.get(i7).longValue());
                i7++;
            }
            return;
        }
        abstractC0434s.writeTag(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += AbstractC0434s.computeUInt64SizeNoTag(list.get(i9).longValue());
        }
        abstractC0434s.writeUInt32NoTag(i8);
        while (i7 < list.size()) {
            abstractC0434s.writeUInt64NoTag(list.get(i7).longValue());
            i7++;
        }
    }
}
