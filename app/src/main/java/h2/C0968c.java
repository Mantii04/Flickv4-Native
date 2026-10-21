package h2;

import java.util.Comparator;

/* renamed from: h2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0968c implements Comparator {
    @Override // java.util.Comparator
    public int compare(byte[] bArr, byte[] bArr2) {
        return bArr.length - bArr2.length;
    }
}
