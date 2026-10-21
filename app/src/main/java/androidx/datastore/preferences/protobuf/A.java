package androidx.datastore.preferences.protobuf;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class A {

    /* renamed from: a, reason: collision with root package name */
    public final o0 f5739a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5740b;

    static {
        new A(0);
    }

    public A() {
        this.f5739a = new o0(16);
    }

    public static int a(WireFormat$FieldType wireFormat$FieldType, int i2, Object obj) {
        int computeDoubleSizeNoTag;
        int computeTagSize = AbstractC0434s.computeTagSize(i2);
        if (wireFormat$FieldType == WireFormat$FieldType.f5818j) {
            computeTagSize *= 2;
        }
        switch (wireFormat$FieldType.ordinal()) {
            case 0:
                computeDoubleSizeNoTag = AbstractC0434s.computeDoubleSizeNoTag(((Double) obj).doubleValue());
                break;
            case 1:
                computeDoubleSizeNoTag = AbstractC0434s.computeFloatSizeNoTag(((Float) obj).floatValue());
                break;
            case 2:
                computeDoubleSizeNoTag = AbstractC0434s.computeInt64SizeNoTag(((Long) obj).longValue());
                break;
            case 3:
                computeDoubleSizeNoTag = AbstractC0434s.computeUInt64SizeNoTag(((Long) obj).longValue());
                break;
            case 4:
                computeDoubleSizeNoTag = AbstractC0434s.computeInt32SizeNoTag(((Integer) obj).intValue());
                break;
            case 5:
                computeDoubleSizeNoTag = AbstractC0434s.computeFixed64SizeNoTag(((Long) obj).longValue());
                break;
            case 6:
                computeDoubleSizeNoTag = AbstractC0434s.computeFixed32SizeNoTag(((Integer) obj).intValue());
                break;
            case 7:
                computeDoubleSizeNoTag = AbstractC0434s.computeBoolSizeNoTag(((Boolean) obj).booleanValue());
                break;
            case 8:
                if (!(obj instanceof ByteString)) {
                    computeDoubleSizeNoTag = AbstractC0434s.computeStringSizeNoTag((String) obj);
                    break;
                } else {
                    computeDoubleSizeNoTag = AbstractC0434s.computeBytesSizeNoTag((ByteString) obj);
                    break;
                }
            case 9:
                computeDoubleSizeNoTag = AbstractC0434s.computeGroupSizeNoTag((InterfaceC0406a0) obj);
                break;
            case 10:
                computeDoubleSizeNoTag = AbstractC0434s.computeMessageSizeNoTag((InterfaceC0406a0) obj);
                break;
            case 11:
                if (!(obj instanceof ByteString)) {
                    computeDoubleSizeNoTag = AbstractC0434s.computeByteArraySizeNoTag((byte[]) obj);
                    break;
                } else {
                    computeDoubleSizeNoTag = AbstractC0434s.computeBytesSizeNoTag((ByteString) obj);
                    break;
                }
            case 12:
                computeDoubleSizeNoTag = AbstractC0434s.computeUInt32SizeNoTag(((Integer) obj).intValue());
                break;
            case 13:
                computeDoubleSizeNoTag = AbstractC0434s.computeEnumSizeNoTag(((Integer) obj).intValue());
                break;
            case 14:
                computeDoubleSizeNoTag = AbstractC0434s.computeSFixed32SizeNoTag(((Integer) obj).intValue());
                break;
            case 15:
                computeDoubleSizeNoTag = AbstractC0434s.computeSFixed64SizeNoTag(((Long) obj).longValue());
                break;
            case 16:
                computeDoubleSizeNoTag = AbstractC0434s.computeSInt32SizeNoTag(((Integer) obj).intValue());
                break;
            case 17:
                computeDoubleSizeNoTag = AbstractC0434s.computeSInt64SizeNoTag(((Long) obj).longValue());
                break;
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return computeDoubleSizeNoTag + computeTagSize;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0016, code lost:
    
        if ((r3 instanceof androidx.datastore.preferences.protobuf.InterfaceC0406a0) == false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001b, code lost:
    
        if ((r3 instanceof java.lang.Integer) == false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0024, code lost:
    
        if ((r3 instanceof byte[]) == false) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(androidx.datastore.preferences.protobuf.WireFormat$FieldType r2, java.lang.Object r3) {
        /*
            java.nio.charset.Charset r0 = androidx.datastore.preferences.protobuf.I.f5777a
            r3.getClass()
            androidx.datastore.preferences.protobuf.WireFormat$JavaType r2 = r2.getJavaType()
            int r2 = r2.ordinal()
            r0 = 1
            r1 = 0
            switch(r2) {
                case 0: goto L36;
                case 1: goto L33;
                case 2: goto L30;
                case 3: goto L2d;
                case 4: goto L2a;
                case 5: goto L27;
                case 6: goto L1e;
                case 7: goto L19;
                case 8: goto L14;
                default: goto L12;
            }
        L12:
            r0 = r1
            goto L38
        L14:
            boolean r2 = r3 instanceof androidx.datastore.preferences.protobuf.InterfaceC0406a0
            if (r2 != 0) goto L38
            goto L12
        L19:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L38
            goto L12
        L1e:
            boolean r2 = r3 instanceof androidx.datastore.preferences.protobuf.ByteString
            if (r2 != 0) goto L38
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L12
            goto L38
        L27:
            boolean r0 = r3 instanceof java.lang.String
            goto L38
        L2a:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L38
        L2d:
            boolean r0 = r3 instanceof java.lang.Double
            goto L38
        L30:
            boolean r0 = r3 instanceof java.lang.Float
            goto L38
        L33:
            boolean r0 = r3 instanceof java.lang.Long
            goto L38
        L36:
            boolean r0 = r3 instanceof java.lang.Integer
        L38:
            if (r0 == 0) goto L3b
            return
        L3b:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.A.b(androidx.datastore.preferences.protobuf.WireFormat$FieldType, java.lang.Object):void");
    }

    public static void c(AbstractC0434s abstractC0434s, WireFormat$FieldType wireFormat$FieldType, int i2, Object obj) {
        if (wireFormat$FieldType == WireFormat$FieldType.f5818j) {
            abstractC0434s.writeGroup(i2, (InterfaceC0406a0) obj);
        }
        abstractC0434s.writeTag(i2, wireFormat$FieldType.getWireType());
        switch (wireFormat$FieldType.ordinal()) {
            case 0:
                abstractC0434s.writeDoubleNoTag(((Double) obj).doubleValue());
                break;
            case 1:
                abstractC0434s.writeFloatNoTag(((Float) obj).floatValue());
                break;
            case 2:
                abstractC0434s.writeInt64NoTag(((Long) obj).longValue());
                break;
            case 3:
                abstractC0434s.writeUInt64NoTag(((Long) obj).longValue());
                break;
            case 4:
                abstractC0434s.writeInt32NoTag(((Integer) obj).intValue());
                break;
            case 5:
                abstractC0434s.writeFixed64NoTag(((Long) obj).longValue());
                break;
            case 6:
                abstractC0434s.writeFixed32NoTag(((Integer) obj).intValue());
                break;
            case 7:
                abstractC0434s.writeBoolNoTag(((Boolean) obj).booleanValue());
                break;
            case 8:
                if (!(obj instanceof ByteString)) {
                    abstractC0434s.writeStringNoTag((String) obj);
                    break;
                } else {
                    abstractC0434s.writeBytesNoTag((ByteString) obj);
                    break;
                }
            case 9:
                abstractC0434s.writeGroupNoTag((InterfaceC0406a0) obj);
                break;
            case 10:
                abstractC0434s.writeMessageNoTag((InterfaceC0406a0) obj);
                break;
            case 11:
                if (!(obj instanceof ByteString)) {
                    abstractC0434s.writeByteArrayNoTag((byte[]) obj);
                    break;
                } else {
                    abstractC0434s.writeBytesNoTag((ByteString) obj);
                    break;
                }
            case 12:
                abstractC0434s.writeUInt32NoTag(((Integer) obj).intValue());
                break;
            case 13:
                abstractC0434s.writeEnumNoTag(((Integer) obj).intValue());
                break;
            case 14:
                abstractC0434s.writeSFixed32NoTag(((Integer) obj).intValue());
                break;
            case 15:
                abstractC0434s.writeSFixed64NoTag(((Long) obj).longValue());
                break;
            case 16:
                abstractC0434s.writeSInt32NoTag(((Integer) obj).intValue());
                break;
            case 17:
                abstractC0434s.writeSInt64NoTag(((Long) obj).longValue());
                break;
        }
    }

    public static <T extends InterfaceC0441z> A newFieldSet() {
        return new A();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof A) {
            return this.f5739a.equals(((A) obj).f5739a);
        }
        return false;
    }

    public int hashCode() {
        return this.f5739a.hashCode();
    }

    public void makeImmutable() {
        if (this.f5740b) {
            return;
        }
        this.f5739a.makeImmutable();
        this.f5740b = true;
    }

    public void setField(InterfaceC0441z interfaceC0441z, Object obj) {
        if (!interfaceC0441z.a()) {
            b(interfaceC0441z.c(), obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                b(interfaceC0441z.c(), it.next());
            }
            obj = arrayList;
        }
        this.f5739a.put((Comparable<Object>) interfaceC0441z, obj);
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public A m55clone() {
        A newFieldSet = newFieldSet();
        int i2 = 0;
        while (true) {
            o0 o0Var = this.f5739a;
            if (i2 >= o0Var.getNumArrayEntries()) {
                for (Map.Entry<Comparable<Object>, Object> entry : o0Var.getOverflowEntries()) {
                    if (entry.getKey() != null) {
                        throw new ClassCastException();
                    }
                    newFieldSet.setField(null, entry.getValue());
                }
                newFieldSet.getClass();
                return newFieldSet;
            }
            Map.Entry<Comparable<Object>, Object> arrayEntryAt = o0Var.getArrayEntryAt(i2);
            if (arrayEntryAt.getKey() != null) {
                throw new ClassCastException();
            }
            newFieldSet.setField(null, arrayEntryAt.getValue());
            i2++;
        }
    }

    public A(int i2) {
        int i7 = u0.f5915p;
        this.f5739a = new o0(0);
        makeImmutable();
        makeImmutable();
    }
}
