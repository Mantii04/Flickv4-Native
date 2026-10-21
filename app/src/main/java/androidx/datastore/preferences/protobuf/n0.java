package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public abstract class n0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Class f5881a;

    /* renamed from: b, reason: collision with root package name */
    public static final w0 f5882b;

    /* renamed from: c, reason: collision with root package name */
    public static final w0 f5883c;

    /* renamed from: d, reason: collision with root package name */
    public static final y0 f5884d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("androidx.datastore.preferences.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        f5881a = cls;
        f5882b = w(false);
        f5883c = w(true);
        f5884d = new y0();
    }

    public static int a(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeTagSize = AbstractC0434s.computeTagSize(i2) * size;
        for (int i7 = 0; i7 < list.size(); i7++) {
            computeTagSize += AbstractC0434s.computeBytesSizeNoTag((ByteString) list.get(i7));
        }
        return computeTagSize;
    }

    public static int b(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC0434s.computeTagSize(i2) * size) + c(list);
    }

    public static int c(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof G) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i2 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            i2 += AbstractC0434s.computeEnumSizeNoTag(((Integer) list.get(i7)).intValue());
        }
        return i2;
    }

    public static int d(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return AbstractC0434s.computeFixed32Size(i2, 0) * size;
    }

    public static int e(List list) {
        return list.size() * 4;
    }

    public static int f(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return AbstractC0434s.computeFixed64Size(i2, 0L) * size;
    }

    public static int g(List list) {
        return list.size() * 8;
    }

    public static int h(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC0434s.computeTagSize(i2) * size) + i(list);
    }

    public static int i(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof G) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i2 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            i2 += AbstractC0434s.computeInt32SizeNoTag(((Integer) list.get(i7)).intValue());
        }
        return i2;
    }

    public static int j(int i2, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (AbstractC0434s.computeTagSize(i2) * list.size()) + k(list);
    }

    public static int k(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof O) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i2 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            i2 += AbstractC0434s.computeInt64SizeNoTag(((Long) list.get(i7)).longValue());
        }
        return i2;
    }

    public static int l(int i2, List list, InterfaceC0428l0 interfaceC0428l0) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeTagSize = AbstractC0434s.computeTagSize(i2) * size;
        for (int i7 = 0; i7 < size; i7++) {
            int a7 = ((AbstractC0407b) ((InterfaceC0406a0) list.get(i7))).a(interfaceC0428l0);
            computeTagSize += AbstractC0434s.computeUInt32SizeNoTag(a7) + a7;
        }
        return computeTagSize;
    }

    public static int m(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC0434s.computeTagSize(i2) * size) + n(list);
    }

    public static int n(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof G) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i2 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            i2 += AbstractC0434s.computeSInt32SizeNoTag(((Integer) list.get(i7)).intValue());
        }
        return i2;
    }

    public static int o(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC0434s.computeTagSize(i2) * size) + p(list);
    }

    public static int p(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof O) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i2 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            i2 += AbstractC0434s.computeSInt64SizeNoTag(((Long) list.get(i7)).longValue());
        }
        return i2;
    }

    public static w0 proto2UnknownFieldSetSchema() {
        return f5882b;
    }

    public static w0 proto3UnknownFieldSetSchema() {
        return f5883c;
    }

    public static int q(int i2, List list) {
        int size = list.size();
        int i7 = 0;
        if (size == 0) {
            return 0;
        }
        int computeTagSize = AbstractC0434s.computeTagSize(i2) * size;
        if (!(list instanceof K)) {
            while (i7 < size) {
                Object obj = list.get(i7);
                computeTagSize = (obj instanceof ByteString ? AbstractC0434s.computeBytesSizeNoTag((ByteString) obj) : AbstractC0434s.computeStringSizeNoTag((String) obj)) + computeTagSize;
                i7++;
            }
            return computeTagSize;
        }
        K k7 = (K) list;
        while (i7 < size) {
            Object raw = k7.getRaw(i7);
            computeTagSize = (raw instanceof ByteString ? AbstractC0434s.computeBytesSizeNoTag((ByteString) raw) : AbstractC0434s.computeStringSizeNoTag((String) raw)) + computeTagSize;
            i7++;
        }
        return computeTagSize;
    }

    public static int r(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC0434s.computeTagSize(i2) * size) + s(list);
    }

    public static void requireGeneratedMessage(Class<?> cls) {
        Class cls2;
        if (!F.class.isAssignableFrom(cls) && (cls2 = f5881a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static int s(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof G) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i2 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            i2 += AbstractC0434s.computeUInt32SizeNoTag(((Integer) list.get(i7)).intValue());
        }
        return i2;
    }

    public static int t(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC0434s.computeTagSize(i2) * size) + u(list);
    }

    public static int u(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof O) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int i2 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            i2 += AbstractC0434s.computeUInt64SizeNoTag(((Long) list.get(i7)).longValue());
        }
        return i2;
    }

    public static w0 unknownFieldSetLiteSchema() {
        return f5884d;
    }

    public static w0 w(boolean z6) {
        Class<?> cls;
        try {
            cls = Class.forName("androidx.datastore.preferences.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls != null) {
            try {
                return (w0) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z6));
            } catch (Throwable unused2) {
            }
        }
        return null;
    }

    public static void writeBoolList(int i2, List<Boolean> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeBoolList(i2, list, z6);
    }

    public static void writeBytesList(int i2, List<ByteString> list, L0 l02) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeBytesList(i2, list);
    }

    public static void writeDoubleList(int i2, List<Double> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeDoubleList(i2, list, z6);
    }

    public static void writeEnumList(int i2, List<Integer> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeEnumList(i2, list, z6);
    }

    public static void writeFixed32List(int i2, List<Integer> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeFixed32List(i2, list, z6);
    }

    public static void writeFixed64List(int i2, List<Long> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeFixed64List(i2, list, z6);
    }

    public static void writeFloatList(int i2, List<Float> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeFloatList(i2, list, z6);
    }

    public static void writeGroupList(int i2, List<?> list, L0 l02, InterfaceC0428l0 interfaceC0428l0) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeGroupList(i2, list, interfaceC0428l0);
    }

    public static void writeInt32List(int i2, List<Integer> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeInt32List(i2, list, z6);
    }

    public static void writeInt64List(int i2, List<Long> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeInt64List(i2, list, z6);
    }

    public static void writeMessageList(int i2, List<?> list, L0 l02, InterfaceC0428l0 interfaceC0428l0) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeMessageList(i2, list, interfaceC0428l0);
    }

    public static void writeSFixed32List(int i2, List<Integer> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeSFixed32List(i2, list, z6);
    }

    public static void writeSFixed64List(int i2, List<Long> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeSFixed64List(i2, list, z6);
    }

    public static void writeSInt32List(int i2, List<Integer> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeSInt32List(i2, list, z6);
    }

    public static void writeSInt64List(int i2, List<Long> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeSInt64List(i2, list, z6);
    }

    public static void writeStringList(int i2, List<String> list, L0 l02) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeStringList(i2, list);
    }

    public static void writeUInt32List(int i2, List<Integer> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeUInt32List(i2, list, z6);
    }

    public static void writeUInt64List(int i2, List<Long> list, L0 l02, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ((C0435t) l02).writeUInt64List(i2, list, z6);
    }

    public static void x(w0 w0Var, Object obj, Object obj2) {
        ((y0) w0Var).getClass();
        F f3 = (F) obj;
        x0 x0Var = f3.unknownFields;
        x0 x0Var2 = ((F) obj2).unknownFields;
        if (!x0Var2.equals(x0.getDefaultInstance())) {
            int i2 = x0Var.f5927a + x0Var2.f5927a;
            int[] copyOf = Arrays.copyOf(x0Var.f5928b, i2);
            System.arraycopy(x0Var2.f5928b, 0, copyOf, x0Var.f5927a, x0Var2.f5927a);
            Object[] copyOf2 = Arrays.copyOf(x0Var.f5929c, i2);
            System.arraycopy(x0Var2.f5929c, 0, copyOf2, x0Var.f5927a, x0Var2.f5927a);
            x0Var = new x0(i2, copyOf, copyOf2, true);
        }
        f3.unknownFields = x0Var;
    }

    public static boolean y(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static Object v(int i2, List list, Object obj, w0 w0Var) {
        return obj;
    }
}
