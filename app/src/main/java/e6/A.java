package e6;

import java.util.RandomAccess;
import okio.ByteString;
import v5.AbstractC1769e;

/* loaded from: classes2.dex */
public final class A extends AbstractC1769e implements RandomAccess {

    /* renamed from: j, reason: collision with root package name */
    public static final z f13973j = new z(null);

    /* renamed from: e, reason: collision with root package name */
    public final ByteString[] f13974e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f13975f;

    public A(ByteString[] byteStringArr, int[] iArr, kotlin.jvm.internal.g gVar) {
        this.f13974e = byteStringArr;
        this.f13975f = iArr;
    }

    public static final A of(ByteString... byteStringArr) {
        return f13973j.of(byteStringArr);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return contains((ByteString) obj);
        }
        return false;
    }

    public final ByteString[] getByteStrings$okio() {
        return this.f13974e;
    }

    @Override // kotlin.collections.AbstractCollection
    public int getSize() {
        return this.f13974e.length;
    }

    public final int[] getTrie$okio() {
        return this.f13975f;
    }

    @Override // v5.AbstractC1769e, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return indexOf((ByteString) obj);
        }
        return -1;
    }

    @Override // v5.AbstractC1769e, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return lastIndexOf((ByteString) obj);
        }
        return -1;
    }

    public /* bridge */ boolean contains(ByteString byteString) {
        return super.contains((Object) byteString);
    }

    @Override // v5.AbstractC1769e, java.util.List
    public ByteString get(int i2) {
        return this.f13974e[i2];
    }

    public /* bridge */ int indexOf(ByteString byteString) {
        return super.indexOf((Object) byteString);
    }

    public /* bridge */ int lastIndexOf(ByteString byteString) {
        return super.lastIndexOf((Object) byteString);
    }
}
