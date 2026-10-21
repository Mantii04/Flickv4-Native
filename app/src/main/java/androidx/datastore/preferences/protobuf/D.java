package androidx.datastore.preferences.protobuf;

/* loaded from: classes.dex */
public abstract class D extends AbstractC0405a {

    /* renamed from: b, reason: collision with root package name */
    public final F f5748b;

    /* renamed from: e, reason: collision with root package name */
    public F f5749e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f5750f = false;

    public D(F f3) {
        this.f5748b = f3;
        this.f5749e = (F) f3.dynamicMethod(GeneratedMessageLite$MethodToInvoke.f5765j);
    }

    public final F build() {
        F m56buildPartial = m56buildPartial();
        if (m56buildPartial.isInitialized()) {
            return m56buildPartial;
        }
        throw AbstractC0405a.newUninitializedMessageException(m56buildPartial);
    }

    public void copyOnWrite() {
        if (this.f5750f) {
            F f3 = (F) this.f5749e.dynamicMethod(GeneratedMessageLite$MethodToInvoke.f5765j);
            C0420h0.getInstance().schemaFor((C0420h0) f3).mergeFrom(f3, this.f5749e);
            this.f5749e = f3;
            this.f5750f = false;
        }
    }

    public D mergeFrom(F f3) {
        copyOnWrite();
        F f7 = this.f5749e;
        C0420h0.getInstance().schemaFor((C0420h0) f7).mergeFrom(f7, f3);
        return this;
    }

    /* renamed from: buildPartial, reason: merged with bridge method [inline-methods] */
    public F m56buildPartial() {
        if (this.f5750f) {
            return this.f5749e;
        }
        this.f5749e.makeImmutable();
        this.f5750f = true;
        return this.f5749e;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public D m57clone() {
        D m60newBuilderForType = m58getDefaultInstanceForType().m60newBuilderForType();
        m60newBuilderForType.mergeFrom(m56buildPartial());
        return m60newBuilderForType;
    }

    /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] */
    public F m58getDefaultInstanceForType() {
        return this.f5748b;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0405a
    public D internalMergeFrom(F f3) {
        return mergeFrom(f3);
    }
}
