package androidx.datastore.preferences.protobuf;

import java.util.NoSuchElementException;

/* renamed from: androidx.datastore.preferences.protobuf.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0419h extends AbstractC0421i {

    /* renamed from: b, reason: collision with root package name */
    public int f5861b = 0;

    /* renamed from: e, reason: collision with root package name */
    public final int f5862e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ByteString f5863f;

    public C0419h(ByteString byteString) {
        this.f5863f = byteString;
        this.f5862e = byteString.size();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5861b < this.f5862e;
    }

    public byte nextByte() {
        int i2 = this.f5861b;
        if (i2 >= this.f5862e) {
            throw new NoSuchElementException();
        }
        this.f5861b = i2 + 1;
        return this.f5863f.a(i2);
    }
}
