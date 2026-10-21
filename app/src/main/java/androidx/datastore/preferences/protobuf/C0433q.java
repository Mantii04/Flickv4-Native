package androidx.datastore.preferences.protobuf;

import androidx.media3.common.util.Log;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.List;

/* renamed from: androidx.datastore.preferences.protobuf.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0433q implements InterfaceC0426k0 {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0432p f5895a;

    /* renamed from: b, reason: collision with root package name */
    public int f5896b;

    /* renamed from: c, reason: collision with root package name */
    public int f5897c;

    /* renamed from: d, reason: collision with root package name */
    public int f5898d = 0;

    public C0433q(AbstractC0432p abstractC0432p) {
        Charset charset = I.f5777a;
        this.f5895a = abstractC0432p;
        abstractC0432p.f5894b = this;
    }

    public static void f(int i2) {
        if ((i2 & 3) != 0) {
            throw InvalidProtocolBufferException.e();
        }
    }

    public static C0433q forCodedInput(AbstractC0432p abstractC0432p) {
        C0433q c0433q = abstractC0432p.f5894b;
        return c0433q != null ? c0433q : new C0433q(abstractC0432p);
    }

    public static void g(int i2) {
        if ((i2 & 7) != 0) {
            throw InvalidProtocolBufferException.e();
        }
    }

    public final Object a(WireFormat$FieldType wireFormat$FieldType, Class cls, C0438w c0438w) {
        switch (wireFormat$FieldType.ordinal()) {
            case 0:
                return Double.valueOf(readDouble());
            case 1:
                return Float.valueOf(readFloat());
            case 2:
                return Long.valueOf(readInt64());
            case 3:
                return Long.valueOf(readUInt64());
            case 4:
                return Integer.valueOf(readInt32());
            case 5:
                return Long.valueOf(readFixed64());
            case 6:
                return Integer.valueOf(readFixed32());
            case 7:
                return Boolean.valueOf(readBool());
            case 8:
                return readStringRequireUtf8();
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                return readMessage(cls, c0438w);
            case 11:
                return readBytes();
            case 12:
                return Integer.valueOf(readUInt32());
            case 13:
                return Integer.valueOf(readEnum());
            case 14:
                return Integer.valueOf(readSFixed32());
            case 15:
                return Long.valueOf(readSFixed64());
            case 16:
                return Integer.valueOf(readSInt32());
            case 17:
                return Long.valueOf(readSInt64());
        }
    }

    public final Object b(InterfaceC0428l0 interfaceC0428l0, C0438w c0438w) {
        int i2 = this.f5897c;
        this.f5897c = (K0.getTagFieldNumber(this.f5896b) << 3) | 4;
        try {
            Object newInstance = interfaceC0428l0.newInstance();
            interfaceC0428l0.mergeFrom(newInstance, this, c0438w);
            interfaceC0428l0.makeImmutable(newInstance);
            if (this.f5896b == this.f5897c) {
                return newInstance;
            }
            throw InvalidProtocolBufferException.e();
        } finally {
            this.f5897c = i2;
        }
    }

    public final Object c(InterfaceC0428l0 interfaceC0428l0, C0438w c0438w) {
        AbstractC0432p abstractC0432p = this.f5895a;
        int readUInt32 = abstractC0432p.readUInt32();
        if (abstractC0432p.f5893a >= 100) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int pushLimit = abstractC0432p.pushLimit(readUInt32);
        Object newInstance = interfaceC0428l0.newInstance();
        abstractC0432p.f5893a++;
        interfaceC0428l0.mergeFrom(newInstance, this, c0438w);
        interfaceC0428l0.makeImmutable(newInstance);
        abstractC0432p.checkLastTagWas(0);
        abstractC0432p.f5893a--;
        abstractC0432p.popLimit(pushLimit);
        return newInstance;
    }

    public final void d(int i2) {
        if (this.f5895a.getTotalBytesRead() != i2) {
            throw InvalidProtocolBufferException.f();
        }
    }

    public final void e(int i2) {
        if (K0.getTagWireType(this.f5896b) != i2) {
            throw InvalidProtocolBufferException.b();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public int getFieldNumber() throws IOException {
        int i2 = this.f5898d;
        if (i2 != 0) {
            this.f5896b = i2;
            this.f5898d = 0;
        } else {
            this.f5896b = this.f5895a.readTag();
        }
        int i7 = this.f5896b;
        return (i7 == 0 || i7 == this.f5897c) ? Log.LOG_LEVEL_OFF : K0.getTagFieldNumber(i7);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public int getTag() {
        return this.f5896b;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public boolean readBool() throws IOException {
        e(0);
        return this.f5895a.readBool();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readBoolList(List<Boolean> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof AbstractC0415f;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType == 0) {
                abstractC0432p.readBool();
                throw null;
            }
            if (tagWireType != 2) {
                throw InvalidProtocolBufferException.b();
            }
            abstractC0432p.readUInt32();
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readBool();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 0) {
            do {
                list.add(Boolean.valueOf(abstractC0432p.readBool()));
                if (abstractC0432p.isAtEnd()) {
                    return;
                } else {
                    readTag = abstractC0432p.readTag();
                }
            } while (readTag == this.f5896b);
            this.f5898d = readTag;
            return;
        }
        if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int totalBytesRead = abstractC0432p.getTotalBytesRead() + abstractC0432p.readUInt32();
        do {
            list.add(Boolean.valueOf(abstractC0432p.readBool()));
        } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
        d(totalBytesRead);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public ByteString readBytes() throws IOException {
        e(2);
        return this.f5895a.readBytes();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readBytesList(List<ByteString> list) throws IOException {
        int readTag;
        if (K0.getTagWireType(this.f5896b) != 2) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            list.add(readBytes());
            AbstractC0432p abstractC0432p = this.f5895a;
            if (abstractC0432p.isAtEnd()) {
                return;
            } else {
                readTag = abstractC0432p.readTag();
            }
        } while (readTag == this.f5896b);
        this.f5898d = readTag;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public double readDouble() throws IOException {
        e(1);
        return this.f5895a.readDouble();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readDoubleList(List<Double> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof AbstractC0436u;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType == 1) {
                abstractC0432p.readDouble();
                throw null;
            }
            if (tagWireType != 2) {
                throw InvalidProtocolBufferException.b();
            }
            g(abstractC0432p.readUInt32());
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readDouble();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 1) {
            do {
                list.add(Double.valueOf(abstractC0432p.readDouble()));
                if (abstractC0432p.isAtEnd()) {
                    return;
                } else {
                    readTag = abstractC0432p.readTag();
                }
            } while (readTag == this.f5896b);
            this.f5898d = readTag;
            return;
        }
        if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int readUInt32 = abstractC0432p.readUInt32();
        g(readUInt32);
        int totalBytesRead = abstractC0432p.getTotalBytesRead() + readUInt32;
        do {
            list.add(Double.valueOf(abstractC0432p.readDouble()));
        } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public int readEnum() throws IOException {
        e(0);
        return this.f5895a.readEnum();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readEnumList(List<Integer> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof G;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType == 0) {
                abstractC0432p.readEnum();
                throw null;
            }
            if (tagWireType != 2) {
                throw InvalidProtocolBufferException.b();
            }
            abstractC0432p.readUInt32();
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readEnum();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 0) {
            do {
                list.add(Integer.valueOf(abstractC0432p.readEnum()));
                if (abstractC0432p.isAtEnd()) {
                    return;
                } else {
                    readTag = abstractC0432p.readTag();
                }
            } while (readTag == this.f5896b);
            this.f5898d = readTag;
            return;
        }
        if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int totalBytesRead = abstractC0432p.getTotalBytesRead() + abstractC0432p.readUInt32();
        do {
            list.add(Integer.valueOf(abstractC0432p.readEnum()));
        } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
        d(totalBytesRead);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public int readFixed32() throws IOException {
        e(5);
        return this.f5895a.readFixed32();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readFixed32List(List<Integer> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof G;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType != 2) {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.b();
                }
                abstractC0432p.readFixed32();
                throw null;
            }
            f(abstractC0432p.readUInt32());
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readFixed32();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 2) {
            int readUInt32 = abstractC0432p.readUInt32();
            f(readUInt32);
            int totalBytesRead = abstractC0432p.getTotalBytesRead() + readUInt32;
            do {
                list.add(Integer.valueOf(abstractC0432p.readFixed32()));
            } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
            return;
        }
        if (tagWireType2 != 5) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            list.add(Integer.valueOf(abstractC0432p.readFixed32()));
            if (abstractC0432p.isAtEnd()) {
                return;
            } else {
                readTag = abstractC0432p.readTag();
            }
        } while (readTag == this.f5896b);
        this.f5898d = readTag;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public long readFixed64() throws IOException {
        e(1);
        return this.f5895a.readFixed64();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readFixed64List(List<Long> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof O;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType == 1) {
                abstractC0432p.readFixed64();
                throw null;
            }
            if (tagWireType != 2) {
                throw InvalidProtocolBufferException.b();
            }
            g(abstractC0432p.readUInt32());
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readFixed64();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 1) {
            do {
                list.add(Long.valueOf(abstractC0432p.readFixed64()));
                if (abstractC0432p.isAtEnd()) {
                    return;
                } else {
                    readTag = abstractC0432p.readTag();
                }
            } while (readTag == this.f5896b);
            this.f5898d = readTag;
            return;
        }
        if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int readUInt32 = abstractC0432p.readUInt32();
        g(readUInt32);
        int totalBytesRead = abstractC0432p.getTotalBytesRead() + readUInt32;
        do {
            list.add(Long.valueOf(abstractC0432p.readFixed64()));
        } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public float readFloat() throws IOException {
        e(5);
        return this.f5895a.readFloat();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readFloatList(List<Float> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof B;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType != 2) {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.b();
                }
                abstractC0432p.readFloat();
                throw null;
            }
            f(abstractC0432p.readUInt32());
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readFloat();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 2) {
            int readUInt32 = abstractC0432p.readUInt32();
            f(readUInt32);
            int totalBytesRead = abstractC0432p.getTotalBytesRead() + readUInt32;
            do {
                list.add(Float.valueOf(abstractC0432p.readFloat()));
            } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
            return;
        }
        if (tagWireType2 != 5) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            list.add(Float.valueOf(abstractC0432p.readFloat()));
            if (abstractC0432p.isAtEnd()) {
                return;
            } else {
                readTag = abstractC0432p.readTag();
            }
        } while (readTag == this.f5896b);
        this.f5898d = readTag;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public <T> T readGroupBySchemaWithCheck(InterfaceC0428l0 interfaceC0428l0, C0438w c0438w) throws IOException {
        e(3);
        return (T) b(interfaceC0428l0, c0438w);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public <T> void readGroupList(List<T> list, InterfaceC0428l0 interfaceC0428l0, C0438w c0438w) throws IOException {
        int readTag;
        if (K0.getTagWireType(this.f5896b) != 3) {
            throw InvalidProtocolBufferException.b();
        }
        int i2 = this.f5896b;
        do {
            list.add(b(interfaceC0428l0, c0438w));
            AbstractC0432p abstractC0432p = this.f5895a;
            if (abstractC0432p.isAtEnd() || this.f5898d != 0) {
                return;
            } else {
                readTag = abstractC0432p.readTag();
            }
        } while (readTag == i2);
        this.f5898d = readTag;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public int readInt32() throws IOException {
        e(0);
        return this.f5895a.readInt32();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readInt32List(List<Integer> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof G;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType == 0) {
                abstractC0432p.readInt32();
                throw null;
            }
            if (tagWireType != 2) {
                throw InvalidProtocolBufferException.b();
            }
            abstractC0432p.readUInt32();
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readInt32();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 0) {
            do {
                list.add(Integer.valueOf(abstractC0432p.readInt32()));
                if (abstractC0432p.isAtEnd()) {
                    return;
                } else {
                    readTag = abstractC0432p.readTag();
                }
            } while (readTag == this.f5896b);
            this.f5898d = readTag;
            return;
        }
        if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int totalBytesRead = abstractC0432p.getTotalBytesRead() + abstractC0432p.readUInt32();
        do {
            list.add(Integer.valueOf(abstractC0432p.readInt32()));
        } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
        d(totalBytesRead);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public long readInt64() throws IOException {
        e(0);
        return this.f5895a.readInt64();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readInt64List(List<Long> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof O;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType == 0) {
                abstractC0432p.readInt64();
                throw null;
            }
            if (tagWireType != 2) {
                throw InvalidProtocolBufferException.b();
            }
            abstractC0432p.readUInt32();
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readInt64();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 0) {
            do {
                list.add(Long.valueOf(abstractC0432p.readInt64()));
                if (abstractC0432p.isAtEnd()) {
                    return;
                } else {
                    readTag = abstractC0432p.readTag();
                }
            } while (readTag == this.f5896b);
            this.f5898d = readTag;
            return;
        }
        if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int totalBytesRead = abstractC0432p.getTotalBytesRead() + abstractC0432p.readUInt32();
        do {
            list.add(Long.valueOf(abstractC0432p.readInt64()));
        } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
        d(totalBytesRead);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0059, code lost:
    
        r10.put(r3, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x005c, code lost:
    
        r1.popLimit(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x005f, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <K, V> void readMap(java.util.Map<K, V> r10, androidx.datastore.preferences.protobuf.T r11, androidx.datastore.preferences.protobuf.C0438w r12) throws java.io.IOException {
        /*
            r9 = this;
            r0 = 2
            r9.e(r0)
            androidx.datastore.preferences.protobuf.p r1 = r9.f5895a
            int r2 = r1.readUInt32()
            int r2 = r1.pushLimit(r2)
            java.lang.Object r3 = r11.f5809b
            java.lang.Object r4 = r11.f5811d
            r5 = r4
        L13:
            int r6 = r9.getFieldNumber()     // Catch: java.lang.Throwable -> L37
            r7 = 2147483647(0x7fffffff, float:NaN)
            if (r6 == r7) goto L59
            boolean r7 = r1.isAtEnd()     // Catch: java.lang.Throwable -> L37
            if (r7 == 0) goto L23
            goto L59
        L23:
            r7 = 1
            java.lang.String r8 = "Unable to parse map entry."
            if (r6 == r7) goto L44
            if (r6 == r0) goto L39
            boolean r6 = r9.skipField()     // Catch: java.lang.Throwable -> L37 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4c
            if (r6 == 0) goto L31
            goto L13
        L31:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r6 = new androidx.datastore.preferences.protobuf.InvalidProtocolBufferException     // Catch: java.lang.Throwable -> L37 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4c
            r6.<init>(r8)     // Catch: java.lang.Throwable -> L37 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4c
            throw r6     // Catch: java.lang.Throwable -> L37 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4c
        L37:
            r10 = move-exception
            goto L60
        L39:
            androidx.datastore.preferences.protobuf.WireFormat$FieldType r6 = r11.f5810c     // Catch: java.lang.Throwable -> L37 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4c
            java.lang.Class r7 = r4.getClass()     // Catch: java.lang.Throwable -> L37 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4c
            java.lang.Object r5 = r9.a(r6, r7, r12)     // Catch: java.lang.Throwable -> L37 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4c
            goto L13
        L44:
            androidx.datastore.preferences.protobuf.WireFormat$FieldType r6 = r11.f5808a     // Catch: java.lang.Throwable -> L37 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4c
            r7 = 0
            java.lang.Object r3 = r9.a(r6, r7, r7)     // Catch: java.lang.Throwable -> L37 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4c
            goto L13
        L4c:
            boolean r6 = r9.skipField()     // Catch: java.lang.Throwable -> L37
            if (r6 == 0) goto L53
            goto L13
        L53:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r10 = new androidx.datastore.preferences.protobuf.InvalidProtocolBufferException     // Catch: java.lang.Throwable -> L37
            r10.<init>(r8)     // Catch: java.lang.Throwable -> L37
            throw r10     // Catch: java.lang.Throwable -> L37
        L59:
            r10.put(r3, r5)     // Catch: java.lang.Throwable -> L37
            r1.popLimit(r2)
            return
        L60:
            r1.popLimit(r2)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.C0433q.readMap(java.util.Map, androidx.datastore.preferences.protobuf.T, androidx.datastore.preferences.protobuf.w):void");
    }

    public <T> T readMessage(Class<T> cls, C0438w c0438w) throws IOException {
        e(2);
        return (T) c(C0420h0.getInstance().schemaFor((Class) cls), c0438w);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public <T> T readMessageBySchemaWithCheck(InterfaceC0428l0 interfaceC0428l0, C0438w c0438w) throws IOException {
        e(2);
        return (T) c(interfaceC0428l0, c0438w);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public <T> void readMessageList(List<T> list, InterfaceC0428l0 interfaceC0428l0, C0438w c0438w) throws IOException {
        int readTag;
        if (K0.getTagWireType(this.f5896b) != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int i2 = this.f5896b;
        do {
            list.add(c(interfaceC0428l0, c0438w));
            AbstractC0432p abstractC0432p = this.f5895a;
            if (abstractC0432p.isAtEnd() || this.f5898d != 0) {
                return;
            } else {
                readTag = abstractC0432p.readTag();
            }
        } while (readTag == i2);
        this.f5898d = readTag;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public int readSFixed32() throws IOException {
        e(5);
        return this.f5895a.readSFixed32();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readSFixed32List(List<Integer> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof G;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType != 2) {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.b();
                }
                abstractC0432p.readSFixed32();
                throw null;
            }
            f(abstractC0432p.readUInt32());
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readSFixed32();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 2) {
            int readUInt32 = abstractC0432p.readUInt32();
            f(readUInt32);
            int totalBytesRead = abstractC0432p.getTotalBytesRead() + readUInt32;
            do {
                list.add(Integer.valueOf(abstractC0432p.readSFixed32()));
            } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
            return;
        }
        if (tagWireType2 != 5) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            list.add(Integer.valueOf(abstractC0432p.readSFixed32()));
            if (abstractC0432p.isAtEnd()) {
                return;
            } else {
                readTag = abstractC0432p.readTag();
            }
        } while (readTag == this.f5896b);
        this.f5898d = readTag;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public long readSFixed64() throws IOException {
        e(1);
        return this.f5895a.readSFixed64();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readSFixed64List(List<Long> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof O;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType == 1) {
                abstractC0432p.readSFixed64();
                throw null;
            }
            if (tagWireType != 2) {
                throw InvalidProtocolBufferException.b();
            }
            g(abstractC0432p.readUInt32());
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readSFixed64();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 1) {
            do {
                list.add(Long.valueOf(abstractC0432p.readSFixed64()));
                if (abstractC0432p.isAtEnd()) {
                    return;
                } else {
                    readTag = abstractC0432p.readTag();
                }
            } while (readTag == this.f5896b);
            this.f5898d = readTag;
            return;
        }
        if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int readUInt32 = abstractC0432p.readUInt32();
        g(readUInt32);
        int totalBytesRead = abstractC0432p.getTotalBytesRead() + readUInt32;
        do {
            list.add(Long.valueOf(abstractC0432p.readSFixed64()));
        } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public int readSInt32() throws IOException {
        e(0);
        return this.f5895a.readSInt32();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readSInt32List(List<Integer> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof G;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType == 0) {
                abstractC0432p.readSInt32();
                throw null;
            }
            if (tagWireType != 2) {
                throw InvalidProtocolBufferException.b();
            }
            abstractC0432p.readUInt32();
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readSInt32();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 0) {
            do {
                list.add(Integer.valueOf(abstractC0432p.readSInt32()));
                if (abstractC0432p.isAtEnd()) {
                    return;
                } else {
                    readTag = abstractC0432p.readTag();
                }
            } while (readTag == this.f5896b);
            this.f5898d = readTag;
            return;
        }
        if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int totalBytesRead = abstractC0432p.getTotalBytesRead() + abstractC0432p.readUInt32();
        do {
            list.add(Integer.valueOf(abstractC0432p.readSInt32()));
        } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
        d(totalBytesRead);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public long readSInt64() throws IOException {
        e(0);
        return this.f5895a.readSInt64();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readSInt64List(List<Long> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof O;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType == 0) {
                abstractC0432p.readSInt64();
                throw null;
            }
            if (tagWireType != 2) {
                throw InvalidProtocolBufferException.b();
            }
            abstractC0432p.readUInt32();
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readSInt64();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 0) {
            do {
                list.add(Long.valueOf(abstractC0432p.readSInt64()));
                if (abstractC0432p.isAtEnd()) {
                    return;
                } else {
                    readTag = abstractC0432p.readTag();
                }
            } while (readTag == this.f5896b);
            this.f5898d = readTag;
            return;
        }
        if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int totalBytesRead = abstractC0432p.getTotalBytesRead() + abstractC0432p.readUInt32();
        do {
            list.add(Long.valueOf(abstractC0432p.readSInt64()));
        } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
        d(totalBytesRead);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public String readString() throws IOException {
        e(2);
        return this.f5895a.readString();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readStringList(List<String> list) throws IOException {
        readStringListInternal(list, false);
    }

    public void readStringListInternal(List<String> list, boolean z6) throws IOException {
        int readTag;
        int readTag2;
        if (K0.getTagWireType(this.f5896b) != 2) {
            throw InvalidProtocolBufferException.b();
        }
        boolean z7 = list instanceof K;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (!z7 || z6) {
            do {
                list.add(z6 ? readStringRequireUtf8() : readString());
                if (abstractC0432p.isAtEnd()) {
                    return;
                } else {
                    readTag = abstractC0432p.readTag();
                }
            } while (readTag == this.f5896b);
            this.f5898d = readTag;
            return;
        }
        K k7 = (K) list;
        do {
            k7.add(readBytes());
            if (abstractC0432p.isAtEnd()) {
                return;
            } else {
                readTag2 = abstractC0432p.readTag();
            }
        } while (readTag2 == this.f5896b);
        this.f5898d = readTag2;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readStringListRequireUtf8(List<String> list) throws IOException {
        readStringListInternal(list, true);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public String readStringRequireUtf8() throws IOException {
        e(2);
        return this.f5895a.readStringRequireUtf8();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public int readUInt32() throws IOException {
        e(0);
        return this.f5895a.readUInt32();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readUInt32List(List<Integer> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof G;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType == 0) {
                abstractC0432p.readUInt32();
                throw null;
            }
            if (tagWireType != 2) {
                throw InvalidProtocolBufferException.b();
            }
            abstractC0432p.readUInt32();
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readUInt32();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 0) {
            do {
                list.add(Integer.valueOf(abstractC0432p.readUInt32()));
                if (abstractC0432p.isAtEnd()) {
                    return;
                } else {
                    readTag = abstractC0432p.readTag();
                }
            } while (readTag == this.f5896b);
            this.f5898d = readTag;
            return;
        }
        if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int totalBytesRead = abstractC0432p.getTotalBytesRead() + abstractC0432p.readUInt32();
        do {
            list.add(Integer.valueOf(abstractC0432p.readUInt32()));
        } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
        d(totalBytesRead);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public long readUInt64() throws IOException {
        e(0);
        return this.f5895a.readUInt64();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0426k0
    public void readUInt64List(List<Long> list) throws IOException {
        int readTag;
        boolean z6 = list instanceof O;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (z6) {
            if (list != null) {
                throw new ClassCastException();
            }
            int tagWireType = K0.getTagWireType(this.f5896b);
            if (tagWireType == 0) {
                abstractC0432p.readUInt64();
                throw null;
            }
            if (tagWireType != 2) {
                throw InvalidProtocolBufferException.b();
            }
            abstractC0432p.readUInt32();
            abstractC0432p.getTotalBytesRead();
            abstractC0432p.readUInt64();
            throw null;
        }
        int tagWireType2 = K0.getTagWireType(this.f5896b);
        if (tagWireType2 == 0) {
            do {
                list.add(Long.valueOf(abstractC0432p.readUInt64()));
                if (abstractC0432p.isAtEnd()) {
                    return;
                } else {
                    readTag = abstractC0432p.readTag();
                }
            } while (readTag == this.f5896b);
            this.f5898d = readTag;
            return;
        }
        if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.b();
        }
        int totalBytesRead = abstractC0432p.getTotalBytesRead() + abstractC0432p.readUInt32();
        do {
            list.add(Long.valueOf(abstractC0432p.readUInt64()));
        } while (abstractC0432p.getTotalBytesRead() < totalBytesRead);
        d(totalBytesRead);
    }

    public boolean skipField() throws IOException {
        int i2;
        AbstractC0432p abstractC0432p = this.f5895a;
        if (abstractC0432p.isAtEnd() || (i2 = this.f5896b) == this.f5897c) {
            return false;
        }
        return abstractC0432p.skipField(i2);
    }
}
